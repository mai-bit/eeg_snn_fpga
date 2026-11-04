from pathlib import Path
p=Path('work/sim/chain.vcd')
values={}; time=0; records=[]; rising=False
with p.open() as f:
    for line in f:
        s=line.strip()
        if s.startswith('#'):
            if rising and values.get('M')=='1111':
                records.append((time, int(values['K'],2),int(values['L'],2)))
            rising=False;time=int(s[1:])
            if time>50000000: break
        elif s.startswith('b'):
            v,k=s[1:].split();values[k]=v
        elif s and s[0] in '01':
            v,k=s[0],s[1:]
            if k==';!' and v=='1' and values.get(k)=='0':rising=True
            values[k]=v
assert records[0][1:]==(1280,0),records[:5]
assert any(a==256 and d==0xffffff9c for t,a,d in records)
assert any(a==1280 and d==1 for t,a,d in records)
print('Waveform write-interface transitions (first 12):')
for t,a,d in records[:12]:print(f'{t/1000:.1f} ns addr={a} data=0x{d:08x}')
