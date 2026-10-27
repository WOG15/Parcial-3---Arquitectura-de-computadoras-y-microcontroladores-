<div align="center">

# ALU+ · Parcial 3

**SystemVerilog · VCS / Verdi · Design Compiler · IC Compiler II**

[📄 Reporte PDF](Reporte_ALU_Parcial3.pdf) · [🎬 Video ](https://youtu.be/NKW57ncdnsY)

</div>


## Proyecto

ALU parametrizable de **8, 16 y 32 bits** con AND, OR, suma y resta mediante **CLA**, multiplicación y banderas **NZCV**. Se verificó con VCS/Verdi y se implementó físicamente una versión síncrona de **16 bits** con celdas M31.

## Resultados

| Métrica | Valor |
|---|---:|
| Período objetivo | 35 ns (28.57 MHz) |
| Área de síntesis (DC) | 17,279.54 µm² |
| Área final (ICC2) | 17,721.45 µm² |
| WNS final | −0.25 ns |
| Redes abiertas | 0 |
| DRC pendientes | 124 |

## Archivos

[RTL](rtl/) · [Testbenches](testbench/) · [Scripts ICC2](scripts/icc2/) · [Reportes](reports/) · [Capturas](img/) · [Informe](Reporte_ALU_Parcial3.pdf)

**Flujo:** RTL → Síntesis → Floorplan → Power Planning → Placement → CTS → Routing → GDSII.
