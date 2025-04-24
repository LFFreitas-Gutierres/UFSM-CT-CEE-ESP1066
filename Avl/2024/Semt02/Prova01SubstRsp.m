# Dados básicos
x1 = 6e-3;
x2 = 1e-3;
h = 8e-3;
S = 0.5e-4;
N1 = 1000;
N2 = 10000;
i1 = 2;
i2 = 6;
B3 = 1.5;
mu0 = 4*pi*10^(-7);

printf("Método tradicional: malha & H3*h \n")

# Planejamento das malhas

# Malha 1:  -N1*i1 + R1*Phi1 + R2*(Phi1-Phi2) = 0
#           (R1+R2)*Phi1 - R2*Phi2 = N1*i1
# Malha 2:  R2*(Phi2-Phi1) + H3*h -N2*i2 = 0
#           -R2*Phi1 + R2*Phi2 = N2*i2 - H3*h

H3 = 1500*1.5/3;
R1 = x1/(mu0*S);
R2 = x2/(mu0*S);

A = [(R1+R2) -R2; -R2 R2];
b = [N1*i1 (N2*i2 - H3*h)]';

Malhas = A\b;

Phi1 = Malhas(1)
Phi2 = Malhas(2)
PhiE2 = Phi1-Phi2
Wg = (((Phi1/S)^2)/(2*mu0))*S*x1

printf("\n\n")

printf("Método alternativo 1: malha & mu3=B3/H3 \n")

# Método alternativo 1

# Malha 2:  R2*(Phi2-Phi1) + R3*Phi2 - N2*i2 = 0
#           -R2*Phi1 + (R2+R3)*Phi2 = N2*i2

mu3 = B3/H3;
R3 = h/(mu3*S);

A = [(R1+R2) -R2; -R2 (R2+R3)];
b = [N1*i1 N2*i2]';

MalhasAlt1 = A\b;

Phi1Alt1 = MalhasAlt1(1)
Phi2Alt1 = MalhasAlt1(2)
PhiE2Alt1 = Phi1Alt1-Phi2Alt1
WgAlt1 = (((Phi1Alt1/S)^2)/(2*mu0))*S*x1


printf("\n\n")

printf("Método alternativo 2: B3*S \n\n")

# Método alternativo 2

# Há inconsistência com as técnicas anteriores, pois leva em conta
# a capacidade limitada do material não linear permitir o fluxo magnético.
# Os métodos anteriores ignoram isso, mas estão "mais corretos". Apenas há a
# interpretação de que parcela do Phi2 não passará pelo bloco não linear
# nas técnicas anteriores. O método de superposição confirma também as
# respostas obtidas acima. Mesmo assim, considerei como acerto quem
# optou pelo caminho abaixo dada a questão interpretativa necessária
# para resolver o problema e que gerou dúvidas em alguns discentes.

Phi2Alt2 = B3*S
Phi1Alt2 = ((R2+R3)*Phi2Alt2 - N2*i2)/R2
Phi1Alt2Check = (N1*i1 + R2*Phi2Alt2)/(R1+R2)
PhiE2Alt2 = Phi1Alt2-Phi2Alt2
PhiE2Alt2Check = Phi1Alt2Check-Phi2Alt2
WgAlt2 = (((Phi1Alt2/S)^2)/(2*mu0))*S*x1
WgAlt2Check = (((Phi1Alt2Check/S)^2)/(2*mu0))*S*x1


printf("\n\n")

printf("Método de superposição \n\n")

# Cálculos das autoindutâncias e indutâncias mútuas

Phi1SuperCe = N1*i1/(R1+(R2*R3/(R2+R3)));
Phi1SuperCc = (N1*i1 - Phi1SuperCe*R1)/R2;
Phi1SuperCd = (N1*i1 - Phi1SuperCe*R1)/R3;

Phi2SuperCd = N2*i2/(R3+(R1*R2/(R1+R2)));
Phi2SuperCc = (N2*i2 - Phi2SuperCd*R3)/R2;
Phi2SuperCe = (N2*i2 - Phi2SuperCd*R3)/R1;

PhiCheckCe = Phi1SuperCe + Phi2SuperCe
PhiCheckCc = Phi1SuperCc + Phi2SuperCc
PhiCheckCd = Phi1SuperCd + Phi2SuperCd
WgCe = (((PhiCheckCe/S)^2)/(2*mu0))*S*x1


L11 = N1*Phi1SuperCe/i1
L22 = N2*Phi2SuperCd/i2

M = N1*Phi2SuperCe/i2
MCheck = N2*Phi1SuperCd/i1

printf("\n\n")

# Cálculos do item 2j: Equações de Steinmetz
# 50 W @ 40 Hz -> 50 = A*40 + B*40*40
# 90 W @ 60 Hz -> 90 = A*60 + B*60*60

A_ES = [40 40*40; 60 60*60];
b_ES = [50 90]';

ES = A_ES\b_ES;

PCP = ES(2)*50*50
P0 = PCP + ES(1)*50# Malha 1:  -N1*i1 + R1*Phi1 + R2*(Phi1-Phi2) = 0


printf("\n\n")
printf("2a. C\n")
printf("2b. E -> -2Mdi1/dt +Mdi2/dt - Mdi2/dt = -2Mdi1/dt\n")
printf("2c. E -> Orienta-se no sentido de d para c\n")
printf("2d. E -> -L3di2/dt\n")
printf("2e. E -> Maior\n")
printf("2f. C\n")
printf("2g. C\n")
printf("2h. E -> Antes ou no joelho\n")
printf("2i. E -> Não é possível\n")
printf("2j. < 35 W\n")



