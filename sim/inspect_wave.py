from pathlib import Path
import sys
p=Path(sys.argv[1] if len(sys.argv)>1 else 'work/sim/fast/chain.vcd')
ids={}; values={}; time=0; records=[]; rising=False
with p.open() as f:
    for line in f:
        s=line.strip()
        if s.startswith('$var'):
            parts=s.split()
            if parts[4] in ('clk','addr','data','we') and parts[4] not in ids:
                ids[parts[4]]=parts[3]
        elif s.startswith('#'):
            if rising and values.get(ids['we'])=='1111':
                records.append((time,int(values[ids['addr']],2),int(values[ids['data']],2)))
            rising=False;time=int(s[1:])
            if time>50000000:break
        elif s.startswith('b'):
            v,k=s[1:].split();values[k]=v
        elif s and s[0] in '01':
            v,k=s[0],s[1:]
            if k==ids.get('clk') and v=='1' and values.get(k)=='0':rising=True
            values[k]=v
assert records[0][1:]==(5120,0),records[:5]
assert any(a==1024 and d==0xffffff9c for t,a,d in records)
assert any(a==5120 and d==1 for t,a,d in records)
print('Waveform write-interface transitions (byte addresses):')
for t,a,d in records[:12]:print(f'{t/1000:.1f} ns addr={a} data=0x{d:08x}')
