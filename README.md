![](https://img.shields.io/badge/DOI-xxx-violet)
# Biosynthesis mechanisms of medium-chain carboxylic acids and alcohols in anaerobic microalgae fermentation regulated by pH conditions
This repository contains a collection of code, scripts and supporting information that are used or mentioned in the paper "Biosynthesis mechanisms of medium-chain carboxylic acids and alcohols in anaerobic microalgae fermentation regulated by pH conditions" by Shi et al..

The supporting information includes some additional calculation procedures and tables.

## Supporting information and dataset
The supporting information includes some additional calculation procedures and tables. Text S1-S2 and Table S1 to S6 are in the supporting information file, while Datasets S1 to S12 are in the supporting dataset file.

You can download these MS files or see the markdown notes below.
### Supporting Texst S1 to S2 and Table S1 to S6
The MS file is here - ([Supplementary Information.docx](https://github.com/a2962009/Biosynthesis-mechanisms-of-MCCA-and-alcohols-under-different-pH/blob/main/Supplementary%20Information.docx))

The markdown file is here - ([Supplementary Information.md](https://github.com/a2962009/Biosynthesis-mechanisms-of-MCCA-and-alcohols-under-different-pH/blob/main/Supporting%20information.md))

#### Text S1 The calculation procedures
The final concentration of main products, including SCCAs, MCCAs and alcohols, was converted into COD concentration. The relationship between products and COD is listed in the table below.
|Products|COD value (g-COD/g)|Electron equivalent (mol _e_<sup>-</sup>/mol)|
|--------|-------------------|--------------------------------|
|Ethanol|2.09|12|
|Propanol|2.4|18|
|Butanol|2.59|24|
|Pentanol|2.73|30|
|Hexanol|2.82|36|
|Acetic acid|1.07|8|
|Propionic acid|1.51|14|
|Butyric acid|1.82|20|
|Valeric acid|2.04|26|
|Caproic acid|2.21|32|
|Heptanoic acidd|2.34|38|
|Caprylic acid|2.44|44|

The specificities of primary products are calculated using the following equation:

$$\text{Specificity of compound }i=\frac{C_{i}}{(\displaystyle\sum_{i=1}^{n} C_{i})}$$

Where $`C_{i}`$ is the finial concentration (COD-g/L) of compound $`i`$.

To investigate the carbon and electron flow under different pH, the selectivity of each compound at pH 5, 7 and 10 was calculated based on the carbon and electron. Notably, the corresponding product concentrations in the controls were indicated as the utilized substrate stemming from algae for chain elongation and alcohol production. Selectivity is defined as the product produced relative to substrates consumed on an electron or carbon basis and is calculated by the following equations:

$$\Delta C_{i}=\Delta C_{final}-\Delta C_{initial}$$

$$\text{Selectivity (mol  e^-)}=\frac{\Delta C_{i}}{\displaystyle\sum_{i=1}^{n} \Delta C_{i}}$$

$$\text{Selectivity (mol C )}=\frac{\Delta\gamma_{i}}{\displaystyle\sum_{i=1}^{n} \Delta\gamma_{i}}$$

Where $`C_{initial}`$ is the concentration of utilized compound $`i`$ (mmol _e_<sup>-</sup> /L), which is transformed from microalgae biomass, i.e., the concentration of compound $`i`$ in controls. $`C_{final}`$ is the final concentration of compound $`i`$ in the fermentation broth (mmol _e_<sup>-</sup> /L). $`\Delta C_{i}`$ is the concentration changes of compound $`i`$ (mmol _e_<sup>-</sup> /L). Similarity, $`\Delta\gamma_{i}`$ is the concentration changes of compound $`i`$ (mmol C /L).

According to the previous study, the roles of ethanol were indicated by calculating the transfer efficiency from ethanol to corresponding products. Ethanol was used to 
- Produce acetate via RBO
* Perform chain elongation as an electron donor via RBO
+ Conduct excessive ethanol oxidation (EEO)
- Provide reducing power to transform carboxylic acid into corresponding alcohols

1. Total ethanol consumption (mmol/L):

$$E_t=C_f-C_i$$

2. Ethanol used for chain elongation (mmol/L):

$$E_e=\Delta_{butyrate}+\Delta_{valerate}+2\Delta_{caproate}+2\Delta_{heptanoate}+2\Delta_{caprylate}$$

3. Ethanol used for alcohol production (mmol/L):

$$E_{alcohols}=2\Delta_{propanol}+2\Delta_{butanol}+3\Delta_{pentabol}+3\Delta_{hexanol}$$

4. Ethanol used for producing acetate via RBO (mmol/L):

$$E_a=0.5\times E_e$$

$$\text{EEO}=E_t-E_e-E_{alcohols}-E_a$$

Where $`C_f`$ is the final concentration of ethanol in the fermentation broth (mmol/L). $`C_i`$ is the initial concentration of ethanol that is added to the reactors (mmol/L). $`\Delta i`$ is the concentration changes of compound $`i`$ (mmol/L).

#### Text S2 The calculation of undissociated MCCA concentrations in E5 and E7 groups
For any organic acid, there is a chemical equilibrium reaction in the aqueous solution:

$$\ce{HA <=> A^{-} + H^+}$$

Therefore, the dissociation constant is:

$$\text{p}K_a=-\lg{\frac{[\text{A}^-][\text{H}^+]}{[\text{HA}]}}$$

Then

$$[\text{HA}]=\frac{[\text{A}^-][\text{H}^+]}{10^{\text{p}K_a}}$$

#### Table S1 The average concentration (mg-COD/L) of main products and their selectivity (electron/ carbon) for the microalgae fermentation reactor during the steady stage (mean ± standard error). If a concentration was below the detection limit, then the concentration was represented as 0.

<table>
<thead>
  <tr>
    <th colspan="2">Group</th>
    <th>C5</th>
    <th>E5</th>
    <th>C7</th>
    <th>E7</th>
    <th>C10</th>
    <th>E10</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td colspan="2">pH</td>
    <td colspan="2">5</td>
    <td colspan="2">7</td>
    <td colspan="2">10</td>
  </tr>
  <tr>
    <td colspan="2">Ethanol residue</td>
    <td>0</td>
    <td>3,724.86 ± 853.10</td>
    <td>0</td>
    <td>0</td>
    <td>0</td>
    <td>3,278.05 ± 1424.08</td>
  </tr>
  <tr>
    <td rowspan="4">SCCAs</td>
    <td>C2</td>
    <td>816.25 ± 188.26</td>
    <td>132.81 ± 93.31</td>
    <td>1,454.79 ± 350.86</td>
    <td>93.08 ± 76.86</td>
    <td>1,315.15 ± 184.06</td>
    <td>6,223.06 ± 772.89</td>
  </tr>
  <tr>
    <td>C3</td>
    <td>171.99 ± 43.56</td>
    <td>0</td>
    <td>567.36 ± 126.69</td>
    <td>447.20 ± 123.98</td>
    <td>232.36 ± 50.01</td>
    <td>209.97 ± 54.00</td>
  </tr>
  <tr>
    <td>C4</td>
    <td>472.61 ± 123.16</td>
    <td>4,380.34 ± 342.23</td>
    <td>376.57 ± 93.76</td>
    <td>6,974.01 ± 731.25</td>
    <td>454.08 ± 141.81</td>
    <td>284.62 ± 98.68</td>
  </tr>
  <tr>
    <td>C5</td>
    <td>310.25 ± 95.41</td>
    <td>288.54 ± 92.96</td>
    <td>314.87 ± 107.88</td>
    <td>769.97 ± 133.86</td>
    <td>360.20 ± 114.84</td>
    <td>353.58 ± 132.94</td>
  </tr>
  <tr>
    <td rowspan="3">MCCAs</td>
    <td>C6</td>
    <td>94.03 ± 37.90</td>
    <td>1,034.78 ± 171.134</td>
    <td>110.92 ± 48.40</td>
    <td>7,416.55 ± 859.24</td>
    <td>43.76 ± 21.17</td>
    <td>42.57 ± 18.14</td>
  </tr>
  <tr>
    <td>C7</td>
    <td>0</td>
    <td>0</td>
    <td>0</td>
    <td>16.02 ± 6.34</td>
    <td>0</td>
    <td>0</td>
  </tr>
  <tr>
    <td>C8</td>
    <td>0</td>
    <td>0</td>
    <td>0</td>
    <td>42.06 ± 23.33</td>
    <td>0</td>
    <td>0</td>
  </tr>
  <tr>
    <td rowspan="4">Alcohols</td>
    <td>C3</td>
    <td>0</td>
    <td>487.69 ± 197.58</td>
    <td>0</td>
    <td>453.95 ± 79.41</td>
    <td>0</td>
    <td>0</td>
  </tr>
  <tr>
    <td>C4</td>
    <td>0</td>
    <td>2,214.33 ± 251.28</td>
    <td>0</td>
    <td>599.44 ± 81.51</td>
    <td>0</td>
    <td>0</td>
  </tr>
  <tr>
    <td>C5</td>
    <td>0</td>
    <td>26.19 ± 13.17</td>
    <td>0</td>
    <td>31.33 ± 4.65</td>
    <td>0</td>
    <td>0</td>
  </tr>
  <tr>
    <td>C6</td>
    <td>0</td>
    <td>84.10 ± 46.23</td>
    <td>0</td>
    <td>172.49 ± 33.70</td>
    <td>0</td>
    <td>0</td>
  </tr>
  <tr>
    <td colspan="2">Caproate selectivity&nbsp;</td>
    <td>-</td>
    <td>6.78%/ 7.42%</td>
    <td>-</td>
    <td>40.13%/ 43.44%</td>
    <td>-</td>
    <td>-</td>
  </tr>
  <tr>
    <td colspan="2">Heptanoate selectivity&nbsp;</td>
    <td>-</td>
    <td>-</td>
    <td>-</td>
    <td>0.09%/ 0.09%</td>
    <td>-</td>
    <td>-</td>
  </tr>
  <tr>
    <td colspan="2">Caprylate selectivity&nbsp;</td>
    <td>-</td>
    <td>-</td>
    <td>-</td>
    <td>0.23%/ 0.24%</td>
    <td>-</td>
    <td>-</td>
  </tr>
  <tr>
    <td colspan="2">Butanol selectivity</td>
    <td>-</td>
    <td>16.01%/ 15.57%</td>
    <td>-</td>
    <td>3.30%/ 3.18%</td>
    <td>-</td>
    <td>-</td>
  </tr>
  <tr>
    <td colspan="2">Hexanol selectivity</td>
    <td>-</td>
    <td>0.61%/ 0.59%</td>
    <td>-</td>
    <td>0.95%/ 0.91%</td>
    <td>-</td>
    <td>-</td>
  </tr>
  <tr>
    <td colspan="2">Ethanol use for elongation of fatty acids through the RBO</td>
    <td>-</td>
    <td>23.47%</td>
    <td>-</td>
    <td>59.27%</td>
    <td>-</td>
    <td>-</td>
  </tr>
  <tr>
    <td colspan="2">Ethanol use for alcohol production</td>
    <td>-</td>
    <td>22.99%</td>
    <td>-</td>
    <td>6.72%</td>
    <td>-</td>
    <td>-</td>
  </tr>
  <tr>
    <td colspan="2">Other unedified Ethanal oxidation</td>
    <td>-</td>
    <td>30.32%</td>
    <td>-</td>
    <td>1.02%</td>
    <td>-</td>
    <td>100%</td>
  </tr>
</tbody>
</table>

#### Table S2 The specificities of primary products (on a COD basis) for each group

<table>
<thead>
  <tr>
    <th>Group</th>
    <th>C5</th>
    <th>E5</th>
    <th>C7</th>
    <th>E7</th>
    <th>C10</th>
    <th>E10</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td>Propanol</td>
    <td>0.00%</td>
    <td>5.63%</td>
    <td>0.00%</td>
    <td>2.67%</td>
    <td>0.00%</td>
    <td>0.00%</td>
  </tr>
  <tr>
    <td>Butanol</td>
    <td>0.00%</td>
    <td>25.58%</td>
    <td>0.00%</td>
    <td>3.52%</td>
    <td>0.00%</td>
    <td>0.00%</td>
  </tr>
  <tr>
    <td>Pentanol</td>
    <td>0.00%</td>
    <td>0.30%</td>
    <td>0.00%</td>
    <td>0.18%</td>
    <td>0.00%</td>
    <td>0.00%</td>
  </tr>
  <tr>
    <td>Hexanol</td>
    <td>0.00%</td>
    <td>0.97%</td>
    <td>0.00%</td>
    <td>1.01%</td>
    <td>0.00%</td>
    <td>0.00%</td>
  </tr>
  <tr>
    <td>Acetate</td>
    <td>43.72%</td>
    <td>1.53%</td>
    <td>51.50%</td>
    <td>0.55%</td>
    <td>54.60%</td>
    <td>87.43%</td>
  </tr>
  <tr>
    <td>Propionate</td>
    <td>9.21%</td>
    <td>0.00%</td>
    <td>20.09%</td>
    <td>2.63%</td>
    <td>9.65%</td>
    <td>2.95%</td>
  </tr>
  <tr>
    <td>Butyrate</td>
    <td>25.32%</td>
    <td>50.61%</td>
    <td>13.33%</td>
    <td>40.96%</td>
    <td>18.85%</td>
    <td>4.00%</td>
  </tr>
  <tr>
    <td>Valerate</td>
    <td>16.62%</td>
    <td>3.33%</td>
    <td>11.15%</td>
    <td>4.52%</td>
    <td>14.95%</td>
    <td>4.97%</td>
  </tr>
  <tr>
    <td>Caproate</td>
    <td>5.04%</td>
    <td>11.96%</td>
    <td>3.93%</td>
    <td>43.56%</td>
    <td>1.82%</td>
    <td>0.60%</td>
  </tr>
  <tr>
    <td>Heptanoate</td>
    <td>0.00%</td>
    <td>0.00%</td>
    <td>0.00%</td>
    <td>0.09%</td>
    <td>0.00%</td>
    <td>0.00%</td>
  </tr>
  <tr>
    <td>Caprylate</td>
    <td>0.00%</td>
    <td>0.00%</td>
    <td>0.00%</td>
    <td>0.25%</td>
    <td>0.00%</td>
    <td>0.00%</td>
  </tr>
  <tr>
    <td>H<sub>2</sub></td>
    <td>0.09%</td>
    <td>0.08%</td>
    <td>0.00%</td>
    <td>0.06%</td>
    <td>0.13%</td>
    <td>0.05%</td>
  </tr>
</tbody>
</table>

#### Table S3 The selectivity of each compound at pH 5 based on the electron and carbon

<table>
<thead>
  <tr>
    <th>Compound</th>
    <th>Initial con.<br>(mM)</th>
    <th>Final con.<br>(mM)</th>
    <th>Δ con.<br>(mM)</th>
    <th>Selectivity mol <i>e</i><sup>-</sup> %</th>
    <th>Selectivity mol C %</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td>Ethanol</td>
    <td>173.98</td>
    <td>38.74</td>
    <td>-135.23</td>
    <td>N.A.</td>
    <td>N.A.</td>
  </tr>
  <tr>
    <td>Propanol</td>
    <td>0</td>
    <td>3.39</td>
    <td>3.39</td>
    <td>3.52%</td>
    <td>3.42%</td>
  </tr>
  <tr>
    <td>Butanol</td>
    <td>0</td>
    <td>11.55</td>
    <td>11.55</td>
    <td>16.01%</td>
    <td>15.57%</td>
  </tr>
  <tr>
    <td>Pentanol</td>
    <td>0</td>
    <td>0.11</td>
    <td>0.11</td>
    <td>0.19%</td>
    <td>0.18%</td>
  </tr>
  <tr>
    <td>Hexanol</td>
    <td>0</td>
    <td>0.29</td>
    <td>0.29</td>
    <td>0.61%</td>
    <td>0.59%</td>
  </tr>
  <tr>
    <td>Acetate</td>
    <td>12.71</td>
    <td>2.07</td>
    <td>-10.65</td>
    <td>N.A.</td>
    <td>N.A.</td>
  </tr>
  <tr>
    <td>Propionate</td>
    <td>1.54</td>
    <td>0.00</td>
    <td>-1.54</td>
    <td>N.A.</td>
    <td>N.A.</td>
  </tr>
  <tr>
    <td>Butyrate</td>
    <td>2.95</td>
    <td>27.35</td>
    <td>24.40</td>
    <td>28.17%</td>
    <td>32.87%</td>
  </tr>
  <tr>
    <td>Valerate</td>
    <td>1.49</td>
    <td>1.39</td>
    <td>-0.10</td>
    <td>N.A.</td>
    <td>N.A.</td>
  </tr>
  <tr>
    <td>Caproate</td>
    <td>0.37</td>
    <td>4.04</td>
    <td>3.67</td>
    <td>6.78%</td>
    <td>7.42%</td>
  </tr>
  <tr>
    <td>Heptanoate</td>
    <td>0</td>
    <td>0</td>
    <td>0</td>
    <td>0%</td>
    <td>0%</td>
  </tr>
  <tr>
    <td>Caprylate</td>
    <td>0</td>
    <td>0</td>
    <td>0</td>
    <td>0%</td>
    <td>0%</td>
  </tr>
  <tr>
    <td>CH<sub>4</sub></td>
    <td>&lt;1%</td>
    <td>&lt;1%</td>
    <td>N.A.</td>
    <td>N.A.</td>
    <td>N.A.</td>
  </tr>
  <tr>
    <td>CO<sub>2</sub></td>
    <td>0.58</td>
    <td>0.34</td>
    <td>-0.24</td>
    <td>N.A.</td>
    <td>N.A.</td>
  </tr>
  <tr>
    <td>H<sub>2</sub></td>
    <td>0.21</td>
    <td>0.85</td>
    <td>0.64</td>
    <td>N.A.</td>
    <td>N.A.</td>
  </tr>
  <tr>
    <td>Unidentified</td>
    <td></td>
    <td></td>
    <td></td>
    <td>44.73%</td>
    <td>39.95%</td>
  </tr>
</tbody>
</table>

#### Table S4 The selectivity of each compound at pH 7 based on the electron and carbon

<table>
<thead>
  <tr>
    <th>Compound</th>
    <th>Initial con.(mM)</th>
    <th>Final con.(mM)</th>
    <th>Δ con.(mM)</th>
    <th>Selectivity mol <i>e</i><sup>-</sup> %</th>
    <th>Selectivity mol C %</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td>Ethanol</td>
    <td>173.98</td>
    <td>0</td>
    <td>-173.98</td>
    <td>N.A.</td>
    <td>N.A.</td>
  </tr>
  <tr>
    <td>Propanol</td>
    <td>0</td>
    <td>3.15</td>
    <td>3.15</td>
    <td>2.50%</td>
    <td>2.40%</td>
  </tr>
  <tr>
    <td>Butanol</td>
    <td>0</td>
    <td>3.13</td>
    <td>3.13</td>
    <td>3.30%</td>
    <td>3.18%</td>
  </tr>
  <tr>
    <td>Pentanol</td>
    <td>0</td>
    <td>0.13</td>
    <td>0.13</td>
    <td>0.17%</td>
    <td>0.17%</td>
  </tr>
  <tr>
    <td>Hexanol</td>
    <td>0</td>
    <td>0.60</td>
    <td>0.60</td>
    <td>0.95%</td>
    <td>0.91%</td>
  </tr>
  <tr>
    <td>Acetate</td>
    <td>22.66</td>
    <td>1.45</td>
    <td>-21.21</td>
    <td>N.A.</td>
    <td>N.A.</td>
  </tr>
  <tr>
    <td>Propionate</td>
    <td>5.08</td>
    <td>4.00</td>
    <td>-1.08</td>
    <td>N.A.</td>
    <td>N.A.</td>
  </tr>
  <tr>
    <td>Butyrate</td>
    <td>2.35</td>
    <td>43.54</td>
    <td>41.19</td>
    <td>36.25%</td>
    <td>41.86%</td>
  </tr>
  <tr>
    <td>Valerate</td>
    <td>1.51</td>
    <td>3.70</td>
    <td>2.19</td>
    <td>2.50%</td>
    <td>2.78%</td>
  </tr>
  <tr>
    <td>Caproate</td>
    <td>0.43</td>
    <td>28.93</td>
    <td>28.50</td>
    <td>40.13%</td>
    <td>43.44%</td>
  </tr>
  <tr>
    <td>Heptanoate</td>
    <td>0</td>
    <td>0.05</td>
    <td>0.05</td>
    <td>0.09%</td>
    <td>0.09%</td>
  </tr>
  <tr>
    <td>Caprylate</td>
    <td>0</td>
    <td>0.12</td>
    <td>0.12</td>
    <td>0.23%</td>
    <td>0.24%</td>
  </tr>
  <tr>
    <td>CH<sub>4</sub></td>
    <td>&lt;1%</td>
    <td>&lt;1%</td>
    <td>N.A.</td>
    <td>N.A.</td>
    <td>N.A.</td>
  </tr>
  <tr>
    <td>CO<sub>2</sub></td>
    <td>0.66</td>
    <td>0.19</td>
    <td>N.A.</td>
    <td>N.A.</td>
    <td>N.A.</td>
  </tr>
  <tr>
    <td>H<sub>2</sub></td>
    <td>0.01</td>
    <td>1.25</td>
    <td>N.A.</td>
    <td>N.A.</td>
    <td>N.A.</td>
  </tr>
  <tr>
    <td>Unidentified</td>
    <td> </td>
    <td></td>
    <td></td>
    <td>13.87%</td>
    <td>4.92%</td>
  </tr>
</tbody>
</table>

#### Table S5 The selectivity of each compound at pH 10 based on the electron and carbon

<table>
<thead>
  <tr>
    <th>Compound</th>
    <th>Initial con.(mM)</th>
    <th>Final con.(mM)</th>
    <th>Δ con.(mM)</th>
    <th>Selectivity mol <i>e</i><sup>-</sup> %</th>
    <th>Selectivity mol C %</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td>Ethanol</td>
    <td>173.98</td>
    <td>31.89</td>
    <td>-142.09</td>
    <td>N.A.</td>
    <td>N.A.</td>
  </tr>
  <tr>
    <td>Propanol</td>
    <td>0</td>
    <td>0</td>
    <td>0</td>
    <td>0</td>
    <td>0</td>
  </tr>
  <tr>
    <td>Butanol</td>
    <td>0</td>
    <td>0</td>
    <td>0</td>
    <td>0</td>
    <td>0</td>
  </tr>
  <tr>
    <td>Pentanol</td>
    <td>0</td>
    <td>0</td>
    <td>0</td>
    <td>0</td>
    <td>0</td>
  </tr>
  <tr>
    <td>Hexanol</td>
    <td>0</td>
    <td>0</td>
    <td>0</td>
    <td>0</td>
    <td>0</td>
  </tr>
  <tr>
    <td>Acetate</td>
    <td>20.49</td>
    <td>96.93</td>
    <td>76.45</td>
    <td>35.35%</td>
    <td>52.87%</td>
  </tr>
  <tr>
    <td>Propionate</td>
    <td>2.08</td>
    <td>1.88</td>
    <td>-0.20</td>
    <td>N.A.</td>
    <td>N.A.</td>
  </tr>
  <tr>
    <td>Butyrate</td>
    <td>2.84</td>
    <td>1.78</td>
    <td>-1.06</td>
    <td>N.A.</td>
    <td>N.A.</td>
  </tr>
  <tr>
    <td>Valerate</td>
    <td>1.73</td>
    <td>1.70</td>
    <td>-0.03</td>
    <td>N.A.</td>
    <td>N.A.</td>
  </tr>
  <tr>
    <td>Caproate</td>
    <td>0.17</td>
    <td>0.17</td>
    <td>0.00</td>
    <td>N.A.</td>
    <td>N.A.</td>
  </tr>
  <tr>
    <td>Heptanoate</td>
    <td>0</td>
    <td>0</td>
    <td>0</td>
    <td>0</td>
    <td>0</td>
  </tr>
  <tr>
    <td>Caprylate</td>
    <td>0</td>
    <td>0</td>
    <td>0</td>
    <td>0</td>
    <td>0</td>
  </tr>
  <tr>
    <td>CH<sub>4</sub></td>
    <td>&lt;1%</td>
    <td>&lt;1%</td>
    <td>N.A.</td>
    <td>N.A.</td>
    <td>N.A.</td>
  </tr>
  <tr>
    <td>CO<sub>2</sub></td>
    <td>&lt;1%</td>
    <td>&lt;1%</td>
    <td>N.A.</td>
    <td>N.A.</td>
    <td>N.A.</td>
  </tr>
  <tr>
    <td>H<sub>2</sub></td>
    <td>0.38</td>
    <td>0.47</td>
    <td>0.09</td>
    <td>N.A.</td>
    <td>N.A.</td>
  </tr>
  <tr>
    <td>Unidentified</td>
    <td> </td>
    <td></td>
    <td></td>
    <td>64.65%</td>
    <td>48.66%</td>
  </tr>
</tbody>
</table>

#### Table S6 The overall details of metagenomic assembly results

<table>
<thead>
  <tr>
    <th rowspan="2">Sample</th>
    <th rowspan="2">Read length (bp)</th>
    <th colspan="2">Metagenomic raw data</th>
    <th colspan="2">Metagenomic clean data</th>
    <th colspan="6">Assembly and predicted results</th>
  </tr>
  <tr>
    <th>Raw reads</th>
    <th>Raw base (bp)</th>
    <th>Clean reads</th>
    <th>Clean bases (bp)</th>
    <th>Contigs</th>
    <th>Contigs bases (bp)</th>
    <th>N50 (bp)</th>
    <th>ORFs</th>
    <th>Total ORFs length</th>
    <th>Average ORFs length</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td>C7</td>
    <td rowspan="4">150</td>
    <td>44,446,366</td>
    <td>6,711,401,266</td>
    <td>43,917,120</td>
    <td>6,589,526,274</td>
    <td>555,278</td>
    <td>358,024,509</td>
    <td>657</td>
    <td>720,727</td>
    <td>318,398,805</td>
    <td>441.77</td>
  </tr>
  <tr>
    <td>E5</td>
    <td>46,135,516</td>
    <td>6,966,462,916</td>
    <td>45,559,734</td>
    <td>6,796,213,934</td>
    <td>655,223</td>
    <td>436,024,171</td>
    <td>689</td>
    <td>864,149</td>
    <td>390,091,629</td>
    <td>451.42</td>
  </tr>
  <tr>
    <td>E7</td>
    <td>43,868,618</td>
    <td>6,624,161,318</td>
    <td>43,459,070</td>
    <td>6,513,041,058</td>
    <td>617,805</td>
    <td>411,751,374</td>
    <td>699</td>
    <td>817,592</td>
    <td>368,064,114</td>
    <td>450.18</td>
  </tr>
  <tr>
    <td>E10</td>
    <td>40,842,952</td>
    <td>6,167,285,752</td>
    <td>40,395,430</td>
    <td>6,053,848,787</td>
    <td>539,639</td>
    <td>379,094,270</td>
    <td>758</td>
    <td>726,659</td>
    <td>338,560,167</td>
    <td>465.91</td>
  </tr>
</tbody>
</table>

### Dataset S1 to S12

## Metagenome-centric analysis workflow
All the scripts were developed for running on the PBS Pro and tested on eResearch High Performance Computing cluster at the University of Technology Sydney.


## Copyright
Xingdong Shi 

xingdong.shi@student.uts.edu.au

PhD candidate at

The Centre for Technology in Water and Wastewater

School of Environmental Engineering, University of Technology Sydney

This repository is part of "Biosynthesis mechanisms of medium-chain carboxylic acids and alcohols in anaerobic microalgae fermentation regulated by pH conditions". Please cite the following research if this repository is helpful in your research.

Shi, X., Wei, W., Lan, W., et al. Biosynthesis mechanisms of medium-chain carboxylic acids and alcohols in anaerobic microalgae fermentation regulated by pH conditions. Applied and Environmental Microbiology.


