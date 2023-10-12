![](https://img.shields.io/badge/DOI-xxx-violet)
# Biosynthesis mechanisms of medium-chain carboxylic acids and alcohols in anaerobic microalgae fermentation regulated by pH conditions
This repository contains a collection of code, scripts and supporting information that are used or mentioned in the paper "Biosynthesis mechanisms of medium-chain carboxylic acids and alcohols in anaerobic microalgae fermentation regulated by pH conditions" by Shi et al..

The supporting information includes some additional calculation procedures and tables.

The MS files are here：
- [Supplementary Information.docx](https://github.com/XingdongShi/Biosynthesis-mechanisms-of-medium-chain-carboxylic-acids-and-alcohols-production-under-different-pH/blob/main/Supplementary%20Information.docx)
- [Supplementary Dataset.xlsx](https://github.com/XingdongShi/Biosynthesis-mechanisms-of-medium-chain-carboxylic-acids-and-alcohols-production-under-different-pH/blob/main/Supplementary%20Dataset.xlsx)
		
The markdown file is shown as follows.
                    
## Table of content
  * [Supporting information and dataset](#supporting-information-and-dataset)
    + [Supporting Texst S1 to S2 and Table S1 to S5](#supporting-texst-s1-to-s2-and-table-s1-to-s6)
      - [Text S1 The calculation procedures](#text-s1-the-calculation-procedures)
      - [Text S2 The calculation of undissociated MCCA concentrations in E5 and E7 groups](#text-s2-the-calculation-of-undissociated-mcca-concentrations-in-e5-and-e7-groups)
      - [Table S1 The specificities of primary products for each group](#table-s1-the-specificities-of-primary-products-for-each-group)
      - [Table S2 The selectivity of each compound at pH 5 based on the electron and carbon](#table-s2-the-selectivity-of-each-compound-at-ph-5-based-on-the-electron-and-carbon)
      - [Table S3 The selectivity of each compound at pH 7 based on the electron and carbon](#table-s3-the-selectivity-of-each-compound-at-ph-7-based-on-the-electron-and-carbon)
      - [Table S4 The selectivity of each compound at pH 10 based on the electron and carbon](#table-s4-the-selectivity-of-each-compound-at-ph-10-based-on-the-electron-and-carbon)
      - [Table S5 The overall details of metagenomic assembly results](#table-s5-the-overall-details-of-metagenomic-assembly-results)
    + [Dataset S1 to S12](#dataset-s1-to-s12)
      - [Dataset S1 The exact Fisher test results between E5 and E10](#dataset-s1-the-exact-fisher-test-results-between-e5-and-e10)
      - [Dataset S2 The exact Fisher test results between C7 and E7](#dataset-s2-the-exact-fisher-test-results-between-c7-and-e7)
      - [Dataset S3 The exact Fisher test results between E5 and E7](#dataset-s3-the-exact-fisher-test-results-between-e5-and-e7)
      - [Dataset S4 The exact Fisher test results between E7 and E10](#dataset-s4-the-exact-fisher-test-results-between-e7-and-e10)
      - [Dataset S5 The exact Fisher test results between C7 and E10](#dataset-s5-the-exact-fisher-test-results-between-c7-and-e10)
      - [Dataset S6 The exact Fisher test results between C7 and E5](#dataset-s6-the-exact-fisher-test-results-between-c7-and-e5)
      - [Dataset S7 The abundance of main enzyme for producing MCCA and alcohols in each group](#dataset-s7-the-abundance-of-main-enzyme-for-producing-mcca-and-alcohols-in-each-group)
      - [Dataset S8 The main enzyme proportion in each sample](#dataset-s8-the-main-enzyme-proportion-in-each-sample)
      - [Dataset S9 The overall characteristics of the MAGs recovered in this study](#dataset-s9-the-overall-characteristics-of-the-mags-recovered-in-this-study)
      - [Dataset S10 The detailed taxa of MAGs using GTDB-Tk](#dataset-s10-the-detailed-taxa-of-mags-using-gtdb-tk)
      - [Dataset S11 The glycoside hydrolases in each MAGs](#dataset-s11-the-glycoside-hydrolases-in-each-mags)
      - [Dataset S12 The main functional genes in each MAGs](#dataset-s12-the-main-functional-genes-in-each-mags)
  * [Metagenome-centric analysis workflow](#metagenome-centric-analysis-workflow)
    + [Run metaWRAP qc to trim the reads](#run-metawrap-qc-to-trim-the-reads)
    + [Assembling the metagenomes with the metaWRAP-Assembly module](#assembling-the-metagenomes-with-the-metawrap-assembly-module)
    + [Bin the co-assembly with CONCOCT](#bin-the-co-assembly-with-concoct)
    + [Bin the co-assembly with MaxBin](#bin-the-co-assembly-with-maxbin)
    + [Bin the co-assembly with metaBAT](#bin-the-co-assembly-with-metabat)
    + [Consolidate bin sets with the refinement module](#consolidate-bin-sets-with-the-refinement-module)
    + [Calculate the abundance of bins across the samples](#calculate-the-abundance-of-bins-across-the-samples)
    + [Re-assemble the consolidated bin set with the Reassemble module](#re-assemble-the-consolidated-bin-set-with-the-reassemble-module)
    + [GTDB-tk](#gtdb-tk)
    + [iqtree](#iqtree)
    + [prokka](#prokka)
    + [Eggnog-mapper](#eggnog-mapper)
    + [dbCAN2](#dbcan2)
  * [Copyright](#copyright)

## Supporting information and dataset
The supporting information includes some additional calculation procedures and tables. Text S1-S2 and Table S1 to S6 are in the supporting information file, while Datasets S1 to S12 are in the supporting dataset file.

You can download these MS files or see the markdown notes below.
### Supporting Texst S1 to S2 and Table S1 to S6
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

$$\text{Selectivity (mol  }e^-\text{)}=\frac{\Delta C_{i}}{\displaystyle\sum_{i=1}^{n} \Delta C_{i}}$$

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

#### Table S1 The specificities of primary products for each group

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

#### Table S2 The selectivity of each compound at pH 5 based on the electron and carbon

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

#### Table S3 The selectivity of each compound at pH 7 based on the electron and carbon

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

#### Table S4 The selectivity of each compound at pH 10 based on the electron and carbon

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

#### Table S5 The overall details of metagenomic assembly results

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
#### Dataset S1 The exact Fisher test results between E5 and E10							

<table>
<thead>
  <tr>
    <th>Name</th>
    <th>E5</th>
    <th>E10</th>
    <th>P value</th>
    <th>Corrected p value</th>
    <th>Lower ci</th>
    <th>Upper ci</th>
    <th>Effectsize</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td>Fatty acid elongation</td>
    <td>0.00126</td>
    <td>1.93E-04</td>
    <td>0.00185</td>
    <td>0.00566</td>
    <td>4.00E-04</td>
    <td>0.00172</td>
    <td>0.00106</td>
  </tr>
  <tr>
    <td>Taurine and hypotaurine metabolism</td>
    <td>0.138</td>
    <td>0.1491</td>
    <td>0.01853</td>
    <td>0.04214</td>
    <td>-0.02017</td>
    <td>-0.00192</td>
    <td>-0.01104</td>
  </tr>
  <tr>
    <td>Ascorbate and aldarate metabolism</td>
    <td>0.1512</td>
    <td>0.1391</td>
    <td>0.01005</td>
    <td>0.02579</td>
    <td>0.0029</td>
    <td>0.02129</td>
    <td>0.01209</td>
  </tr>
  <tr>
    <td>beta-Alanine metabolism</td>
    <td>0.237</td>
    <td>0.2699</td>
    <td>1.13E-07</td>
    <td>6.75E-07</td>
    <td>-0.04503</td>
    <td>-0.02082</td>
    <td>-0.03292</td>
  </tr>
  <tr>
    <td>Pentose and glucuronate interconversions</td>
    <td>0.2632</td>
    <td>0.2689</td>
    <td>0.3767</td>
    <td>0.5421</td>
    <td>-0.01808</td>
    <td>0.00677</td>
    <td>-0.00566</td>
  </tr>
  <tr>
    <td>Histidine metabolism</td>
    <td>0.3733</td>
    <td>0.382</td>
    <td>0.2446</td>
    <td>0.3842</td>
    <td>-0.02353</td>
    <td>0.00606</td>
    <td>-0.00873</td>
  </tr>
  <tr>
    <td>Lysine degradation</td>
    <td>0.4157</td>
    <td>0.4667</td>
    <td>4.08E-10</td>
    <td>3.15E-09</td>
    <td>-0.06701</td>
    <td>-0.03508</td>
    <td>-0.05104</td>
  </tr>
  <tr>
    <td>Galactose metabolism</td>
    <td>0.4176</td>
    <td>0.4139</td>
    <td>0.6461</td>
    <td>0.7952</td>
    <td>-0.01188</td>
    <td>0.01917</td>
    <td>0.00364</td>
  </tr>
  <tr>
    <td>Fructose and mannose metabolism</td>
    <td>0.4776</td>
    <td>0.4785</td>
    <td>0.9218</td>
    <td>1</td>
    <td>-0.01757</td>
    <td>0.01571</td>
    <td>-9.31E-04</td>
  </tr>
  <tr>
    <td>Fatty acid biosynthesis</td>
    <td>0.5008</td>
    <td>0.4623</td>
    <td>6.66E-06</td>
    <td>3.16E-05</td>
    <td>0.02172</td>
    <td>0.05516</td>
    <td>0.03844</td>
  </tr>
  <tr>
    <td>Fatty acid degradation</td>
    <td>0.5485</td>
    <td>0.574</td>
    <td>0.00567</td>
    <td>0.01579</td>
    <td>-0.04358</td>
    <td>-0.00756</td>
    <td>-0.02557</td>
  </tr>
  <tr>
    <td>Starch and sucrose metabolism</td>
    <td>0.6184</td>
    <td>0.6931</td>
    <td>5.97E-14</td>
    <td>6.97E-13</td>
    <td>-0.09407</td>
    <td>-0.05518</td>
    <td>-0.07462</td>
  </tr>
  <tr>
    <td>Pentose phosphate pathway</td>
    <td>0.643</td>
    <td>0.6683</td>
    <td>0.0109</td>
    <td>0.02721</td>
    <td>-0.04477</td>
    <td>-0.00585</td>
    <td>-0.02531</td>
  </tr>
  <tr>
    <td>Valine, leucine and isoleucine&nbsp;&nbsp;&nbsp;degradation</td>
    <td>0.7659</td>
    <td>0.7898</td>
    <td>0.02739</td>
    <td>0.06037</td>
    <td>-0.04504</td>
    <td>-0.00266</td>
    <td>-0.02385</td>
  </tr>
  <tr>
    <td>Propanoate metabolism</td>
    <td>0.7945</td>
    <td>0.832</td>
    <td>6.99E-04</td>
    <td>0.00229</td>
    <td>-0.05917</td>
    <td>-0.01586</td>
    <td>-0.03751</td>
  </tr>
  <tr>
    <td>Methane metabolism</td>
    <td>0.8341</td>
    <td>0.9629</td>
    <td>1.50E-28</td>
    <td>3.23E-27</td>
    <td>-0.1515</td>
    <td>-0.1061</td>
    <td>-0.1288</td>
  </tr>
  <tr>
    <td>Citrate cycle (TCA cycle)</td>
    <td>0.8445</td>
    <td>0.8412</td>
    <td>0.7722</td>
    <td>0.8943</td>
    <td>-0.01876</td>
    <td>0.02536</td>
    <td>0.0033</td>
  </tr>
  <tr>
    <td>Glycine, serine and threonine metabolism</td>
    <td>0.8746</td>
    <td>0.9307</td>
    <td>1.50E-06</td>
    <td>7.69E-06</td>
    <td>-0.07891</td>
    <td>-0.03331</td>
    <td>-0.05611</td>
  </tr>
  <tr>
    <td>Alanine, aspartate and glutamate&nbsp;&nbsp;&nbsp;metabolism</td>
    <td>0.9239</td>
    <td>0.8375</td>
    <td>5.41E-14</td>
    <td>6.49E-13</td>
    <td>0.06392</td>
    <td>0.1091</td>
    <td>0.08649</td>
  </tr>
  <tr>
    <td>Butanoate metabolism</td>
    <td>0.9319</td>
    <td>0.9523</td>
    <td>0.08665</td>
    <td>0.1664</td>
    <td>-0.04374</td>
    <td>0.00286</td>
    <td>-0.02044</td>
  </tr>
  <tr>
    <td>Glyoxylate and dicarboxylate metabolism</td>
    <td>1.015</td>
    <td>1.11</td>
    <td>4.37E-14</td>
    <td>5.40E-13</td>
    <td>-0.1201</td>
    <td>-0.07064</td>
    <td>-0.09535</td>
  </tr>
  <tr>
    <td>Glycolysis / Gluconeogenesis</td>
    <td>1.096</td>
    <td>1.101</td>
    <td>0.7231</td>
    <td>0.8629</td>
    <td>-0.02974</td>
    <td>0.02055</td>
    <td>-0.0046</td>
  </tr>
  <tr>
    <td>Carbon fixation pathways in prokaryotes</td>
    <td>1.098</td>
    <td>1.117</td>
    <td>0.1582</td>
    <td>0.267</td>
    <td>-0.04344</td>
    <td>0.00705</td>
    <td>-0.0182</td>
  </tr>
  <tr>
    <td>Pyruvate metabolism</td>
    <td>1.188</td>
    <td>1.221</td>
    <td>0.01414</td>
    <td>0.03368</td>
    <td>-0.0593</td>
    <td>-0.00668</td>
    <td>-0.03299</td>
  </tr>
  <tr>
    <td>Oxidative phosphorylation</td>
    <td>1.328</td>
    <td>1.323</td>
    <td>0.7468</td>
    <td>0.8725</td>
    <td>-0.02299</td>
    <td>0.0322</td>
    <td>0.00461</td>
  </tr>
</tbody>
</table>

#### Dataset S2 The exact Fisher test results between C7 and E7							

<table>
<thead>
  <tr>
    <th>Name</th>
    <th>C7</th>
    <th>E7</th>
    <th>Pvalue</th>
    <th>Corrected pvalue</th>
    <th>Lower ci</th>
    <th>Upper ci</th>
    <th>Effectsize</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td>Fatty acid elongation</td>
    <td>0.00147</td>
    <td>9.52E-04</td>
    <td>0.28</td>
    <td>0.425</td>
    <td>-3.40E-04</td>
    <td>0.00137</td>
    <td>5.14E-04</td>
  </tr>
  <tr>
    <td>Taurine and hypotaurine metabolism</td>
    <td>0.1355</td>
    <td>0.1501</td>
    <td>0.00198</td>
    <td>0.00692</td>
    <td>-0.02376</td>
    <td>-0.00536</td>
    <td>-0.01456</td>
  </tr>
  <tr>
    <td>Ascorbate and aldarate metabolism</td>
    <td>0.147</td>
    <td>0.1359</td>
    <td>0.01774</td>
    <td>0.04719</td>
    <td>0.00193</td>
    <td>0.02029</td>
    <td>0.01111</td>
  </tr>
  <tr>
    <td>beta-Alanine metabolism</td>
    <td>0.191</td>
    <td>0.2349</td>
    <td>2.24E-14</td>
    <td>3.01E-13</td>
    <td>-0.05505</td>
    <td>-0.03264</td>
    <td>-0.04384</td>
  </tr>
  <tr>
    <td>Pentose and glucuronate interconversions</td>
    <td>0.2997</td>
    <td>0.2673</td>
    <td>1.00E-06</td>
    <td>6.00E-06</td>
    <td>0.0194</td>
    <td>0.04538</td>
    <td>0.03239</td>
  </tr>
  <tr>
    <td>Histidine metabolism</td>
    <td>0.3798</td>
    <td>0.374</td>
    <td>0.4522</td>
    <td>0.5997</td>
    <td>-0.00923</td>
    <td>0.02068</td>
    <td>0.00573</td>
  </tr>
  <tr>
    <td>Lysine degradation</td>
    <td>0.3858</td>
    <td>0.4419</td>
    <td>2.29E-12</td>
    <td>2.30E-11</td>
    <td>-0.07174</td>
    <td>-0.04048</td>
    <td>-0.05611</td>
  </tr>
  <tr>
    <td>Fatty acid biosynthesis</td>
    <td>0.4451</td>
    <td>0.4377</td>
    <td>0.3673</td>
    <td>0.5208</td>
    <td>-0.00875</td>
    <td>0.0236</td>
    <td>0.00743</td>
  </tr>
  <tr>
    <td>Fatty acid degradation</td>
    <td>0.4583</td>
    <td>0.5517</td>
    <td>3.62E-26</td>
    <td>1.73E-24</td>
    <td>-0.1106</td>
    <td>-0.07613</td>
    <td>-0.09337</td>
  </tr>
  <tr>
    <td>Fructose and mannose metabolism</td>
    <td>0.5289</td>
    <td>0.4612</td>
    <td>8.50E-15</td>
    <td>1.18E-13</td>
    <td>0.05054</td>
    <td>0.08486</td>
    <td>0.0677</td>
  </tr>
  <tr>
    <td>Galactose metabolism</td>
    <td>0.5524</td>
    <td>0.4457</td>
    <td>3.66E-34</td>
    <td>3.16E-32</td>
    <td>0.08943</td>
    <td>0.1239</td>
    <td>0.1067</td>
  </tr>
  <tr>
    <td>Valine, leucine and isoleucine&nbsp;&nbsp;&nbsp;degradation</td>
    <td>0.6183</td>
    <td>0.7508</td>
    <td>4.15E-38</td>
    <td>4.47E-36</td>
    <td>-0.1525</td>
    <td>-0.1124</td>
    <td>-0.1325</td>
  </tr>
  <tr>
    <td>Pentose phosphate pathway</td>
    <td>0.7076</td>
    <td>0.6731</td>
    <td>8.38E-04</td>
    <td>0.00304</td>
    <td>0.01423</td>
    <td>0.05466</td>
    <td>0.03444</td>
  </tr>
  <tr>
    <td>Propanoate metabolism</td>
    <td>0.7282</td>
    <td>0.8222</td>
    <td>7.49E-18</td>
    <td>1.61E-16</td>
    <td>-0.1154</td>
    <td>-0.07268</td>
    <td>-0.09404</td>
  </tr>
  <tr>
    <td>Starch and sucrose metabolism</td>
    <td>0.7552</td>
    <td>0.6695</td>
    <td>2.67E-16</td>
    <td>4.61E-15</td>
    <td>0.06513</td>
    <td>0.1062</td>
    <td>0.08568</td>
  </tr>
  <tr>
    <td>Citrate cycle (TCA cycle)</td>
    <td>0.8355</td>
    <td>0.8493</td>
    <td>0.2256</td>
    <td>0.358</td>
    <td>-0.03611</td>
    <td>0.00847</td>
    <td>-0.01382</td>
  </tr>
  <tr>
    <td>Butanoate metabolism</td>
    <td>0.8686</td>
    <td>0.9301</td>
    <td>1.71E-07</td>
    <td>1.14E-06</td>
    <td>-0.08447</td>
    <td>-0.03846</td>
    <td>-0.06147</td>
  </tr>
  <tr>
    <td>Glycine, serine and threonine metabolism</td>
    <td>0.8853</td>
    <td>0.8907</td>
    <td>0.6568</td>
    <td>0.7713</td>
    <td>-0.0282</td>
    <td>0.01757</td>
    <td>-0.00532</td>
  </tr>
  <tr>
    <td>Alanine, aspartate and glutamate&nbsp;&nbsp;&nbsp;metabolism</td>
    <td>0.8878</td>
    <td>0.8607</td>
    <td>0.01958</td>
    <td>0.05172</td>
    <td>0.00439</td>
    <td>0.04983</td>
    <td>0.02711</td>
  </tr>
  <tr>
    <td>Glyoxylate and dicarboxylate metabolism</td>
    <td>0.9839</td>
    <td>1.047</td>
    <td>5.23E-07</td>
    <td>3.22E-06</td>
    <td>-0.08709</td>
    <td>-0.03823</td>
    <td>-0.06266</td>
  </tr>
  <tr>
    <td>Methane metabolism</td>
    <td>0.9935</td>
    <td>0.9553</td>
    <td>0.00182</td>
    <td>0.00641</td>
    <td>0.0142</td>
    <td>0.06215</td>
    <td>0.03818</td>
  </tr>
  <tr>
    <td>Carbon fixation pathways in prokaryotes</td>
    <td>1.088</td>
    <td>1.106</td>
    <td>0.1714</td>
    <td>0.2943</td>
    <td>-0.04314</td>
    <td>0.00767</td>
    <td>-0.01774</td>
  </tr>
  <tr>
    <td>Oxidative phosphorylation</td>
    <td>1.167</td>
    <td>1.233</td>
    <td>1.21E-06</td>
    <td>7.06E-06</td>
    <td>-0.09241</td>
    <td>-0.03933</td>
    <td>-0.06587</td>
  </tr>
  <tr>
    <td>Pyruvate metabolism</td>
    <td>1.206</td>
    <td>1.241</td>
    <td>0.01038</td>
    <td>0.03043</td>
    <td>-0.06193</td>
    <td>-0.00831</td>
    <td>-0.03512</td>
  </tr>
  <tr>
    <td>Glycolysis / Gluconeogenesis</td>
    <td>1.207</td>
    <td>1.115</td>
    <td>6.16E-12</td>
    <td>6.03E-11</td>
    <td>0.06546</td>
    <td>0.1178</td>
    <td>0.09162</td>
  </tr>
</tbody>
</table>

#### Dataset S3 The exact Fisher test results between E5 and E7							

<table>
<thead>
  <tr>
    <th>Name</th>
    <th>E5</th>
    <th>E7</th>
    <th>P value</th>
    <th>Corrected p value</th>
    <th>Lower ci</th>
    <th>Upper ci</th>
    <th>Effectsize</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td>Fatty acid elongation</td>
    <td>0.00126</td>
    <td>9.52E-04</td>
    <td>0.4599</td>
    <td>0.6279</td>
    <td>-5.04E-04</td>
    <td>0.00111</td>
    <td>3.03E-04</td>
  </tr>
  <tr>
    <td>Taurine and hypotaurine metabolism</td>
    <td>0.138</td>
    <td>0.1501</td>
    <td>0.01065</td>
    <td>0.0373</td>
    <td>-0.02124</td>
    <td>-0.0029</td>
    <td>-0.01207</td>
  </tr>
  <tr>
    <td>Ascorbate and aldarate metabolism</td>
    <td>0.1512</td>
    <td>0.1359</td>
    <td>0.00109</td>
    <td>0.00544</td>
    <td>0.00612</td>
    <td>0.02447</td>
    <td>0.01529</td>
  </tr>
  <tr>
    <td>beta-Alanine metabolism</td>
    <td>0.237</td>
    <td>0.2349</td>
    <td>0.7311</td>
    <td>0.8282</td>
    <td>-0.00966</td>
    <td>0.01384</td>
    <td>0.002089</td>
  </tr>
  <tr>
    <td>Pentose and glucuronate interconversions</td>
    <td>0.2632</td>
    <td>0.2673</td>
    <td>0.5324</td>
    <td>0.6721</td>
    <td>-0.01653</td>
    <td>0.00837</td>
    <td>-0.00408</td>
  </tr>
  <tr>
    <td>Histidine metabolism</td>
    <td>0.3733</td>
    <td>0.374</td>
    <td>0.9194</td>
    <td>0.9808</td>
    <td>-0.01554</td>
    <td>0.01401</td>
    <td>-7.65E-04</td>
  </tr>
  <tr>
    <td>Lysine degradation</td>
    <td>0.4157</td>
    <td>0.4419</td>
    <td>0.00116</td>
    <td>0.00573</td>
    <td>-0.04209</td>
    <td>-0.01047</td>
    <td>-0.02628</td>
  </tr>
  <tr>
    <td>Galactose metabolism</td>
    <td>0.4176</td>
    <td>0.4457</td>
    <td>5.32E-04</td>
    <td>0.00286</td>
    <td>-0.04403</td>
    <td>-0.01231</td>
    <td>-0.02817</td>
  </tr>
  <tr>
    <td>Fructose and mannose metabolism</td>
    <td>0.4776</td>
    <td>0.4612</td>
    <td>0.05306</td>
    <td>0.1349</td>
    <td>-1.98E-04</td>
    <td>0.03291</td>
    <td>0.01636</td>
  </tr>
  <tr>
    <td>Fatty acid biosynthesis</td>
    <td>0.5008</td>
    <td>0.4377</td>
    <td>7.96E-14</td>
    <td>2.86E-12</td>
    <td>0.04651</td>
    <td>0.07966</td>
    <td>0.06309</td>
  </tr>
  <tr>
    <td>Fatty acid degradation</td>
    <td>0.5485</td>
    <td>0.5517</td>
    <td>0.7321</td>
    <td>0.8282</td>
    <td>-0.02112</td>
    <td>0.01469</td>
    <td>-0.00321</td>
  </tr>
  <tr>
    <td>Starch and sucrose metabolism</td>
    <td>0.6184</td>
    <td>0.6695</td>
    <td>2.46E-07</td>
    <td>3.31E-06</td>
    <td>-0.07039</td>
    <td>-0.0317</td>
    <td>-0.05104</td>
  </tr>
  <tr>
    <td>Pentose phosphate pathway</td>
    <td>0.643</td>
    <td>0.6731</td>
    <td>0.00263</td>
    <td>0.01169</td>
    <td>-0.04967</td>
    <td>-0.01054</td>
    <td>-0.03011</td>
  </tr>
  <tr>
    <td>Valine, leucine and isoleucine&nbsp;&nbsp;&nbsp;degradation</td>
    <td>0.7659</td>
    <td>0.7508</td>
    <td>0.1607</td>
    <td>0.3051</td>
    <td>-0.00587</td>
    <td>0.03615</td>
    <td>0.01514</td>
  </tr>
  <tr>
    <td>Propanoate metabolism</td>
    <td>0.7945</td>
    <td>0.8222</td>
    <td>0.01233</td>
    <td>0.04184</td>
    <td>-0.04945</td>
    <td>-0.00611</td>
    <td>-0.02778</td>
  </tr>
  <tr>
    <td>Methane metabolism</td>
    <td>0.8341</td>
    <td>0.9553</td>
    <td>1.97E-25</td>
    <td>1.70E-23</td>
    <td>-0.144</td>
    <td>-0.09848</td>
    <td>-0.1212</td>
  </tr>
  <tr>
    <td>Citrate cycle (TCA cycle)</td>
    <td>0.8445</td>
    <td>0.8493</td>
    <td>0.6761</td>
    <td>0.7897</td>
    <td>-0.02692</td>
    <td>0.01744</td>
    <td>-0.00474</td>
  </tr>
  <tr>
    <td>Glycine, serine and threonine metabolism</td>
    <td>0.8746</td>
    <td>0.8907</td>
    <td>0.1677</td>
    <td>0.3128</td>
    <td>-0.03869</td>
    <td>0.00658</td>
    <td>-0.01606</td>
  </tr>
  <tr>
    <td>Alanine, aspartate and glutamate&nbsp;&nbsp;&nbsp;metabolism</td>
    <td>0.9239</td>
    <td>0.8607</td>
    <td>5.24E-08</td>
    <td>7.78E-07</td>
    <td>0.0405</td>
    <td>0.08607</td>
    <td>0.06328</td>
  </tr>
  <tr>
    <td>Butanoate metabolism</td>
    <td>0.9319</td>
    <td>0.9301</td>
    <td>0.8824</td>
    <td>0.9484</td>
    <td>-0.02142</td>
    <td>0.02508</td>
    <td>0.00183</td>
  </tr>
  <tr>
    <td>Glyoxylate and dicarboxylate metabolism</td>
    <td>1.015</td>
    <td>1.047</td>
    <td>0.01139</td>
    <td>0.0394</td>
    <td>-0.05607</td>
    <td>-0.00718</td>
    <td>-0.03163</td>
  </tr>
  <tr>
    <td>Glycolysis / Gluconeogenesis</td>
    <td>1.096</td>
    <td>1.115</td>
    <td>0.1352</td>
    <td>0.2636</td>
    <td>-0.04461</td>
    <td>0.00601</td>
    <td>-0.0193</td>
  </tr>
  <tr>
    <td>Carbon fixation pathways in prokaryotes</td>
    <td>1.098</td>
    <td>1.106</td>
    <td>0.5582</td>
    <td>0.6933</td>
    <td>-0.03281</td>
    <td>0.01774</td>
    <td>-0.00754</td>
  </tr>
  <tr>
    <td>Pyruvate metabolism</td>
    <td>1.188</td>
    <td>1.241</td>
    <td>7.27E-05</td>
    <td>5.31E-04</td>
    <td>-0.08021</td>
    <td>-0.0272</td>
    <td>-0.0537</td>
  </tr>
  <tr>
    <td>Oxidative phosphorylation</td>
    <td>1.328</td>
    <td>1.233</td>
    <td>6.76E-12</td>
    <td>1.82E-10</td>
    <td>0.06802</td>
    <td>0.1225</td>
    <td>0.09527</td>
  </tr>
</tbody>
</table>

#### Dataset S4 The exact Fisher test results between E7 and E10							

<table>
<thead>
  <tr>
    <th>Name</th>
    <th>E7</th>
    <th>E10</th>
    <th>P value</th>
    <th>Corrected p value</th>
    <th>Lower ci</th>
    <th>Upper ci</th>
    <th>Effectsize</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td>Fatty acid elongation</td>
    <td>9.52E-04</td>
    <td>1.93E-04</td>
    <td>0.01214</td>
    <td>0.03783</td>
    <td>1.95E-04</td>
    <td>0.00132</td>
    <td>7.59E-04</td>
  </tr>
  <tr>
    <td>Ascorbate and aldarate metabolism</td>
    <td>0.1359</td>
    <td>0.1391</td>
    <td>0.4761</td>
    <td>0.6713</td>
    <td>-0.01192</td>
    <td>0.00552</td>
    <td>-0.0032</td>
  </tr>
  <tr>
    <td>Taurine and hypotaurine metabolism</td>
    <td>0.1501</td>
    <td>0.1491</td>
    <td>0.8279</td>
    <td>0.927</td>
    <td>-0.00806</td>
    <td>0.01012</td>
    <td>0.00103</td>
  </tr>
  <tr>
    <td>beta-Alanine metabolism</td>
    <td>0.2349</td>
    <td>0.2699</td>
    <td>6.57E-09</td>
    <td>8.83E-08</td>
    <td>-0.04681</td>
    <td>-0.02321</td>
    <td>-0.03501</td>
  </tr>
  <tr>
    <td>Pentose and glucuronate interconversions</td>
    <td>0.2673</td>
    <td>0.2689</td>
    <td>0.7985</td>
    <td>0.9107</td>
    <td>-0.01374</td>
    <td>0.01058</td>
    <td>-0.00158</td>
  </tr>
  <tr>
    <td>Histidine metabolism</td>
    <td>0.374</td>
    <td>0.382</td>
    <td>0.2778</td>
    <td>0.4733</td>
    <td>-0.0224</td>
    <td>0.00647</td>
    <td>-0.00797</td>
  </tr>
  <tr>
    <td>Fatty acid biosynthesis</td>
    <td>0.4377</td>
    <td>0.4623</td>
    <td>0.00217</td>
    <td>0.00855</td>
    <td>-0.04038</td>
    <td>-0.0089</td>
    <td>-0.02464</td>
  </tr>
  <tr>
    <td>Lysine degradation</td>
    <td>0.4419</td>
    <td>0.4667</td>
    <td>0.00221</td>
    <td>0.00864</td>
    <td>-0.04058</td>
    <td>-0.00894</td>
    <td>-0.02476</td>
  </tr>
  <tr>
    <td>Galactose metabolism</td>
    <td>0.4457</td>
    <td>0.4139</td>
    <td>5.21E-05</td>
    <td>3.29E-04</td>
    <td>0.01642</td>
    <td>0.0472</td>
    <td>0.03181</td>
  </tr>
  <tr>
    <td>Fructose and mannose metabolism</td>
    <td>0.4612</td>
    <td>0.4785</td>
    <td>0.03598</td>
    <td>0.09491</td>
    <td>-0.03337</td>
    <td>-0.0012</td>
    <td>-0.01729</td>
  </tr>
  <tr>
    <td>Fatty acid degradation</td>
    <td>0.5517</td>
    <td>0.574</td>
    <td>0.0129</td>
    <td>0.03963</td>
    <td>-0.03995</td>
    <td>-0.00476</td>
    <td>-0.02235</td>
  </tr>
  <tr>
    <td>Starch and sucrose metabolism</td>
    <td>0.6695</td>
    <td>0.6931</td>
    <td>0.01706</td>
    <td>0.05059</td>
    <td>-0.04293</td>
    <td>-0.00423</td>
    <td>-0.02358</td>
  </tr>
  <tr>
    <td>Pentose phosphate pathway</td>
    <td>0.6731</td>
    <td>0.6683</td>
    <td>0.6275</td>
    <td>0.7821</td>
    <td>-0.01441</td>
    <td>0.02399</td>
    <td>0.00479</td>
  </tr>
  <tr>
    <td>Valine, leucine and isoleucine&nbsp;&nbsp;&nbsp;degradation</td>
    <td>0.7508</td>
    <td>0.7898</td>
    <td>2.05E-04</td>
    <td>0.00109</td>
    <td>-0.05955</td>
    <td>-0.01842</td>
    <td>-0.03899</td>
  </tr>
  <tr>
    <td>Propanoate metabolism</td>
    <td>0.8222</td>
    <td>0.832</td>
    <td>0.3711</td>
    <td>0.5659</td>
    <td>-0.03104</td>
    <td>0.01157</td>
    <td>-0.00973</td>
  </tr>
  <tr>
    <td>Citrate cycle (TCA cycle)</td>
    <td>0.8493</td>
    <td>0.8412</td>
    <td>0.4669</td>
    <td>0.6666</td>
    <td>-0.0135</td>
    <td>0.02957</td>
    <td>0.00804</td>
  </tr>
  <tr>
    <td>Alanine, aspartate and glutamate&nbsp;&nbsp;&nbsp;metabolism</td>
    <td>0.8607</td>
    <td>0.8375</td>
    <td>0.03519</td>
    <td>0.09341</td>
    <td>0.00162</td>
    <td>0.04479</td>
    <td>0.02321</td>
  </tr>
  <tr>
    <td>Glycine, serine and threonine metabolism</td>
    <td>0.8907</td>
    <td>0.9307</td>
    <td>4.44E-04</td>
    <td>0.0021</td>
    <td>-0.0624</td>
    <td>-0.01771</td>
    <td>-0.04005</td>
  </tr>
  <tr>
    <td>Butanoate metabolism</td>
    <td>0.9301</td>
    <td>0.9523</td>
    <td>0.05482</td>
    <td>0.1317</td>
    <td>-0.04499</td>
    <td>4.35E-04</td>
    <td>-0.02228</td>
  </tr>
  <tr>
    <td>Methane metabolism</td>
    <td>0.9553</td>
    <td>0.9629</td>
    <td>0.522</td>
    <td>0.7014</td>
    <td>-0.03048</td>
    <td>0.01537</td>
    <td>-0.00755</td>
  </tr>
  <tr>
    <td>Glyoxylate and dicarboxylate metabolism</td>
    <td>1.047</td>
    <td>1.11</td>
    <td>2.81E-07</td>
    <td>2.57E-06</td>
    <td>-0.08802</td>
    <td>-0.03943</td>
    <td>-0.06372</td>
  </tr>
  <tr>
    <td>Carbon fixation pathways in prokaryotes</td>
    <td>1.106</td>
    <td>1.117</td>
    <td>0.4001</td>
    <td>0.5912</td>
    <td>-0.03532</td>
    <td>0.014</td>
    <td>-0.01066</td>
  </tr>
  <tr>
    <td>Glycolysis / Gluconeogenesis</td>
    <td>1.115</td>
    <td>1.101</td>
    <td>0.2422</td>
    <td>0.4301</td>
    <td>-0.00992</td>
    <td>0.03933</td>
    <td>0.0147</td>
  </tr>
  <tr>
    <td>Oxidative phosphorylation</td>
    <td>1.233</td>
    <td>1.323</td>
    <td>1.75E-11</td>
    <td>3.26E-10</td>
    <td>-0.1171</td>
    <td>-0.06424</td>
    <td>-0.09066</td>
  </tr>
  <tr>
    <td>Pyruvate metabolism</td>
    <td>1.241</td>
    <td>1.221</td>
    <td>0.1183</td>
    <td>0.2411</td>
    <td>-0.00523</td>
    <td>0.04665</td>
    <td>0.02071</td>
  </tr>
</tbody>
</table>

#### Dataset S5 The exact Fisher test results between C7 and E10							

<table>
<thead>
  <tr>
    <th>Name</th>
    <th>C7</th>
    <th>E10</th>
    <th>P value</th>
    <th>Corrected p value</th>
    <th>Lower ci</th>
    <th>Upper ci</th>
    <th>Effectsize</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td>Fatty acid elongation</td>
    <td>0.00147</td>
    <td>1.93E-04</td>
    <td>2.78E-04</td>
    <td>7.68E-04</td>
    <td>5.55E-04</td>
    <td>0.00199</td>
    <td>0.00127</td>
  </tr>
  <tr>
    <td>Taurine and hypotaurine metabolism</td>
    <td>0.1355</td>
    <td>0.1491</td>
    <td>0.00383</td>
    <td>0.00852</td>
    <td>-0.02268</td>
    <td>-0.00438</td>
    <td>-0.01353</td>
  </tr>
  <tr>
    <td>Ascorbate and aldarate metabolism</td>
    <td>0.147</td>
    <td>0.1391</td>
    <td>0.09067</td>
    <td>0.1401</td>
    <td>-0.00129</td>
    <td>0.0171</td>
    <td>0.00791</td>
  </tr>
  <tr>
    <td>beta-Alanine metabolism</td>
    <td>0.191</td>
    <td>0.2699</td>
    <td>4.53E-40</td>
    <td>1.22E-38</td>
    <td>-0.09044</td>
    <td>-0.06727</td>
    <td>-0.07886</td>
  </tr>
  <tr>
    <td>Pentose and glucuronate interconversions</td>
    <td>0.2997</td>
    <td>0.2689</td>
    <td>3.19E-06</td>
    <td>1.09E-05</td>
    <td>0.01784</td>
    <td>0.04378</td>
    <td>0.03081</td>
  </tr>
  <tr>
    <td>Histidine metabolism</td>
    <td>0.3798</td>
    <td>0.382</td>
    <td>0.7703</td>
    <td>0.8158</td>
    <td>-0.01721</td>
    <td>0.01274</td>
    <td>-0.00224</td>
  </tr>
  <tr>
    <td>Lysine degradation</td>
    <td>0.3858</td>
    <td>0.4667</td>
    <td>1.55E-23</td>
    <td>1.75E-22</td>
    <td>-0.09666</td>
    <td>-0.06509</td>
    <td>-0.08087</td>
  </tr>
  <tr>
    <td>Fatty acid biosynthesis</td>
    <td>0.4451</td>
    <td>0.4623</td>
    <td>0.03972</td>
    <td>0.06661</td>
    <td>-0.03354</td>
    <td>-8.86E-04</td>
    <td>-0.01721</td>
  </tr>
  <tr>
    <td>Fatty acid degradation</td>
    <td>0.4583</td>
    <td>0.574</td>
    <td>1.02E-38</td>
    <td>2.44E-37</td>
    <td>-0.1331</td>
    <td>-0.09837</td>
    <td>-0.1157</td>
  </tr>
  <tr>
    <td>Fructose and mannose metabolism</td>
    <td>0.5289</td>
    <td>0.4785</td>
    <td>8.95E-09</td>
    <td>3.86E-08</td>
    <td>0.03317</td>
    <td>0.06766</td>
    <td>0.05042</td>
  </tr>
  <tr>
    <td>Galactose metabolism</td>
    <td>0.5524</td>
    <td>0.4139</td>
    <td>1.05E-58</td>
    <td>5.02E-57</td>
    <td>0.1215</td>
    <td>0.1554</td>
    <td>0.1385</td>
  </tr>
  <tr>
    <td>Valine, leucine and isoleucine&nbsp;&nbsp;&nbsp;degradation</td>
    <td>0.6183</td>
    <td>0.7898</td>
    <td>2.30E-61</td>
    <td>1.24E-59</td>
    <td>-0.1917</td>
    <td>-0.1512</td>
    <td>-0.1715</td>
  </tr>
  <tr>
    <td>Pentose phosphate pathway</td>
    <td>0.7076</td>
    <td>0.6683</td>
    <td>1.32E-04</td>
    <td>3.71E-04</td>
    <td>0.01912</td>
    <td>0.05935</td>
    <td>0.03924</td>
  </tr>
  <tr>
    <td>Propanoate metabolism</td>
    <td>0.7282</td>
    <td>0.832</td>
    <td>2.00E-21</td>
    <td>2.00E-20</td>
    <td>-0.1251</td>
    <td>-0.08243</td>
    <td>-0.1038</td>
  </tr>
  <tr>
    <td>Starch and sucrose metabolism</td>
    <td>0.7552</td>
    <td>0.6931</td>
    <td>3.51E-09</td>
    <td>1.55E-08</td>
    <td>0.04146</td>
    <td>0.08275</td>
    <td>0.0621</td>
  </tr>
  <tr>
    <td>Citrate cycle (TCA cycle)</td>
    <td>0.8355</td>
    <td>0.8412</td>
    <td>0.6147</td>
    <td>0.6746</td>
    <td>-0.02795</td>
    <td>0.01638</td>
    <td>-0.00578</td>
  </tr>
  <tr>
    <td>Butanoate metabolism</td>
    <td>0.8686</td>
    <td>0.9523</td>
    <td>1.18E-12</td>
    <td>7.62E-12</td>
    <td>-0.1068</td>
    <td>-0.06069</td>
    <td>-0.08375</td>
  </tr>
  <tr>
    <td>Glycine, serine and threonine metabolism</td>
    <td>0.8853</td>
    <td>0.9307</td>
    <td>1.19E-04</td>
    <td>3.38E-04</td>
    <td>-0.06841</td>
    <td>-0.02233</td>
    <td>-0.04537</td>
  </tr>
  <tr>
    <td>Alanine, aspartate and glutamate&nbsp;&nbsp;&nbsp;metabolism</td>
    <td>0.8878</td>
    <td>0.8375</td>
    <td>1.16E-05</td>
    <td>3.80E-05</td>
    <td>0.02781</td>
    <td>0.07282</td>
    <td>0.05032</td>
  </tr>
  <tr>
    <td>Glyoxylate and dicarboxylate metabolism</td>
    <td>0.9839</td>
    <td>1.11</td>
    <td>1.54E-23</td>
    <td>1.75E-22</td>
    <td>-0.1511</td>
    <td>-0.1017</td>
    <td>-0.1264</td>
  </tr>
  <tr>
    <td>Methane metabolism</td>
    <td>0.9935</td>
    <td>0.9629</td>
    <td>0.01209</td>
    <td>0.0239</td>
    <td>0.00668</td>
    <td>0.05456</td>
    <td>0.03062</td>
  </tr>
  <tr>
    <td>Carbon fixation pathways in prokaryotes</td>
    <td>1.088</td>
    <td>1.117</td>
    <td>0.02846</td>
    <td>0.05049</td>
    <td>-0.05378</td>
    <td>-0.00303</td>
    <td>-0.0284</td>
  </tr>
  <tr>
    <td>Oxidative phosphorylation</td>
    <td>1.167</td>
    <td>1.323</td>
    <td>5.77E-30</td>
    <td>9.57E-29</td>
    <td>-0.1834</td>
    <td>-0.1296</td>
    <td>-0.1565</td>
  </tr>
  <tr>
    <td>Pyruvate metabolism</td>
    <td>1.206</td>
    <td>1.221</td>
    <td>0.2896</td>
    <td>0.3714</td>
    <td>-0.04102</td>
    <td>0.01221</td>
    <td>-0.01441</td>
  </tr>
  <tr>
    <td>Glycolysis / Gluconeogenesis</td>
    <td>1.207</td>
    <td>1.101</td>
    <td>9.80E-16</td>
    <td>7.54E-15</td>
    <td>0.08032</td>
    <td>0.1323</td>
    <td>0.1063</td>
  </tr>
</tbody>
</table>

#### Dataset S6 The exact Fisher test results between C7 and E5							

<table>
<thead>
  <tr>
    <th>Name</th>
    <th>C7</th>
    <th>E5</th>
    <th>P value</th>
    <th>Corrected p value</th>
    <th>Lower ci</th>
    <th>Upper ci</th>
    <th>Effectsize</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td>Fatty acid elongation</td>
    <td>0.00147</td>
    <td>0.00126</td>
    <td>0.7331</td>
    <td>0.816</td>
    <td>-7.10E-04</td>
    <td>0.00113</td>
    <td>2.12E-04</td>
  </tr>
  <tr>
    <td>Taurine and hypotaurine metabolism</td>
    <td>0.1355</td>
    <td>0.138</td>
    <td>0.5931</td>
    <td>0.6885</td>
    <td>-0.01172</td>
    <td>0.00674</td>
    <td>-0.00249</td>
  </tr>
  <tr>
    <td>Ascorbate and aldarate metabolism</td>
    <td>0.147</td>
    <td>0.1512</td>
    <td>0.3998</td>
    <td>0.5138</td>
    <td>-0.01382</td>
    <td>0.00545</td>
    <td>-0.00419</td>
  </tr>
  <tr>
    <td>beta-Alanine metabolism</td>
    <td>0.191</td>
    <td>0.237</td>
    <td>5.94E-15</td>
    <td>6.95E-14</td>
    <td>-0.05747</td>
    <td>-0.0344</td>
    <td>-0.04593</td>
  </tr>
  <tr>
    <td>Pentose and glucuronate interconversions</td>
    <td>0.2997</td>
    <td>0.2632</td>
    <td>6.94E-08</td>
    <td>4.49E-07</td>
    <td>0.02323</td>
    <td>0.04971</td>
    <td>0.03647</td>
  </tr>
  <tr>
    <td>Histidine metabolism</td>
    <td>0.3798</td>
    <td>0.3733</td>
    <td>0.4052</td>
    <td>0.5191</td>
    <td>-0.00881</td>
    <td>0.02179</td>
    <td>0.00649</td>
  </tr>
  <tr>
    <td>Lysine degradation</td>
    <td>0.3858</td>
    <td>0.4157</td>
    <td>2.15E-04</td>
    <td>8.02E-04</td>
    <td>-0.04561</td>
    <td>-0.01406</td>
    <td>-0.02983</td>
  </tr>
  <tr>
    <td>Fatty acid biosynthesis</td>
    <td>0.4451</td>
    <td>0.5008</td>
    <td>2.01E-10</td>
    <td>1.74E-09</td>
    <td>-0.07279</td>
    <td>-0.03853</td>
    <td>-0.05566</td>
  </tr>
  <tr>
    <td>Fatty acid degradation</td>
    <td>0.4583</td>
    <td>0.5485</td>
    <td>1.49E-23</td>
    <td>2.92E-22</td>
    <td>-0.1078</td>
    <td>-0.07249</td>
    <td>-0.09016</td>
  </tr>
  <tr>
    <td>Fructose and mannose metabolism</td>
    <td>0.5289</td>
    <td>0.4776</td>
    <td>1.24E-08</td>
    <td>9.11E-08</td>
    <td>0.03367</td>
    <td>0.06903</td>
    <td>0.05135</td>
  </tr>
  <tr>
    <td>Galactose metabolism</td>
    <td>0.5524</td>
    <td>0.4176</td>
    <td>1.52E-52</td>
    <td>6.60E-50</td>
    <td>0.1175</td>
    <td>0.1522</td>
    <td>0.1348</td>
  </tr>
  <tr>
    <td>Valine, leucine and isoleucine&nbsp;&nbsp;&nbsp;degradation</td>
    <td>0.6183</td>
    <td>0.7659</td>
    <td>2.23E-44</td>
    <td>3.22E-42</td>
    <td>-0.1683</td>
    <td>-0.1269</td>
    <td>-0.1476</td>
  </tr>
  <tr>
    <td>Pentose phosphate pathway</td>
    <td>0.7076</td>
    <td>0.643</td>
    <td>6.39E-10</td>
    <td>5.32E-09</td>
    <td>0.04409</td>
    <td>0.08501</td>
    <td>0.06455</td>
  </tr>
  <tr>
    <td>Propanoate metabolism</td>
    <td>0.7282</td>
    <td>0.7945</td>
    <td>2.22E-09</td>
    <td>1.72E-08</td>
    <td>-0.08796</td>
    <td>-0.04455</td>
    <td>-0.06626</td>
  </tr>
  <tr>
    <td>Starch and sucrose metabolism</td>
    <td>0.7552</td>
    <td>0.6184</td>
    <td>1.28E-38</td>
    <td>6.16E-37</td>
    <td>0.1161</td>
    <td>0.1574</td>
    <td>0.1367</td>
  </tr>
  <tr>
    <td>Citrate cycle (TCA cycle)</td>
    <td>0.8355</td>
    <td>0.8445</td>
    <td>0.4384</td>
    <td>0.5534</td>
    <td>-0.03188</td>
    <td>0.01371</td>
    <td>-0.00908</td>
  </tr>
  <tr>
    <td>Butanoate metabolism</td>
    <td>0.8686</td>
    <td>0.9319</td>
    <td>1.43E-07</td>
    <td>8.87E-07</td>
    <td>-0.08689</td>
    <td>-0.03972</td>
    <td>-0.0633</td>
  </tr>
  <tr>
    <td>Glycine, serine and threonine metabolism</td>
    <td>0.8853</td>
    <td>0.8746</td>
    <td>0.3678</td>
    <td>0.4813</td>
    <td>-0.01259</td>
    <td>0.03407</td>
    <td>0.01074</td>
  </tr>
  <tr>
    <td>Alanine, aspartate and glutamate&nbsp;&nbsp;&nbsp;metabolism</td>
    <td>0.8878</td>
    <td>0.9239</td>
    <td>0.00277</td>
    <td>0.00792</td>
    <td>-0.05983</td>
    <td>-0.01251</td>
    <td>-0.03617</td>
  </tr>
  <tr>
    <td>Glyoxylate and dicarboxylate metabolism</td>
    <td>0.9839</td>
    <td>1.015</td>
    <td>0.01467</td>
    <td>0.03326</td>
    <td>-0.05588</td>
    <td>-0.0062</td>
    <td>-0.03104</td>
  </tr>
  <tr>
    <td>Methane metabolism</td>
    <td>0.9935</td>
    <td>0.8341</td>
    <td>1.47E-39</td>
    <td>1.00E-37</td>
    <td>0.1356</td>
    <td>0.1832</td>
    <td>0.1594</td>
  </tr>
  <tr>
    <td>Carbon fixation pathways in prokaryotes</td>
    <td>1.088</td>
    <td>1.098</td>
    <td>0.4438</td>
    <td>0.5537</td>
    <td>-0.03618</td>
    <td>0.01577</td>
    <td>-0.0102</td>
  </tr>
  <tr>
    <td>Oxidative phosphorylation</td>
    <td>1.167</td>
    <td>1.328</td>
    <td>4.49E-30</td>
    <td>1.50E-28</td>
    <td>-0.1888</td>
    <td>-0.1334</td>
    <td>-0.1611</td>
  </tr>
  <tr>
    <td>Pyruvate metabolism</td>
    <td>1.206</td>
    <td>1.188</td>
    <td>0.1797</td>
    <td>0.2619</td>
    <td>-0.00858</td>
    <td>0.04575</td>
    <td>0.01858</td>
  </tr>
  <tr>
    <td>Glycolysis / Gluconeogenesis</td>
    <td>1.207</td>
    <td>1.096</td>
    <td>3.27E-16</td>
    <td>4.43E-15</td>
    <td>0.08427</td>
    <td>0.1376</td>
    <td>0.1109</td>
  </tr>
</tbody>
</table>

#### Dataset S7 The abundance of main enzyme for producing MCCA and alcohols in each group							

<table>
<thead>
  <tr>
    <th>pathway</th>
    <th colspan="2">enzyme</th>
    <th>KO entry</th>
    <th>C7</th>
    <th>E5</th>
    <th>E7</th>
    <th>E10</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td rowspan="24">FAB</td>
    <td rowspan="6">ACC</td>
    <td>ACACA</td>
    <td>K11262</td>
    <td>44</td>
    <td>14</td>
    <td>30</td>
    <td>16</td>
  </tr>
  <tr>
    <td>bccA, pccA</td>
    <td>K11263</td>
    <td>840</td>
    <td>810</td>
    <td>1542</td>
    <td>2058</td>
  </tr>
  <tr>
    <td>accA</td>
    <td>K01962</td>
    <td>1604</td>
    <td>2736</td>
    <td>2370</td>
    <td>2248</td>
  </tr>
  <tr>
    <td>accB</td>
    <td>K02160</td>
    <td>544</td>
    <td>1214</td>
    <td>750</td>
    <td>640</td>
  </tr>
  <tr>
    <td>accC</td>
    <td>K01961</td>
    <td>3324</td>
    <td>4130</td>
    <td>3160</td>
    <td>4074</td>
  </tr>
  <tr>
    <td>accD</td>
    <td>K01963</td>
    <td>1286</td>
    <td>2326</td>
    <td>1512</td>
    <td>1408</td>
  </tr>
  <tr>
    <td rowspan="2">MAT</td>
    <td>fas</td>
    <td>K11533</td>
    <td>160</td>
    <td>92</td>
    <td>368</td>
    <td>414</td>
  </tr>
  <tr>
    <td>fabD</td>
    <td>K00645</td>
    <td>3354</td>
    <td>3736</td>
    <td>2536</td>
    <td>2896</td>
  </tr>
  <tr>
    <td rowspan="4">KAS</td>
    <td>fas</td>
    <td>K11533</td>
    <td>160</td>
    <td>92</td>
    <td>368</td>
    <td>414</td>
  </tr>
  <tr>
    <td>fabB</td>
    <td>K00647</td>
    <td>654</td>
    <td>1604</td>
    <td>716</td>
    <td>1104</td>
  </tr>
  <tr>
    <td>fabF</td>
    <td>K09458</td>
    <td>4460</td>
    <td>6276</td>
    <td>4950</td>
    <td>6254</td>
  </tr>
  <tr>
    <td>fabH</td>
    <td>K00648</td>
    <td>6412</td>
    <td>6566</td>
    <td>5030</td>
    <td>5288</td>
  </tr>
  <tr>
    <td rowspan="2">KAR</td>
    <td>fas</td>
    <td>K11533</td>
    <td>160</td>
    <td>92</td>
    <td>368</td>
    <td>414</td>
  </tr>
  <tr>
    <td>fabG</td>
    <td>K00059</td>
    <td>9216</td>
    <td>11678</td>
    <td>14026</td>
    <td>12898</td>
  </tr>
  <tr>
    <td rowspan="3">HAD</td>
    <td>fas</td>
    <td>K11533</td>
    <td>160</td>
    <td>92</td>
    <td>368</td>
    <td>414</td>
  </tr>
  <tr>
    <td>ipxC-fabZ</td>
    <td>K16363</td>
    <td>2008</td>
    <td>1838</td>
    <td>718</td>
    <td>124</td>
  </tr>
  <tr>
    <td>fabZ</td>
    <td>K02372</td>
    <td>720</td>
    <td>1182</td>
    <td>952</td>
    <td>1092</td>
  </tr>
  <tr>
    <td rowspan="5">EAR</td>
    <td>fas</td>
    <td>K11533</td>
    <td>160</td>
    <td>92</td>
    <td>368</td>
    <td>414</td>
  </tr>
  <tr>
    <td>fabI</td>
    <td>K00208</td>
    <td>1668</td>
    <td>2588</td>
    <td>2236</td>
    <td>3032</td>
  </tr>
  <tr>
    <td>fabV</td>
    <td>K00209</td>
    <td>172</td>
    <td>86</td>
    <td>320</td>
    <td>32</td>
  </tr>
  <tr>
    <td>fabK</td>
    <td>K02371</td>
    <td>1062</td>
    <td>1466</td>
    <td>1518</td>
    <td>874</td>
  </tr>
  <tr>
    <td>fabL</td>
    <td>K10780</td>
    <td>216</td>
    <td>302</td>
    <td>222</td>
    <td>154</td>
  </tr>
  <tr>
    <td>MCH</td>
    <td>mch</td>
    <td>K01071</td>
    <td>136</td>
    <td>222</td>
    <td>106</td>
    <td>84</td>
  </tr>
  <tr>
    <td>FAT</td>
    <td>fatB</td>
    <td>K10781</td>
    <td>14</td>
    <td>2</td>
    <td>52</td>
    <td>36</td>
  </tr>
  <tr>
    <td rowspan="14">RBO</td>
    <td rowspan="2">ACAT</td>
    <td>fadA</td>
    <td>K00632</td>
    <td>2172</td>
    <td>4096</td>
    <td>2612</td>
    <td>3216</td>
  </tr>
  <tr>
    <td>atoB</td>
    <td>K00626</td>
    <td>11470</td>
    <td>14494</td>
    <td>17030</td>
    <td>17560</td>
  </tr>
  <tr>
    <td rowspan="3">HCD</td>
    <td>paaH/hbd/fadB</td>
    <td>K00074</td>
    <td>4316</td>
    <td>6180</td>
    <td>5368</td>
    <td>6284</td>
  </tr>
  <tr>
    <td>fadJ</td>
    <td>K01782</td>
    <td>1734</td>
    <td>2464</td>
    <td>2962</td>
    <td>2728</td>
  </tr>
  <tr>
    <td>fadN</td>
    <td>K07516</td>
    <td>2904</td>
    <td>5510</td>
    <td>3488</td>
    <td>2930</td>
  </tr>
  <tr>
    <td rowspan="2">ECH</td>
    <td>crt</td>
    <td>K01715</td>
    <td>1416</td>
    <td>2170</td>
    <td>1508</td>
    <td>1006</td>
  </tr>
  <tr>
    <td>echA/paaF</td>
    <td>K01692</td>
    <td>4612</td>
    <td>6232</td>
    <td>7800</td>
    <td>8668</td>
  </tr>
  <tr>
    <td rowspan="2">ACD</td>
    <td>mmgC</td>
    <td>K18244</td>
    <td>16</td>
    <td>94</td>
    <td>30</td>
    <td>14</td>
  </tr>
  <tr>
    <td>acd</td>
    <td>K00249</td>
    <td>8910</td>
    <td>9934</td>
    <td>15232</td>
    <td>13098</td>
  </tr>
  <tr>
    <td>EtfA</td>
    <td>etfA</td>
    <td>K03522</td>
    <td>3468</td>
    <td>4554</td>
    <td>4262</td>
    <td>4076</td>
  </tr>
  <tr>
    <td>EtfB</td>
    <td>etfB</td>
    <td>K03521</td>
    <td>3872</td>
    <td>4090</td>
    <td>3886</td>
    <td>3808</td>
  </tr>
  <tr>
    <td>CoAt</td>
    <td>cat2</td>
    <td>K18122</td>
    <td>216</td>
    <td>480</td>
    <td>306</td>
    <td>234</td>
  </tr>
  <tr>
    <td>PTA</td>
    <td>pta</td>
    <td>K00625</td>
    <td>2248</td>
    <td>1632</td>
    <td>1680</td>
    <td>1256</td>
  </tr>
  <tr>
    <td>ACK</td>
    <td>ackA</td>
    <td>K00925</td>
    <td>2768</td>
    <td>2616</td>
    <td>3592</td>
    <td>2636</td>
  </tr>
  <tr>
    <td rowspan="10">Alcohol production</td>
    <td>ADH</td>
    <td>adhE</td>
    <td>K04072</td>
    <td>448</td>
    <td>522</td>
    <td>1080</td>
    <td>506</td>
  </tr>
  <tr>
    <td>BDH</td>
    <td>bdhAB</td>
    <td>K00100</td>
    <td>4</td>
    <td>58</td>
    <td>4</td>
    <td>104</td>
  </tr>
  <tr>
    <td>ADH</td>
    <td>adh2</td>
    <td>K18369</td>
    <td>186</td>
    <td>124</td>
    <td>282</td>
    <td>354</td>
  </tr>
  <tr>
    <td rowspan="2">DHA</td>
    <td>dhaT</td>
    <td>K00086</td>
    <td>2</td>
    <td>24</td>
    <td>10</td>
    <td>6</td>
  </tr>
  <tr>
    <td>pduQ</td>
    <td>K13921</td>
    <td>0</td>
    <td>0</td>
    <td>60</td>
    <td>0</td>
  </tr>
  <tr>
    <td>PDU</td>
    <td>pduP</td>
    <td>K13922</td>
    <td>42</td>
    <td>82</td>
    <td>54</td>
    <td>150</td>
  </tr>
  <tr>
    <td>AOR</td>
    <td>aor</td>
    <td>K03738</td>
    <td>6952</td>
    <td>6132</td>
    <td>7126</td>
    <td>6446</td>
  </tr>
  <tr>
    <td rowspan="3">ALDH</td>
    <td>aldh</td>
    <td>K00128</td>
    <td>4886</td>
    <td>7788</td>
    <td>5910</td>
    <td>6606</td>
  </tr>
  <tr>
    <td>aldB</td>
    <td>K00138</td>
    <td>784</td>
    <td>922</td>
    <td>1472</td>
    <td>1428</td>
  </tr>
  <tr>
    <td>eutE</td>
    <td>K04021</td>
    <td>210</td>
    <td>190</td>
    <td>174</td>
    <td>448</td>
  </tr>
</tbody>
</table>

#### Dataset S8 The main enzyme proportion in each sample

<table>
<thead>
  <tr>
    <th> </th>
    <th>Name</th>
    <th>Description</th>
    <th>C7-Propotion(%)</th>
    <th>E5-Propotion(%)</th>
    <th>E7-Propotion(%)</th>
    <th>E10-Propotion(%)</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td rowspan="14">RBO pathway</td>
    <td>2.3.1.9</td>
    <td>ACAT acetyl-CoA C-acyltransferase</td>
    <td>0.2355</td>
    <td>0.2937</td>
    <td>0.3178</td>
    <td>0.3447</td>
  </tr>
  <tr>
    <td>4.2.1.17</td>
    <td>ECH enoyl-CoA hydratase</td>
    <td>0.1887</td>
    <td>0.2501</td>
    <td>0.2771</td>
    <td>0.2851</td>
  </tr>
  <tr>
    <td>6.2.1.1</td>
    <td>ACS acetyl-CoA synthetase</td>
    <td>0.1831</td>
    <td>0.1675</td>
    <td>0.1841</td>
    <td>0.2035</td>
  </tr>
  <tr>
    <td>1.1.1.35</td>
    <td>HAD 3-hydroxyacyl-CoA dehydrogenase</td>
    <td>0.1013</td>
    <td>0.1621</td>
    <td>0.1324</td>
    <td>0.1195</td>
  </tr>
  <tr>
    <td>1.1.1.157</td>
    <td>HAD 3-hydroxyacyl-CoA dehydrogenase</td>
    <td>0.0926</td>
    <td>0.1248</td>
    <td>0.1107</td>
    <td>0.1372</td>
  </tr>
  <tr>
    <td>1.3.99.-</td>
    <td>ACD acyl-CoA Dehydrogenase</td>
    <td>0.06855</td>
    <td>0.101</td>
    <td>0.1152</td>
    <td>0.1053</td>
  </tr>
  <tr>
    <td>1.1.1.1</td>
    <td>AD alcohol dehydrogenase</td>
    <td>0.07321</td>
    <td>0.09406</td>
    <td>0.1184</td>
    <td>0.1316</td>
  </tr>
  <tr>
    <td>2.3.1.16</td>
    <td>ACAT acetyl-CoA C-acyltransferase</td>
    <td>0.04824</td>
    <td>0.08432</td>
    <td>0.05453</td>
    <td>0.06623</td>
  </tr>
  <tr>
    <td>2.7.2.1</td>
    <td>ACK acetate kinase</td>
    <td>0.05965</td>
    <td>0.05504</td>
    <td>0.06534</td>
    <td>0.05312</td>
  </tr>
  <tr>
    <td>2.3.1.8</td>
    <td>PTA phosphate acetyltransferase</td>
    <td>0.05931</td>
    <td>0.04671</td>
    <td>0.05181</td>
    <td>0.05167</td>
  </tr>
  <tr>
    <td>1.2.1.10</td>
    <td>ADA acetaldehyde dehydrogenase</td>
    <td>0.01819</td>
    <td>0.02454</td>
    <td>0.0371</td>
    <td>0.02009</td>
  </tr>
  <tr>
    <td>4.2.1.55</td>
    <td>ECH enoyl-CoA hydratase</td>
    <td>0.008343</td>
    <td>0.01611</td>
    <td>0.0106</td>
    <td>0.01729</td>
  </tr>
  <tr>
    <td>1.12.7.2</td>
    <td>H2ase ferredoxin hydrogenase</td>
    <td>0.01074</td>
    <td>0.006195</td>
    <td>0.01229</td>
    <td>0.01429</td>
  </tr>
  <tr>
    <td>2.8.3.-</td>
    <td>CoAT 4-hydroxybutyrate CoA transferase</td>
    <td>0.007952</td>
    <td>0.01236</td>
    <td>0.00856</td>
    <td>0.005836</td>
  </tr>
  <tr>
    <td rowspan="7">Alcohol production</td>
    <td>1.2.7.1</td>
    <td>PFOR pyruvate ferredoxin oxidoreductase</td>
    <td>0.2419</td>
    <td>0.2214</td>
    <td>0.2327</td>
    <td>0.2002</td>
  </tr>
  <tr>
    <td>1.2.7.-</td>
    <td>PFOR pyruvate ferredoxin oxidoreductase</td>
    <td>0.1435</td>
    <td>0.1246</td>
    <td>0.1358</td>
    <td>0.1103</td>
  </tr>
  <tr>
    <td>1.2.7.5</td>
    <td>AOR aldehyde ferredoxin oxidoreductase</td>
    <td>0.1381</td>
    <td>0.1196</td>
    <td>0.1187</td>
    <td>0.1137</td>
  </tr>
  <tr>
    <td>1.2.1.3</td>
    <td>aldehyde dehydrogenase</td>
    <td>0.09488</td>
    <td>0.1461</td>
    <td>0.1165</td>
    <td>0.134</td>
  </tr>
  <tr>
    <td>1.1.1.1</td>
    <td>ADH alcohol dehydrogenase</td>
    <td>0.07321</td>
    <td>0.09406</td>
    <td>0.1184</td>
    <td>0.1316</td>
  </tr>
  <tr>
    <td>2.3.1.8</td>
    <td>phosphotransacetylase</td>
    <td>0.05931</td>
    <td>0.04671</td>
    <td>0.05181</td>
    <td>0.05167</td>
  </tr>
  <tr>
    <td>2.7.2.1</td>
    <td>ACK acetate kinase</td>
    <td>0.05965</td>
    <td>0.05504</td>
    <td>0.06534</td>
    <td>0.05312</td>
  </tr>
</tbody>
</table>

#### Dataset S9 The overall characteristics of the MAGs recovered in this study

<table>
<thead>
  <tr>
    <th>MAGs</th>
    <th>completeness</th>
    <th>contamination</th>
    <th>GC</th>
    <th>lineage</th>
    <th>N50</th>
    <th>size</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td>bin.1</td>
    <td>85.45</td>
    <td>5.383</td>
    <td>0.56</td>
    <td>Bacteria</td>
    <td>8735</td>
    <td>2063769</td>
  </tr>
  <tr>
    <td>bin.2</td>
    <td>59.77</td>
    <td>1.09</td>
    <td>0.536</td>
    <td>Bacteria</td>
    <td>3889</td>
    <td>2201559</td>
  </tr>
  <tr>
    <td>bin.3</td>
    <td>90.6</td>
    <td>1.96</td>
    <td>0.548</td>
    <td>Euryarchaeota</td>
    <td>11735</td>
    <td>2105613</td>
  </tr>
  <tr>
    <td>bin.4</td>
    <td>81.03</td>
    <td>0</td>
    <td>0.309</td>
    <td>Bacteria</td>
    <td>149091</td>
    <td>2906507</td>
  </tr>
  <tr>
    <td>bin.5</td>
    <td>97.92</td>
    <td>0.753</td>
    <td>0.58</td>
    <td>Deltaproteobacteria</td>
    <td>27737</td>
    <td>3145874</td>
  </tr>
  <tr>
    <td>bin.6</td>
    <td>92.99</td>
    <td>0</td>
    <td>0.551</td>
    <td>Actinomycetales</td>
    <td>71725</td>
    <td>2402796</td>
  </tr>
  <tr>
    <td>bin.7</td>
    <td>74.6</td>
    <td>1.724</td>
    <td>0.497</td>
    <td>Bacteria</td>
    <td>38360</td>
    <td>3462169</td>
  </tr>
  <tr>
    <td>bin.8</td>
    <td>60.42</td>
    <td>2.15</td>
    <td>0.627</td>
    <td>Bacteria</td>
    <td>5665</td>
    <td>2109198</td>
  </tr>
  <tr>
    <td>bin.9</td>
    <td>66.92</td>
    <td>2.6</td>
    <td>0.715</td>
    <td>Actinobacteria</td>
    <td>3237</td>
    <td>2277820</td>
  </tr>
  <tr>
    <td>bin.10</td>
    <td>70.17</td>
    <td>0</td>
    <td>0.674</td>
    <td>Bacteria</td>
    <td>5617</td>
    <td>2841136</td>
  </tr>
  <tr>
    <td>bin.11</td>
    <td>52.83</td>
    <td>4.713</td>
    <td>0.644</td>
    <td>Bacteria</td>
    <td>2466</td>
    <td>3208022</td>
  </tr>
  <tr>
    <td>bin.12</td>
    <td>85.97</td>
    <td>1.421</td>
    <td>0.607</td>
    <td>Actinomycetales</td>
    <td>18687</td>
    <td>2669958</td>
  </tr>
  <tr>
    <td>bin.13</td>
    <td>94.08</td>
    <td>0.526</td>
    <td>0.605</td>
    <td>Actinomycetales</td>
    <td>17122</td>
    <td>2340049</td>
  </tr>
  <tr>
    <td>bin.14</td>
    <td>53.57</td>
    <td>5.572</td>
    <td>0.691</td>
    <td>Burkholderiales</td>
    <td>1808</td>
    <td>2112031</td>
  </tr>
  <tr>
    <td>bin.15</td>
    <td>53.43</td>
    <td>1.33</td>
    <td>0.504</td>
    <td>Bacteroidetes</td>
    <td>2892</td>
    <td>1653002</td>
  </tr>
  <tr>
    <td>bin.16</td>
    <td>51.56</td>
    <td>2.072</td>
    <td>0.618</td>
    <td>Actinomycetales</td>
    <td>2841</td>
    <td>1610746</td>
  </tr>
  <tr>
    <td>bin.17</td>
    <td>78.12</td>
    <td>2.634</td>
    <td>0.446</td>
    <td>Bacteroidetes</td>
    <td>5161</td>
    <td>2508211</td>
  </tr>
  <tr>
    <td>bin.18</td>
    <td>57.49</td>
    <td>7.296</td>
    <td>0.647</td>
    <td>Rhizobiales</td>
    <td>3589</td>
    <td>2261487</td>
  </tr>
  <tr>
    <td>bin.19</td>
    <td>94.05</td>
    <td>0.676</td>
    <td>0.475</td>
    <td>Bacteroidetes</td>
    <td>37109</td>
    <td>3943314</td>
  </tr>
  <tr>
    <td>bin.20</td>
    <td>81.21</td>
    <td>4.727</td>
    <td>0.59</td>
    <td>Bacteria</td>
    <td>8415</td>
    <td>2729774</td>
  </tr>
  <tr>
    <td>bin.21</td>
    <td>97.02</td>
    <td>0.66</td>
    <td>0.368</td>
    <td>Bacteroidetes</td>
    <td>42940</td>
    <td>3971856</td>
  </tr>
  <tr>
    <td>bin.22</td>
    <td>71.81</td>
    <td>2.727</td>
    <td>0.653</td>
    <td>Bacteria</td>
    <td>4121</td>
    <td>4148642</td>
  </tr>
  <tr>
    <td>bin.23</td>
    <td>89.56</td>
    <td>0.607</td>
    <td>0.357</td>
    <td>Bacteroidetes</td>
    <td>9508</td>
    <td>2993194</td>
  </tr>
  <tr>
    <td>bin.24</td>
    <td>80.96</td>
    <td>2.97</td>
    <td>0.67</td>
    <td>Sphingomonadales</td>
    <td>6786</td>
    <td>2587477</td>
  </tr>
  <tr>
    <td>bin.25</td>
    <td>85.45</td>
    <td>5.454</td>
    <td>0.667</td>
    <td>Bacteria</td>
    <td>8701</td>
    <td>4755152</td>
  </tr>
  <tr>
    <td>bin.26</td>
    <td>99.05</td>
    <td>0.7</td>
    <td>0.644</td>
    <td>Gammaproteobacteria</td>
    <td>54918</td>
    <td>4006843</td>
  </tr>
  <tr>
    <td>bin.27</td>
    <td>58.74</td>
    <td>0.967</td>
    <td>0.608</td>
    <td>Deltaproteobacteria</td>
    <td>4058</td>
    <td>1596982</td>
  </tr>
  <tr>
    <td>bin.28</td>
    <td>70.1</td>
    <td>1.336</td>
    <td>0.644</td>
    <td>Deltaproteobacteria</td>
    <td>4240</td>
    <td>1846451</td>
  </tr>
  <tr>
    <td>bin.29</td>
    <td>94.22</td>
    <td>3.052</td>
    <td>0.613</td>
    <td>Sphingomonadales</td>
    <td>9333</td>
    <td>2558120</td>
  </tr>
  <tr>
    <td>bin.30</td>
    <td>52.52</td>
    <td>4.545</td>
    <td>0.533</td>
    <td>Bacteria</td>
    <td>3070</td>
    <td>1185097</td>
  </tr>
  <tr>
    <td>bin.31</td>
    <td>81.81</td>
    <td>2.727</td>
    <td>0.654</td>
    <td>Bacteria</td>
    <td>10001</td>
    <td>4385835</td>
  </tr>
  <tr>
    <td>bin.32</td>
    <td>50.03</td>
    <td>2.727</td>
    <td>0.507</td>
    <td>Bacteria</td>
    <td>4094</td>
    <td>1204703</td>
  </tr>
  <tr>
    <td>bin.33</td>
    <td>93.01</td>
    <td>2.032</td>
    <td>0.673</td>
    <td>Rhodobacteraceae</td>
    <td>8488</td>
    <td>2841763</td>
  </tr>
  <tr>
    <td>bin.34</td>
    <td>74.48</td>
    <td>1.877</td>
    <td>0.684</td>
    <td>Actinomycetales</td>
    <td>4496</td>
    <td>3793250</td>
  </tr>
  <tr>
    <td>bin.35</td>
    <td>75.89</td>
    <td>4.121</td>
    <td>0.595</td>
    <td>Bacteria</td>
    <td>5781</td>
    <td>3238995</td>
  </tr>
  <tr>
    <td>bin.36</td>
    <td>80.31</td>
    <td>0.016</td>
    <td>0.423</td>
    <td>Bacteroidetes</td>
    <td>7102</td>
    <td>3249216</td>
  </tr>
  <tr>
    <td>bin.37</td>
    <td>70.4</td>
    <td>5.135</td>
    <td>0.671</td>
    <td>Actinomycetales</td>
    <td>9792</td>
    <td>2273424</td>
  </tr>
  <tr>
    <td>bin.38</td>
    <td>77.79</td>
    <td>6.253</td>
    <td>0.628</td>
    <td>Betaproteobacteria</td>
    <td>9051</td>
    <td>3142834</td>
  </tr>
  <tr>
    <td>bin.39</td>
    <td>52.64</td>
    <td>1.818</td>
    <td>0.46</td>
    <td>Bacteria</td>
    <td>7686</td>
    <td>1567318</td>
  </tr>
  <tr>
    <td>bin.40</td>
    <td>64.26</td>
    <td>0.443</td>
    <td>0.419</td>
    <td>Bacteroidetes</td>
    <td>5591</td>
    <td>2610846</td>
  </tr>
  <tr>
    <td>bin.41</td>
    <td>88.48</td>
    <td>1.702</td>
    <td>0.656</td>
    <td>Burkholderiales</td>
    <td>10111</td>
    <td>3472462</td>
  </tr>
  <tr>
    <td>bin.42</td>
    <td>56</td>
    <td>1.831</td>
    <td>0.572</td>
    <td>Clostridiales</td>
    <td>2190</td>
    <td>1280905</td>
  </tr>
  <tr>
    <td>bin.43</td>
    <td>100</td>
    <td>1.149</td>
    <td>0.548</td>
    <td>Bacteria</td>
    <td>55793</td>
    <td>2646336</td>
  </tr>
  <tr>
    <td>bin.44</td>
    <td>52.3</td>
    <td>6.047</td>
    <td>0.294</td>
    <td>Clostridiales</td>
    <td>3286</td>
    <td>1407477</td>
  </tr>
  <tr>
    <td>bin.45</td>
    <td>86.52</td>
    <td>6.072</td>
    <td>0.635</td>
    <td>Alphaproteobacteria</td>
    <td>8764</td>
    <td>3121156</td>
  </tr>
  <tr>
    <td>bin.46</td>
    <td>84.14</td>
    <td>6.067</td>
    <td>0.607</td>
    <td>Rhizobiales</td>
    <td>8830</td>
    <td>4745715</td>
  </tr>
  <tr>
    <td>bin.47</td>
    <td>64.27</td>
    <td>2.172</td>
    <td>0.414</td>
    <td>Bacteroidetes</td>
    <td>3507</td>
    <td>2374830</td>
  </tr>
  <tr>
    <td>bin.48</td>
    <td>52</td>
    <td>5.681</td>
    <td>0.489</td>
    <td>Bacteria</td>
    <td>4971</td>
    <td>1297530</td>
  </tr>
  <tr>
    <td>bin.49</td>
    <td>85.23</td>
    <td>1.098</td>
    <td>0.522</td>
    <td>Clostridiales</td>
    <td>45347</td>
    <td>2804234</td>
  </tr>
  <tr>
    <td>bin.50</td>
    <td>53.44</td>
    <td>2.586</td>
    <td>0.298</td>
    <td>Bacteria</td>
    <td>6530</td>
    <td>1342092</td>
  </tr>
  <tr>
    <td>bin.51</td>
    <td>98.59</td>
    <td>1.742</td>
    <td>0.31</td>
    <td>Clostridium</td>
    <td>17052</td>
    <td>3309094</td>
  </tr>
  <tr>
    <td>bin.52</td>
    <td>89.11</td>
    <td>0.984</td>
    <td>0.365</td>
    <td>Bacteroidetes</td>
    <td>8733</td>
    <td>2682952</td>
  </tr>
  <tr>
    <td>bin.53</td>
    <td>61.14</td>
    <td>1.818</td>
    <td>0.622</td>
    <td>Bacteria</td>
    <td>3628</td>
    <td>2220951</td>
  </tr>
  <tr>
    <td>bin.54</td>
    <td>97.52</td>
    <td>0.495</td>
    <td>0.381</td>
    <td>Bacteroidetes</td>
    <td>109477</td>
    <td>3184906</td>
  </tr>
  <tr>
    <td>bin.55</td>
    <td>60.93</td>
    <td>3.173</td>
    <td>0.649</td>
    <td>Bacteria</td>
    <td>2537</td>
    <td>2591276</td>
  </tr>
  <tr>
    <td>bin.56</td>
    <td>91.88</td>
    <td>0</td>
    <td>0.569</td>
    <td>Bacteria</td>
    <td>27998</td>
    <td>6188197</td>
  </tr>
  <tr>
    <td>bin.57</td>
    <td>92.3</td>
    <td>4.077</td>
    <td>0.637</td>
    <td>Bacteria</td>
    <td>13748</td>
    <td>6564713</td>
  </tr>
  <tr>
    <td>bin.58</td>
    <td>98.3</td>
    <td>0.847</td>
    <td>0.617</td>
    <td>Bacteria</td>
    <td>16148</td>
    <td>2442189</td>
  </tr>
  <tr>
    <td>bin.59</td>
    <td>73.88</td>
    <td>0</td>
    <td>0.657</td>
    <td>Bacteria</td>
    <td>9578</td>
    <td>3682100</td>
  </tr>
  <tr>
    <td>bin.60</td>
    <td>78.97</td>
    <td>0.698</td>
    <td>0.439</td>
    <td>Clostridiales</td>
    <td>4588</td>
    <td>1743127</td>
  </tr>
  <tr>
    <td>bin.61</td>
    <td>54.31</td>
    <td>8.058</td>
    <td>0.661</td>
    <td>Rhizobiales</td>
    <td>3527</td>
    <td>3080154</td>
  </tr>
  <tr>
    <td>bin.62</td>
    <td>74.2</td>
    <td>1.155</td>
    <td>0.453</td>
    <td>Bacteroidetes</td>
    <td>3636</td>
    <td>2672497</td>
  </tr>
  <tr>
    <td>bin.63</td>
    <td>69.92</td>
    <td>0.383</td>
    <td>0.683</td>
    <td>Bacteria</td>
    <td>1817</td>
    <td>1793414</td>
  </tr>
  <tr>
    <td>bin.64</td>
    <td>78.05</td>
    <td>0.739</td>
    <td>0.533</td>
    <td>Deltaproteobacteria</td>
    <td>3898</td>
    <td>2011321</td>
  </tr>
  <tr>
    <td>bin.65</td>
    <td>90.63</td>
    <td>4.275</td>
    <td>0.415</td>
    <td>Bacteroidales</td>
    <td>6351</td>
    <td>4467831</td>
  </tr>
  <tr>
    <td>bin.66</td>
    <td>90</td>
    <td>5.14</td>
    <td>0.406</td>
    <td>Bacteria</td>
    <td>36295</td>
    <td>3741993</td>
  </tr>
  <tr>
    <td>bin.67</td>
    <td>83.38</td>
    <td>3.448</td>
    <td>0.282</td>
    <td>Bacteria</td>
    <td>33702</td>
    <td>3333431</td>
  </tr>
  <tr>
    <td>bin.68</td>
    <td>84.97</td>
    <td>2.368</td>
    <td>0.664</td>
    <td>Burkholderiales</td>
    <td>4721</td>
    <td>3010932</td>
  </tr>
  <tr>
    <td>bin.69</td>
    <td>66.4</td>
    <td>0.919</td>
    <td>0.411</td>
    <td>Bacteria</td>
    <td>2392</td>
    <td>2746875</td>
  </tr>
  <tr>
    <td>bin.70</td>
    <td>52.46</td>
    <td>0.634</td>
    <td>0.409</td>
    <td>Bacteroidetes</td>
    <td>3464</td>
    <td>2342674</td>
  </tr>
  <tr>
    <td>bin.71</td>
    <td>65.73</td>
    <td>1.622</td>
    <td>0.329</td>
    <td>Bacteroidetes</td>
    <td>3448</td>
    <td>2616901</td>
  </tr>
  <tr>
    <td>bin.72</td>
    <td>76.51</td>
    <td>0.868</td>
    <td>0.614</td>
    <td>Euryarchaeota</td>
    <td>2966</td>
    <td>1748802</td>
  </tr>
  <tr>
    <td>bin.73</td>
    <td>69.34</td>
    <td>0.952</td>
    <td>0.506</td>
    <td>Bacteroidetes</td>
    <td>8723</td>
    <td>2030598</td>
  </tr>
  <tr>
    <td>bin.74</td>
    <td>62.66</td>
    <td>1.928</td>
    <td>0.294</td>
    <td>Euryarchaeota</td>
    <td>2643</td>
    <td>900562</td>
  </tr>
  <tr>
    <td>bin.76</td>
    <td>75.45</td>
    <td>8.484</td>
    <td>0.479</td>
    <td>Bacteria</td>
    <td>12057</td>
    <td>2238902</td>
  </tr>
  <tr>
    <td>bin.78</td>
    <td>55.17</td>
    <td>3.448</td>
    <td>0.667</td>
    <td>Bacteria</td>
    <td>6073</td>
    <td>2196856</td>
  </tr>
  <tr>
    <td>bin.79</td>
    <td>66.76</td>
    <td>2.342</td>
    <td>0.693</td>
    <td>Actinomycetales</td>
    <td>4401</td>
    <td>2230471</td>
  </tr>
  <tr>
    <td>bin.80</td>
    <td>94.9</td>
    <td>2.777</td>
    <td>0.625</td>
    <td>Bacteria</td>
    <td>8735</td>
    <td>2472616</td>
  </tr>
  <tr>
    <td>bin.81</td>
    <td>87.73</td>
    <td>2.956</td>
    <td>0.511</td>
    <td>Bacteria</td>
    <td>22487</td>
    <td>2643407</td>
  </tr>
  <tr>
    <td>bin.82</td>
    <td>96.48</td>
    <td>0.116</td>
    <td>0.305</td>
    <td>Clostridiales</td>
    <td>52727</td>
    <td>1808712</td>
  </tr>
  <tr>
    <td>bin.83</td>
    <td>94.31</td>
    <td>2.614</td>
    <td>0.523</td>
    <td>Euryarchaeota</td>
    <td>17261</td>
    <td>2523024</td>
  </tr>
  <tr>
    <td>bin.84</td>
    <td>77.51</td>
    <td>2.727</td>
    <td>0.538</td>
    <td>Bacteria</td>
    <td>4191</td>
    <td>2208172</td>
  </tr>
  <tr>
    <td>bin.85</td>
    <td>95.91</td>
    <td>1.237</td>
    <td>0.38</td>
    <td>Bacteroidetes</td>
    <td>27653</td>
    <td>5418655</td>
  </tr>
  <tr>
    <td>bin.86</td>
    <td>62.07</td>
    <td>1.707</td>
    <td>0.635</td>
    <td>Deltaproteobacteria</td>
    <td>2856</td>
    <td>1730154</td>
  </tr>
  <tr>
    <td>bin.87</td>
    <td>73.19</td>
    <td>0</td>
    <td>0.705</td>
    <td>Bacteria</td>
    <td>8853</td>
    <td>2762938</td>
  </tr>
  <tr>
    <td>bin.88</td>
    <td>68.18</td>
    <td>0.156</td>
    <td>0.534</td>
    <td>Bacteria</td>
    <td>9696</td>
    <td>1723126</td>
  </tr>
  <tr>
    <td>bin.89</td>
    <td>61.37</td>
    <td>1.282</td>
    <td>0.712</td>
    <td>Bacteria</td>
    <td>5610</td>
    <td>2012871</td>
  </tr>
  <tr>
    <td>bin.90</td>
    <td>68.18</td>
    <td>2.469</td>
    <td>0.681</td>
    <td>Burkholderiales</td>
    <td>6424</td>
    <td>3226883</td>
  </tr>
  <tr>
    <td>bin.91</td>
    <td>51.34</td>
    <td>1.573</td>
    <td>0.569</td>
    <td>Clostridiales</td>
    <td>4323</td>
    <td>1011081</td>
  </tr>
  <tr>
    <td>bin.92</td>
    <td>83.4</td>
    <td>7.232</td>
    <td>0.708</td>
    <td>Bacteria</td>
    <td>6701</td>
    <td>4361718</td>
  </tr>
  <tr>
    <td>bin.93</td>
    <td>88.53</td>
    <td>1.633</td>
    <td>0.538</td>
    <td>Euryarchaeota</td>
    <td>15789</td>
    <td>1970616</td>
  </tr>
  <tr>
    <td>bin.94</td>
    <td>52.46</td>
    <td>2.972</td>
    <td>0.484</td>
    <td>Bacteroidetes</td>
    <td>2158</td>
    <td>1413223</td>
  </tr>
  <tr>
    <td>bin.95</td>
    <td>86.33</td>
    <td>4.682</td>
    <td>0.541</td>
    <td>Bacteroidetes</td>
    <td>20210</td>
    <td>3138624</td>
  </tr>
  <tr>
    <td>bin.96</td>
    <td>76.36</td>
    <td>3.939</td>
    <td>0.63</td>
    <td>Bacteria</td>
    <td>9514</td>
    <td>3944772</td>
  </tr>
  <tr>
    <td>bin.97</td>
    <td>95.63</td>
    <td>2.446</td>
    <td>0.476</td>
    <td>Clostridiales</td>
    <td>73052</td>
    <td>1793128</td>
  </tr>
  <tr>
    <td>bin.98</td>
    <td>53.86</td>
    <td>1.666</td>
    <td>0.515</td>
    <td>Bacteria</td>
    <td>1911</td>
    <td>1932722</td>
  </tr>
  <tr>
    <td>bin.99</td>
    <td>60.3</td>
    <td>4.18</td>
    <td>0.481</td>
    <td>Deltaproteobacteria</td>
    <td>1883</td>
    <td>1421742</td>
  </tr>
  <tr>
    <td>bin.100</td>
    <td>53.3</td>
    <td>2.275</td>
    <td>0.444</td>
    <td>Firmicutes</td>
    <td>1773</td>
    <td>1332599</td>
  </tr>
  <tr>
    <td>bin.101</td>
    <td>52.03</td>
    <td>2</td>
    <td>0.558</td>
    <td>Bacteria</td>
    <td>2042</td>
    <td>1324138</td>
  </tr>
  <tr>
    <td>bin.102</td>
    <td>57.06</td>
    <td>5.434</td>
    <td>0.642</td>
    <td>Bacteria</td>
    <td>2216</td>
    <td>3472034</td>
  </tr>
  <tr>
    <td>bin.103</td>
    <td>56.68</td>
    <td>0.819</td>
    <td>0.356</td>
    <td>Bacteria</td>
    <td>2165</td>
    <td>2415201</td>
  </tr>
  <tr>
    <td>bin.104</td>
    <td>50.9</td>
    <td>5.508</td>
    <td>0.506</td>
    <td>Bacteria</td>
    <td>1616</td>
    <td>3279058</td>
  </tr>
  <tr>
    <td>bin.105</td>
    <td>51.87</td>
    <td>1.156</td>
    <td>0.635</td>
    <td>Bacteria</td>
    <td>1717</td>
    <td>2927827</td>
  </tr>
  <tr>
    <td>bin.106</td>
    <td>59.31</td>
    <td>3.972</td>
    <td>0.466</td>
    <td>Actinobacteria</td>
    <td>1783</td>
    <td>799731</td>
  </tr>
</tbody>
</table>

#### Dataset S10 The detailed taxa of MAGs using GTDB-Tk

<table>
<thead>
  <tr>
    <th>MAGs</th>
    <th colspan="14">Taxa</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td>bin.1</td>
    <td colspan="14">d__Bacteria;p__Chloroflexota;c__Anaerolineae;o__Anaerolineales;f__Anaerolineaceae;g__Longilinea;s__</td>
  </tr>
  <tr>
    <td>bin.2</td>
    <td colspan="14">d__Bacteria;p__Chloroflexota;c__Anaerolineae;o__Anaerolineales;f__Anaerolineaceae;g__T78;s__</td>
  </tr>
  <tr>
    <td>bin.3</td>
    <td colspan="14">d__Bacteria;p__Verrucomicrobiota;c__Verrucomicrobiae;o__Verrucomicrobiales;f__DEV007;g__Arctic95D-9;s__</td>
  </tr>
  <tr>
    <td>bin.4</td>
    <td colspan="14">d__Bacteria;p__Bacteroidota;c__Bacteroidia;o__AKYH767-A;f__OLB10;g__OLB10;s__OLB10&nbsp;&nbsp;&nbsp;sp016699635</td>
  </tr>
  <tr>
    <td>bin.5</td>
    <td colspan="14">d__Bacteria;p__Bacteroidota;c__Bacteroidia;o__Chitinophagales;f__Chitinophagaceae;g__Ferruginibacter;s__</td>
  </tr>
  <tr>
    <td>bin.6</td>
    <td colspan="14">d__Bacteria;p__Proteobacteria;c__Alphaproteobacteria;o__Rhodobacterales;f__Rhodobacteraceae;g__QY30;s__</td>
  </tr>
  <tr>
    <td>bin.7</td>
    <td colspan="14">d__Bacteria;p__Firmicutes_A;c__Clostridia;o__Clostridiales;f__Clostridiaceae;g__JG1575;s__</td>
  </tr>
  <tr>
    <td>bin.8</td>
    <td colspan="14">d__Bacteria;p__Chloroflexota;c__Anaerolineae;o__Promineofilales;f__Promineofilaceae;g__Promineofilum;s__</td>
  </tr>
  <tr>
    <td>bin.9</td>
    <td colspan="14">d__Bacteria;p__Firmicutes_A;c__Clostridia;o__Tissierellales;f__Tissierellaceae;g__JACRTK01;s__JACRTK01&nbsp;&nbsp;&nbsp;sp014385225</td>
  </tr>
  <tr>
    <td>bin.10</td>
    <td colspan="14">d__Bacteria;p__Proteobacteria;c__Gammaproteobacteria;o__Burkholderiales;f__Burkholderiaceae;g__Piscinibacter;s__Piscinibacter&nbsp;&nbsp;&nbsp;sp017983795</td>
  </tr>
  <tr>
    <td>bin.12</td>
    <td colspan="14">d__Bacteria;p__Proteobacteria;c__Alphaproteobacteria;o__Rhizobiales;f__Aestuariivirgaceae;g__Aestuariivirga;s__</td>
  </tr>
  <tr>
    <td>bin.13</td>
    <td colspan="14">d__Bacteria;p__Proteobacteria;c__Alphaproteobacteria;o__Rhizobiales;f__Rhizobiaceae;g__JADJTR01;s__</td>
  </tr>
  <tr>
    <td>bin.14</td>
    <td colspan="14">d__Bacteria;p__Actinobacteriota;c__Acidimicrobiia;o__Acidimicrobiales;f__Ilumatobacteraceae;g__;s__</td>
  </tr>
  <tr>
    <td>bin.15</td>
    <td colspan="14">d__Bacteria;p__Desulfobacterota_G;c__Syntrophorhabdia;o__Syntrophorhabdales;f__;g__;s__</td>
  </tr>
  <tr>
    <td>bin.16</td>
    <td colspan="14">d__Bacteria;p__Proteobacteria;c__Alphaproteobacteria;o__Caulobacterales;f__TH1-2;g__Terricaulis;s__</td>
  </tr>
  <tr>
    <td>bin.17</td>
    <td colspan="14">d__Bacteria;p__Firmicutes_A;c__Clostridia;o__Clostridiales;f__Clostridiaceae;g__Proteiniclasticum;s__Proteiniclasticum&nbsp;&nbsp;&nbsp;sp003514505</td>
  </tr>
  <tr>
    <td>bin.18</td>
    <td colspan="14">d__Bacteria;p__Actinobacteriota;c__Actinomycetia;o__Nanopelagicales;f__S36-B12;g__M55B157;s__</td>
  </tr>
  <tr>
    <td>bin.19</td>
    <td colspan="14">d__Bacteria;p__Desulfobacterota;c__Desulfomonilia;o__UBA1062;f__UBA1062;g__MWEI01;s__</td>
  </tr>
  <tr>
    <td>bin.20</td>
    <td colspan="14">d__Bacteria;p__Chloroflexota;c__Anaerolineae;o__Anaerolineales;f__Anaerolineaceae;g__T78;s__</td>
  </tr>
  <tr>
    <td>bin.21</td>
    <td colspan="14">d__Bacteria;p__Chloroflexota;c__Anaerolineae;o__Promineofilales;f__Promineofilaceae;g__Promineofilum;s__</td>
  </tr>
  <tr>
    <td>bin.22</td>
    <td colspan="14">d__Bacteria;p__Bacteroidota;c__Bacteroidia;o__Flavobacteriales;f__PHOS-HE28;g__PHOS-HE28;s__</td>
  </tr>
  <tr>
    <td>bin.23</td>
    <td colspan="14">d__Bacteria;p__Chloroflexota;c__Anaerolineae;o__Promineofilales;f__Promineofilaceae;g__Promineofilum;s__</td>
  </tr>
  <tr>
    <td>bin.24</td>
    <td colspan="14">d__Bacteria;p__Actinobacteriota;c__Actinomycetia;o__Mycobacteriales;f__Mycobacteriaceae;g__Mycobacterium;s__</td>
  </tr>
  <tr>
    <td>bin.25</td>
    <td colspan="14">d__Bacteria;p__Bacteroidota;c__Bacteroidia;o__Chitinophagales;f__Saprospiraceae;g__UBA3362;s__UBA3362&nbsp;&nbsp;&nbsp;sp016787575</td>
  </tr>
  <tr>
    <td>bin.26</td>
    <td colspan="14">d__Archaea;p__Thermoplasmatota;c__Thermoplasmata;o__Methanomassiliicoccales;f__Methanomassiliicoccaceae;g__UBA6;s__</td>
  </tr>
  <tr>
    <td>bin.27</td>
    <td colspan="14">d__Bacteria;p__Bacteroidota;c__Bacteroidia;o__Chitinophagales;f__Saprospiraceae;g__JADKGY01;s__</td>
  </tr>
  <tr>
    <td>bin.28</td>
    <td colspan="14">d__Bacteria;p__Bacteroidota;c__Bacteroidia;o__Chitinophagales;f__Saprospiraceae;g__JADKBO01;s__</td>
  </tr>
  <tr>
    <td>bin.29</td>
    <td colspan="14">d__Bacteria;p__Actinobacteriota;c__Actinomycetia;o__Actinomycetales;f__Dermatophilaceae;g__GCA-2748155;s__</td>
  </tr>
  <tr>
    <td>bin.30</td>
    <td colspan="14">d__Bacteria;p__Chloroflexota;c__Anaerolineae;o__Anaerolineales;f__Anaerolineaceae;g__49-20;s__</td>
  </tr>
  <tr>
    <td>bin.31</td>
    <td colspan="14">d__Bacteria;p__Bacteroidota;c__Bacteroidia;o__Chitinophagales;f__Saprospiraceae;g__UBA3362;s__UBA3362&nbsp;&nbsp;&nbsp;sp016713905</td>
  </tr>
  <tr>
    <td>bin.32</td>
    <td colspan="14">d__Bacteria;p__Chloroflexota;c__Anaerolineae;o__Anaerolineales;f__Anaerolineaceae;g__JAGOFZ01;s__JAGOFZ01&nbsp;&nbsp;&nbsp;sp019136175</td>
  </tr>
  <tr>
    <td>bin.33</td>
    <td colspan="14">d__Bacteria;p__Actinobacteriota;c__Actinomycetia;o__Nanopelagicales;f__S36-B12;g__;s__</td>
  </tr>
  <tr>
    <td>bin.34</td>
    <td colspan="14">d__Bacteria;p__Proteobacteria;c__Alphaproteobacteria;o__Sphingomonadales;f__Sphingomonadaceae;g__Novosphingobium;s__</td>
  </tr>
  <tr>
    <td>bin.35</td>
    <td colspan="14">d__Bacteria;p__Chloroflexota;c__Anaerolineae;o__Anaerolineales;f__Anaerolineaceae;g__UBA4782;s__</td>
  </tr>
  <tr>
    <td>bin.36</td>
    <td colspan="14">d__Bacteria;p__Desulfobacterota;c__Desulfomonilia;o__UBA1062;f__UBA1062;g__UBA1062;s__</td>
  </tr>
  <tr>
    <td>bin.37</td>
    <td colspan="14">d__Bacteria;p__Proteobacteria;c__Alphaproteobacteria;o__Rhizobiales;f__Beijerinckiaceae;g__Rhodoblastus;s__</td>
  </tr>
  <tr>
    <td>bin.38</td>
    <td colspan="14">d__Bacteria;p__Acidobacteriota;c__Blastocatellia;o__UBA7656;f__JADIYM01;g__JADIYM01;s__</td>
  </tr>
  <tr>
    <td>bin.39</td>
    <td colspan="14">d__Bacteria;p__Chloroflexota;c__Anaerolineae;o__Anaerolineales;f__Anaerolineaceae;g__PNON01;s__</td>
  </tr>
  <tr>
    <td>bin.40</td>
    <td colspan="14">d__Bacteria;p__Firmicutes;c__Bacilli;o__Rubeoparvulales;f__Rubeoparvulaceae;g__Rubeoparvulum;s__Rubeoparvulum&nbsp;&nbsp;&nbsp;massiliense</td>
  </tr>
  <tr>
    <td>bin.41</td>
    <td colspan="14">d__Bacteria;p__Actinobacteriota;c__Acidimicrobiia;o__Acidimicrobiales;f__Microtrichaceae;g__AWTP1-35;s__AWTP1-35&nbsp;&nbsp;&nbsp;sp003962875</td>
  </tr>
  <tr>
    <td>bin.42</td>
    <td colspan="14">d__Bacteria;p__Bacteroidota;c__Bacteroidia;o__Bacteroidales;f__Tannerellaceae;g__Macellibacteroides;s__Macellibacteroides&nbsp;&nbsp;&nbsp;fermentans</td>
  </tr>
  <tr>
    <td>bin.43</td>
    <td colspan="14">d__Archaea;p__Methanobacteriota;c__Methanobacteria;o__Methanobacteriales;f__Methanobacteriaceae;g__UBA412;s__</td>
  </tr>
  <tr>
    <td>bin.44</td>
    <td colspan="14">d__Bacteria;p__Bacteroidota;c__Bacteroidia;o__AKYH767-A;f__2013-40CM-41-45;g__CAINVI01;s__CAINVI01&nbsp;&nbsp;&nbsp;sp016713765</td>
  </tr>
  <tr>
    <td>bin.45</td>
    <td colspan="14">d__Bacteria;p__Actinobacteriota;c__Actinomycetia;o__Propionibacteriales;f__Nocardioidaceae;g__Marmoricola;s__</td>
  </tr>
  <tr>
    <td>bin.46</td>
    <td colspan="14">d__Bacteria;p__Actinobacteriota;c__Actinomycetia;o__Nanopelagicales;f__UBA10799;g__UBA10799;s__</td>
  </tr>
  <tr>
    <td>bin.47</td>
    <td colspan="14">d__Bacteria;p__Desulfobacterota;c__Syntrophia;o__Syntrophales;f__UBA4778;g__UBA2192;s__</td>
  </tr>
  <tr>
    <td>bin.48</td>
    <td colspan="14">d__Bacteria;p__Chloroflexota;c__Anaerolineae;o__Anaerolineales;f__Anaerolineaceae;g__Bellilinea;s__</td>
  </tr>
  <tr>
    <td>bin.49</td>
    <td colspan="14">d__Bacteria;p__Bacteroidota;c__Bacteroidia;o__Bacteroidales;f__VadinHA17;g__SR-FBR-E99;s__</td>
  </tr>
  <tr>
    <td>bin.50</td>
    <td colspan="14">d__Bacteria;p__Armatimonadota;c__Fimbriimonadia;o__Fimbriimonadales;f__Fimbriimonadaceae;g__UphvI-Ar2;s__</td>
  </tr>
  <tr>
    <td>bin.51</td>
    <td colspan="14">d__Bacteria;p__Bacteroidota;c__Bacteroidia;o__Bacteroidales;f__VadinHA17;g__SR-FBR-E99;s__</td>
  </tr>
  <tr>
    <td>bin.52</td>
    <td colspan="14">d__Bacteria;p__Firmicutes_A;c__Clostridia;o__Peptostreptococcales;f__Natronincolaceae;g__Alkaliphilus_B;s__</td>
  </tr>
  <tr>
    <td>bin.53</td>
    <td colspan="14">d__Bacteria;p__Bacteroidota;c__Bacteroidia;o__Chitinophagales;f__Saprospiraceae;g__UBA3362;s__UBA3362&nbsp;&nbsp;&nbsp;sp016710235</td>
  </tr>
  <tr>
    <td>bin.54</td>
    <td colspan="14">d__Bacteria;p__Chloroflexota;c__Anaerolineae;o__SSC4;f__SSC4;g__JADJYJ01;s__</td>
  </tr>
  <tr>
    <td>bin.55</td>
    <td colspan="14">d__Bacteria;p__Bacteroidota;c__Ignavibacteria;o__SJA-28;f__B-1AR;g__JADJAH01;s__</td>
  </tr>
  <tr>
    <td>bin.56</td>
    <td colspan="14">d__Bacteria;p__Actinobacteriota;c__Coriobacteriia;o__WRKU01;f__JAENWW01;g__;s__</td>
  </tr>
  <tr>
    <td>bin.57</td>
    <td colspan="14">d__Bacteria;p__Proteobacteria;c__Gammaproteobacteria;o__Burkholderiales;f__Rhodocyclaceae;g__Azonexus;s__</td>
  </tr>
  <tr>
    <td>bin.58</td>
    <td colspan="14">d__Archaea;p__Halobacteriota;c__Methanomicrobia;o__Methanomicrobiales;f__Methanoregulaceae;g__UBA9949;s__UBA9949&nbsp;&nbsp;&nbsp;sp012516785</td>
  </tr>
  <tr>
    <td>bin.59</td>
    <td colspan="14">d__Bacteria;p__Bacteroidota;c__Bacteroidia;o__Chitinophagales;f__Saprospiraceae;g__OLB9;s__OLB9&nbsp;&nbsp;&nbsp;sp019136675</td>
  </tr>
  <tr>
    <td>bin.60</td>
    <td colspan="14">d__Bacteria;p__Bacteroidota;c__Bacteroidia;o__Bacteroidales;f__VadinHA17;g__LD21;s__</td>
  </tr>
  <tr>
    <td>bin.61</td>
    <td colspan="14">d__Bacteria;p__Actinobacteriota;c__Actinomycetia;o__Nanopelagicales;f__UBA10799;g__JADKAV01;s__</td>
  </tr>
  <tr>
    <td>bin.62</td>
    <td colspan="14">d__Bacteria;p__Chloroflexota;c__Chloroflexia;o__Thermomicrobiales;f__UBA6265;g__JACCXM01;s__</td>
  </tr>
  <tr>
    <td>bin.63</td>
    <td colspan="14">d__Archaea;p__Halobacteriota;c__Methanosarcinia;o__Methanotrichales;f__Methanotrichaceae;g__Methanothrix;s__Methanothrix&nbsp;&nbsp;&nbsp;soehngenii</td>
  </tr>
  <tr>
    <td>bin.64</td>
    <td colspan="14">d__Bacteria;p__Bacteroidota;c__Bacteroidia;o__Chitinophagales;f__Chitinophagaceae;g__Ferruginibacter;s__Ferruginibacter&nbsp;&nbsp;&nbsp;sp017303335</td>
  </tr>
  <tr>
    <td>bin.65</td>
    <td colspan="14">d__Bacteria;p__Firmicutes_A;c__Clostridia;o__Oscillospirales;f__Oscillospiraceae;g__Oscillibacter;s__Oscillibacter&nbsp;&nbsp;&nbsp;ruminantium</td>
  </tr>
  <tr>
    <td>bin.66</td>
    <td colspan="14">d__Bacteria;p__Bacteroidota;c__Ignavibacteria;o__SJA-28;f__B-1AR;g__JAEUSI01;s__</td>
  </tr>
  <tr>
    <td>bin.67</td>
    <td colspan="14">d__Bacteria;p__Bacteroidota;c__Bacteroidia;o__AKYH767-A;f__2013-40CM-41-45;g__JADKJP01;s__</td>
  </tr>
  <tr>
    <td>bin.68</td>
    <td colspan="14">d__Bacteria;p__Actinobacteriota;c__Acidimicrobiia;o__Acidimicrobiales;f__Microtrichaceae;g__IMCC26207;s__</td>
  </tr>
  <tr>
    <td>bin.69</td>
    <td colspan="14">d__Bacteria;p__Chloroflexota;c__Anaerolineae;o__CG2-30-64-16;f__CG2-30-64-16;g__MWBF01;s__</td>
  </tr>
  <tr>
    <td>bin.70</td>
    <td colspan="14">d__Bacteria;p__Firmicutes_A;c__Clostridia;o__Peptostreptococcales;f__Peptostreptococcaceae;g__Paraclostridium;s__Paraclostridium&nbsp;&nbsp;&nbsp;bifermentans</td>
  </tr>
  <tr>
    <td>bin.71</td>
    <td colspan="14">d__Bacteria;p__Chloroflexota;c__Anaerolineae;o__Promineofilales;f__Promineofilaceae;g__Promineofilum;s__</td>
  </tr>
  <tr>
    <td>bin.72</td>
    <td colspan="14">d__Bacteria;p__Proteobacteria;c__Gammaproteobacteria;o__Chromatiales;f__Chromatiaceae;g__Allochromatium;s__</td>
  </tr>
  <tr>
    <td>bin.73</td>
    <td colspan="14">d__Bacteria;p__Firmicutes_A;c__Clostridia;o__Clostridiales;f__Clostridiaceae;g__Clostridium_B;s__</td>
  </tr>
  <tr>
    <td>bin.74</td>
    <td colspan="14">d__Bacteria;p__Spirochaetota;c__Spirochaetia;o__Sphaerochaetales;f__Sphaerochaetaceae;g__Spiro-02;s__Spiro-02&nbsp;&nbsp;&nbsp;sp001604275</td>
  </tr>
  <tr>
    <td>bin.76</td>
    <td colspan="14">d__Bacteria;p__Chloroflexota;c__Anaerolineae;o__Anaerolineales;f__Anaerolineaceae;g__PNON01;s__</td>
  </tr>
  <tr>
    <td>bin.78</td>
    <td colspan="14">d__Bacteria;p__Planctomycetota;c__Planctomycetia;o__Pirellulales;f__Pirellulaceae;g__JAFLCP01;s__JAFLCP01&nbsp;&nbsp;&nbsp;sp017303505</td>
  </tr>
  <tr>
    <td>bin.79</td>
    <td colspan="14">d__Bacteria;p__Proteobacteria;c__Alphaproteobacteria;o__Sphingomonadales;f__Sphingomonadaceae;g__Sphingorhabdus_B;s__</td>
  </tr>
  <tr>
    <td>bin.80</td>
    <td colspan="14">d__Bacteria;p__Firmicutes_A;c__Clostridia;o__Tissierellales;f__Sporanaerobacteraceae;g__Anaerosalibacter;s__Anaerosalibacter&nbsp;&nbsp;&nbsp;bizertensis</td>
  </tr>
  <tr>
    <td>bin.81</td>
    <td colspan="14">d__Bacteria;p__Firmicutes_A;c__Clostridia;o__Christensenellales;f__CAG-138;g__Phil1;s__</td>
  </tr>
  <tr>
    <td>bin.82</td>
    <td colspan="14">d__Bacteria;p__Actinobacteriota;c__Thermoleophilia;o__Solirubrobacterales;f__Solirubrobacteraceae;g__F1-60-MAGs163;s__</td>
  </tr>
  <tr>
    <td>bin.83</td>
    <td colspan="14">d__Bacteria;p__Spirochaetota;c__Spirochaetia;o__Treponematales;f__UBA8932;g__JAEUJG01;s__</td>
  </tr>
  <tr>
    <td>bin.84</td>
    <td colspan="14">d__Bacteria;p__Chloroflexota;c__Anaerolineae;o__Anaerolineales;f__Anaerolineaceae;g__T78;s__</td>
  </tr>
  <tr>
    <td>bin.85</td>
    <td colspan="14">d__Bacteria;p__Desulfobacterota;c__Syntrophia;o__Syntrophales;f__Smithellaceae;g__Fen-1166;s__</td>
  </tr>
  <tr>
    <td>bin.86</td>
    <td colspan="14">d__Bacteria;p__Bacteroidota;c__Bacteroidia;o__Chitinophagales;f__Chitinophagaceae;g__JJ008;s__</td>
  </tr>
  <tr>
    <td>bin.87</td>
    <td colspan="14">d__Bacteria;p__Proteobacteria;c__Gammaproteobacteria;o__Burkholderiales;f__Burkholderiaceae;g__Hydrogenophaga;s__</td>
  </tr>
  <tr>
    <td>bin.88</td>
    <td colspan="14">d__Bacteria;p__Chloroflexota;c__Anaerolineae;o__Anaerolineales;f__Anaerolineaceae;g__;s__</td>
  </tr>
  <tr>
    <td>bin.89</td>
    <td colspan="14">d__Bacteria;p__Proteobacteria;c__Gammaproteobacteria;o__Burkholderiales;f__Burkholderiaceae;g__JAABQG01;s__</td>
  </tr>
  <tr>
    <td>bin.90</td>
    <td colspan="14">d__Bacteria;p__Acidobacteriota;c__Thermoanaerobaculia;o__UBA5066;f__UBA5066;g__UBA5066;s__</td>
  </tr>
  <tr>
    <td>bin.91</td>
    <td colspan="14">d__Bacteria;p__Bacteroidota;c__Bacteroidia;o__Bacteroidales;f__VadinHA17;g__SR-FBR-E99;s__SR-FBR-E99&nbsp;&nbsp;&nbsp;sp018262715</td>
  </tr>
  <tr>
    <td>bin.92</td>
    <td colspan="14">d__Bacteria;p__Proteobacteria;c__Gammaproteobacteria;o__Burkholderiales;f__Burkholderiaceae;g__Rubrivivax;s__</td>
  </tr>
  <tr>
    <td>bin.93</td>
    <td colspan="14">d__Bacteria;p__Synergistota;c__Synergistia;o__Synergistales;f__79-D21;g__79-D21;s__</td>
  </tr>
  <tr>
    <td>bin.94</td>
    <td colspan="14">d__Bacteria;p__Desulfobacterota_I;c__Desulfovibrionia;o__Desulfovibrionales;f__Desulfovibrionaceae;g__Desulfovibrio;s__Desulfovibrio&nbsp;&nbsp;&nbsp;desulfuricans</td>
  </tr>
  <tr>
    <td>bin.95</td>
    <td colspan="14">d__Bacteria;p__Firmicutes_A;c__Clostridia;o__Peptostreptococcales;f__Peptostreptococcaceae;g__Terrisporobacter;s__Terrisporobacter&nbsp;&nbsp;&nbsp;glycolicus_A</td>
  </tr>
  <tr>
    <td>bin.96</td>
    <td colspan="14">d__Bacteria;p__Bacteroidota;c__Bacteroidia;o__Chitinophagales;f__Saprospiraceae;g__UBA3362;s__UBA3362&nbsp;&nbsp;&nbsp;sp016710585</td>
  </tr>
  <tr>
    <td>bin.97</td>
    <td colspan="14">d__Bacteria;p__Bacteroidota;c__Bacteroidia;o__Bacteroidales;f__Prolixibacteraceae;g__;s__</td>
  </tr>
  <tr>
    <td>bin.98</td>
    <td colspan="14">d__Bacteria;p__Firmicutes_A;c__Clostridia;o__Peptostreptococcales;f__Anaerovoracaceae;g__UBA1422;s__</td>
  </tr>
  <tr>
    <td>bin.99</td>
    <td colspan="14">d__Bacteria;p__Bacteroidota;c__Bacteroidia;o__Chitinophagales;f__Saprospiraceae;g__JADJLQ01;s__</td>
  </tr>
  <tr>
    <td>bin.100</td>
    <td colspan="14">d__Bacteria;p__Bacteroidota;c__Bacteroidia;o__Chitinophagales;f__BACL12;g__;s__</td>
  </tr>
  <tr>
    <td>bin.101</td>
    <td colspan="14">d__Bacteria;p__Chloroflexota;c__Anaerolineae;o__Anaerolineales;f__Anaerolineaceae;g__UBA4081;s__</td>
  </tr>
  <tr>
    <td>bin.102</td>
    <td colspan="14">d__Bacteria;p__Bacteroidota;c__Bacteroidia;o__Flavobacteriales;f__PHOS-HE28;g__PHOS-HE28;s__PHOS-HE28&nbsp;&nbsp;&nbsp;sp016788405</td>
  </tr>
  <tr>
    <td>bin.103</td>
    <td colspan="14">d__Bacteria;p__Chloroflexota;c__Anaerolineae;o__Anaerolineales;f__Anaerolineaceae;g__UBA6170;s__</td>
  </tr>
  <tr>
    <td>bin.104</td>
    <td colspan="14">d__Bacteria;p__Actinobacteriota;c__Actinomycetia;o__Propionibacteriales;f__Propionibacteriaceae;g__Brooklawnia;s__</td>
  </tr>
  <tr>
    <td>bin.105</td>
    <td colspan="14">d__Archaea;p__Halobacteriota;c__Methanomicrobia;o__Methanomicrobiales;f__Methanoregulaceae;g__Methanoregula;s__</td>
  </tr>
  <tr>
    <td>bin.106</td>
    <td colspan="14">d__Bacteria;p__Planctomycetota;c__Planctomycetia;o__Pirellulales;f__Lacipirellulaceae;g__JABDGM01;s__</td>
  </tr>
</tbody>
</table>

#### Dataset S11 The glycoside hydrolases in each MAGs

Due to a large table size, please find Dataset S11 from MS file.

#### Dataset S12 The main functional genes in each MAGs

Due to a large table size, please find Dataset S12 from MS file.

## Metagenome-centric analysis workflow
All the scripts were developed for running on the iHPC (interactive High-Performance Computing) facility or PBS Pro managed High Performance Computing cluster at the University of Technology Sydney.

### Run metaWRAP qc to trim the reads
```shell
#!/bin/bash
#PBS -N QC
#PBS -l ncpus=24
#PBS -l mem=20gb
#PBS -l walltime=10:00:00

set -e

SCRATCH="/scratch/${USER}_${PBS_JOBID%.*}"
LOG_FILE="${HOME}/script_${PBS_JOBID%.*}.log"
mkdir -p "${SCRATCH}/RAW_READS"
mkdir -p "${SCRATCH}/READ_QC"

cd ${SCRATCH}/RAW_READS

# Creating an array of sample identifiers
SAMPLES=(L1EFJ120285 L1EFJ120286 L1EFJ120287 L1EFJ120288)

# Copying files to scratch directory
for SAMPLE in "${SAMPLES[@]}"; do
    echo "Copying $SAMPLE"
    if [[ ! -f "$HOME/${SAMPLE}_1.fastq" || ! -f "$HOME/${SAMPLE}_2.fastq" ]]; then
        echo "File for sample ${SAMPLE} not found!" | tee -a "$LOG_FILE"
        exit 1
    fi
    cp "$HOME/${SAMPLE}_1.fastq" "${SCRATCH}/RAW_READS"
    cp "$HOME/${SAMPLE}_2.fastq" "${SCRATCH}/RAW_READS"
done >> "$LOG_FILE" 2>&1

source $HOME/miniconda2/etc/profile.d/conda.sh
conda activate metawrap-env

cd ${SCRATCH}/

# Running quality control for each sample
metawrap read_qc -1 RAW_READS/L1EFJ120285_1.fastq -2 RAW_READS/L1EFJ120285_2.fastq -t 24 --skip-bmtagger -o READ_QC/L1EFJ120285 >> "$LOG_FILE" 2>&1
metawrap read_qc -1 RAW_READS/L1EFJ120286_1.fastq -2 RAW_READS/L1EFJ120286_2.fastq -t 24 --skip-bmtagger -o READ_QC/L1EFJ120286 >> "$LOG_FILE" 2>&1
metawrap read_qc -1 RAW_READS/L1EFJ120287_1.fastq -2 RAW_READS/L1EFJ120287_2.fastq -t 24 --skip-bmtagger -o READ_QC/L1EFJ120287 >> "$LOG_FILE" 2>&1
metawrap read_qc -1 RAW_READS/L1EFJ120288_1.fastq -2 RAW_READS/L1EFJ120288_2.fastq -t 24 --skip-bmtagger -o READ_QC/L1EFJ120288 >> "$LOG_FILE" 2>&1

conda deactivate

# Moving results and cleaning up
if [[ -d "${SCRATCH}/READ_QC" ]]; then
    if [[ -d "$HOME/READ_QC" ]]; then
        echo "Target directory already exists, merging contents..." | tee -a "$LOG_FILE"
    fi
    mv "${SCRATCH}/READ_QC" "$HOME/READ_QC"
fi

rm ${SCRATCH}/
cd ${PBS_O_WORKDIR}

if [[ -d "${SCRATCH}" ]]; then
    rmdir "${SCRATCH}" || { echo "Directory not empty, unable to remove" >> "$LOG_FILE"; exit 1; }
fi
```

### Assembling the metagenomes with the metaWRAP-Assembly module
```shell
#!/bin/bash
#PBS -N Assembly
#PBS -l ncpus=50
#PBS -l mem=500gb
#PBS -l walltime=200:00:00

set -e

SCRATCH="/scratch/${USER}_${PBS_JOBID%.*}"
LOG_FILE="${HOME}/script_${PBS_JOBID%.*}.log"
mkdir -p "$SCRATCH"

# Creating an array of sample identifiers
SAMPLES=(L1EFJ120285 L1EFJ120286 L1EFJ120287 L1EFJ120288)

# Start timestamp
echo "Script started at $(date)" | tee -a "$LOG_FILE"

# Copying files to scratch directory
for SAMPLE in "${SAMPLES[@]}"; do
    echo "Copying $SAMPLE"
    if [[ ! -f "$HOME/CLEAN_READS/${SAMPLE}_1.fastq" || ! -f "$HOME/CLEAN_READS/${SAMPLE}_2.fastq" ]]; then
        echo "File for sample ${SAMPLE} not found!" | tee -a "$LOG_FILE"
        exit 1
    fi
    cp "$HOME/CLEAN_READS/${SAMPLE}_1.fastq" "${SCRATCH}/"
    cp "$HOME/CLEAN_READS/${SAMPLE}_2.fastq" "${SCRATCH}/"
done >> "$LOG_FILE" 2>&1

source $HOME/miniconda2/etc/profile.d/conda.sh
conda activate metawrap-env

#Concatinate the reads from all the samples:

cd $SCRATCH

cat L*_1.fastq > ALL_READS_1.fastq
cat L*_2.fastq > ALL_READS_2.fastq

# Assemble the reads

echo "Assemble started at $(date)" | tee -a "$LOG_FILE"
metawrap assembly -1 ALL_READS_1.fastq -2 ALL_READS_2.fastq -m 500 -t 50 --metaspades -o ASSEMBLY >> "$LOG_FILE" 2>&1
echo "Assemble ended at $(date)" | tee -a "$LOG_FILE"

conda deactivate

# Moving results and cleaning up
if [[ -d "${SCRATCH}/ASSEMBLY" ]]; then
    if [[ -d "$HOME/ASSEMBLY" ]]; then
        echo "Target directory already exists, merging contents..." | tee -a "$LOG_FILE"
    fi
    rsync -a "${SCRATCH}/ASSEMBLY" "$HOME/ASSEMBLY"
else
    echo "ASSEMBLY directory not found! Process may have failed." | tee -a "$LOG_FILE"
    exit 1
fi

# End timestamp
echo "Script ended at $(date)" | tee -a "$LOG_FILE"

#
rm ${SCRATCH}/*.raw.fastq
cd ${PBS_O_WORKDIR}

if [[ -d "${SCRATCH}" ]]; then
    rmdir "${SCRATCH}" || { echo "Directory not empty, unable to remove" >> "$LOG_FILE"; exit 1; }
fi
```

### Bin the co-assembly with CONCOCT
```shell
#!/bin/bash
#PBS -N Concoct
#PBS -l ncpus=50
#PBS -l mem=500gb
#PBS -l walltime=200:00:00

set -e
trap 'echo "An error occurred at line $LINENO. Exiting..." | tee -a "$LOG_FILE"; exit 1' ERR

SCRATCH="/scratch/${USER}_${PBS_JOBID%.*}"
LOG_FILE="${HOME}/script_${PBS_JOBID%.*}.log"
mkdir -p "$SCRATCH"/CLEAN_READS
mkdir -p "$SCRATCH"/INITIAL_BINNING

# Creating an array of sample identifiers
SAMPLES=(L1EFJ120285 L1EFJ120286 L1EFJ120287 L1EFJ120288)

# Start timestamp
echo "Script started at $(date)" | tee -a "$LOG_FILE"

# Check and copy final_assembly.fasta outside of loop to avoid redundancy
if [[ ! -f "$HOME/ASSEMBLY/ASSEMBLY/final_assembly.fasta" ]]; then
    echo "final_assembly.fasta not found!" | tee -a "$LOG_FILE"
    exit 1
fi
cp "$HOME/ASSEMBLY/ASSEMBLY/final_assembly.fasta" "${SCRATCH}/"

# Copying files to scratch directory
for SAMPLE in "${SAMPLES[@]}"; do
    echo "Copying $SAMPLE"
    if [[ ! -f "$HOME/CLEAN_READS/${SAMPLE}_1.fastq" || ! -f "$HOME/CLEAN_READS/${SAMPLE}_2.fastq" ]]; then
        echo "File for sample ${SAMPLE} not found!" | tee -a "$LOG_FILE"
        exit 1
    fi
    cp "$HOME/CLEAN_READS/${SAMPLE}_1.fastq" "${SCRATCH}/CLEAN_READS/"
    cp "$HOME/CLEAN_READS/${SAMPLE}_2.fastq" "${SCRATCH}/CLEAN_READS/"
done >> "$LOG_FILE" 2>&1

source $HOME/miniconda2/etc/profile.d/conda.sh
conda activate metawrap-env

# Concatenate the reads from all the samples
cd $SCRATCH

# Bin reads by maxbin2
echo "Assemble started at $(date)" | tee -a "$LOG_FILE"
metawrap binning -o INITIAL_BINNING -t 50 -m 500 -a final_assembly.fasta --concoct CLEAN_READS/L1EGH120058*.fastq >> "$LOG_FILE" 2>&1
echo "Assemble ended at $(date)" | tee -a "$LOG_FILE"

conda deactivate

# Moving results and cleaning up
if [[ -d "${SCRATCH}/INITIAL_BINNING" ]]; then
    if [[ -d "$HOME/INITIAL_BINNING" ]]; then
        echo "Target directory already exists, merging contents with backup..." | tee -a "$LOG_FILE"
    fi
    rsync -a --backup "${SCRATCH}/INITIAL_BINNING" "$HOME/INITIAL_BINNING"
else
    echo "INITIAL_BINNING directory not found! Process may have failed." | tee -a "$LOG_FILE"
    exit 1
fi

# End timestamp
echo "Script ended at $(date)" | tee -a "$LOG_FILE"
```

### Bin the co-assembly with MaxBin
```shell
#!/bin/bash
#PBS -N maxbin2
#PBS -l ncpus=50
#PBS -l mem=500gb
#PBS -l walltime=200:00:00

set -e
trap 'echo "An error occurred at line $LINENO. Exiting..." | tee -a "$LOG_FILE"; exit 1' ERR

SCRATCH="/scratch/${USER}_${PBS_JOBID%.*}"
LOG_FILE="${HOME}/script_${PBS_JOBID%.*}.log"
mkdir -p "$SCRATCH"/CLEAN_READS
mkdir -p "$SCRATCH"/INITIAL_BINNING

# Creating an array of sample identifiers
SAMPLES=(L1EFJ120285 L1EFJ120286 L1EFJ120287 L1EFJ120288)

# Start timestamp
echo "Script started at $(date)" | tee -a "$LOG_FILE"

# Check and copy final_assembly.fasta outside of loop to avoid redundancy
if [[ ! -f "$HOME/ASSEMBLY/ASSEMBLY/final_assembly.fasta" ]]; then
    echo "final_assembly.fasta not found!" | tee -a "$LOG_FILE"
    exit 1
fi
cp "$HOME/ASSEMBLY/ASSEMBLY/final_assembly.fasta" "${SCRATCH}/"

# Copying files to scratch directory
for SAMPLE in "${SAMPLES[@]}"; do
    echo "Copying $SAMPLE"
    if [[ ! -f "$HOME/CLEAN_READS/${SAMPLE}_1.fastq" || ! -f "$HOME/CLEAN_READS/${SAMPLE}_2.fastq" ]]; then
        echo "File for sample ${SAMPLE} not found!" | tee -a "$LOG_FILE"
        exit 1
    fi
    cp "$HOME/CLEAN_READS/${SAMPLE}_1.fastq" "${SCRATCH}/CLEAN_READS/"
    cp "$HOME/CLEAN_READS/${SAMPLE}_2.fastq" "${SCRATCH}/CLEAN_READS/"
done >> "$LOG_FILE" 2>&1

source $HOME/miniconda2/etc/profile.d/conda.sh
conda activate metawrap-env

# Concatenate the reads from all the samples
cd $SCRATCH

# Bin reads by maxbin2
echo "Assemble started at $(date)" | tee -a "$LOG_FILE"
metawrap binning -o INITIAL_BINNING -t 50 -m 500 -a final_assembly.fasta --maxbin2 CLEAN_READS/L1EGH120058*.fastq >> "$LOG_FILE" 2>&1
echo "Assemble ended at $(date)" | tee -a "$LOG_FILE"

conda deactivate

# Moving results and cleaning up
if [[ -d "${SCRATCH}/INITIAL_BINNING" ]]; then
    if [[ -d "$HOME/INITIAL_BINNING" ]]; then
        echo "Target directory already exists, merging contents with backup..." | tee -a "$LOG_FILE"
    fi
    rsync -a --backup "${SCRATCH}/INITIAL_BINNING" "$HOME/INITIAL_BINNING"
else
    echo "INITIAL_BINNING directory not found! Process may have failed." | tee -a "$LOG_FILE"
    exit 1
fi

# End timestamp
echo "Script ended at $(date)" | tee -a "$LOG_FILE"
```

### Bin the co-assembly with metaBAT
```shell
#!/bin/bash
#PBS -N metabat2
#PBS -l ncpus=50
#PBS -l mem=500gb
#PBS -l walltime=200:00:00

set -e
trap 'echo "An error occurred at line $LINENO. Exiting..." | tee -a "$LOG_FILE"; exit 1' ERR

SCRATCH="/scratch/${USER}_${PBS_JOBID%.*}"
LOG_FILE="${HOME}/script_${PBS_JOBID%.*}.log"
mkdir -p "$SCRATCH"/CLEAN_READS
mkdir -p "$SCRATCH"/INITIAL_BINNING

# Creating an array of sample identifiers
SAMPLES=(L1EFJ120285 L1EFJ120286 L1EFJ120287 L1EFJ120288)

# Start timestamp
echo "Script started at $(date)" | tee -a "$LOG_FILE"

# Check and copy final_assembly.fasta outside of loop to avoid redundancy
if [[ ! -f "$HOME/ASSEMBLY/ASSEMBLY/final_assembly.fasta" ]]; then
    echo "final_assembly.fasta not found!" | tee -a "$LOG_FILE"
    exit 1
fi
cp "$HOME/ASSEMBLY/ASSEMBLY/final_assembly.fasta" "${SCRATCH}/"

# Copying files to scratch directory
for SAMPLE in "${SAMPLES[@]}"; do
    echo "Copying $SAMPLE"
    if [[ ! -f "$HOME/CLEAN_READS/${SAMPLE}_1.fastq" || ! -f "$HOME/CLEAN_READS/${SAMPLE}_2.fastq" ]]; then
        echo "File for sample ${SAMPLE} not found!" | tee -a "$LOG_FILE"
        exit 1
    fi
    cp "$HOME/CLEAN_READS/${SAMPLE}_1.fastq" "${SCRATCH}/CLEAN_READS/"
    cp "$HOME/CLEAN_READS/${SAMPLE}_2.fastq" "${SCRATCH}/CLEAN_READS/"
done >> "$LOG_FILE" 2>&1

source $HOME/miniconda2/etc/profile.d/conda.sh
conda activate metawrap-env

# Concatenate the reads from all the samples
cd $SCRATCH

# Bin reads by maxbin2
echo "Assemble started at $(date)" | tee -a "$LOG_FILE"
metawrap binning -o INITIAL_BINNING -t 50 -m 500 -a final_assembly.fasta --metabat2 CLEAN_READS/L1EGH120058*.fastq >> "$LOG_FILE" 2>&1
echo "Assemble ended at $(date)" | tee -a "$LOG_FILE"

conda deactivate

# Moving results and cleaning up
if [[ -d "${SCRATCH}/INITIAL_BINNING" ]]; then
    if [[ -d "$HOME/INITIAL_BINNING" ]]; then
        echo "Target directory already exists, merging contents with backup..." | tee -a "$LOG_FILE"
    fi
    rsync -a --backup "${SCRATCH}/INITIAL_BINNING" "$HOME/INITIAL_BINNING"
else
    echo "INITIAL_BINNING directory not found! Process may have failed." | tee -a "$LOG_FILE"
    exit 1
fi

# End timestamp
echo "Script ended at $(date)" | tee -a "$LOG_FILE"
```

### Consolidate bin sets with the refinement module
```shell
#!/bin/bash
#PBS -N BIN_REFINEMENT
#PBS -l ncpus=54
#PBS -l mem=500gb
#PBS -l walltime=100:00:00

set -e
trap 'echo "An error occurred at line $LINENO. Exiting..." | tee -a "$LOG_FILE"; exit 1' ERR

SCRATCH="/scratch/${USER}_${PBS_JOBID%.*}"
LOG_FILE="${HOME}/script_${PBS_JOBID%.*}.log"
mkdir -p "$SCRATCH"/BIN_REFINEMENT
mkdir -p "$SCRATCH"/INITIAL_BINNING

# Start timestamp
echo "Script started at $(date)" | tee -a "$LOG_FILE"

# Check and copy final_assembly.fasta outside of loop to avoid redundancy

cp -r "$HOME/INITIAL_BINNING/INITIAL_BINNING" "${SCRATCH}/"

source $HOME/miniconda2/etc/profile.d/conda.sh
conda activate metawrap-env

# Concatenate the reads from all the samples
cd $SCRATCH

# Bin reads by maxbin2
echo "refinement started at $(date)" | tee -a "$LOG_FILE"
metawrap bin_refinement -o BIN_REFINEMENT -t 54 -m 500 -A INITIAL_BINNING/metabat2_bins/ -B INITIAL_BINNING/maxbin2_bins/ -C INITIAL_BINNING/concoct_bins/ -c 50 -x 10 >> "$LOG_FILE" 2>&1
echo "refinement ended at $(date)" | tee -a "$LOG_FILE"

conda deactivate

# Moving results and cleaning up
if [[ -d "${SCRATCH}/BIN_REFINEMENT" ]]; then
    if [[ -d "$HOME/BIN_REFINEMENT" ]]; then
        echo "Target directory already exists, merging contents with backup..." | tee -a "$LOG_FILE"
    fi
    rsync -a --backup "${SCRATCH}/BIN_REFINEMENT" "$HOME"
else
    echo "BIN_REFINEMENT directory not found! Process may have failed." | tee -a "$LOG_FILE"
    exit 1
fi

# End timestamp
echo "Script ended at $(date)" | tee -a "$LOG_FILE"
```

### Calculate the abundance of bins across the samples
```shell
#!/bin/bash
#PBS -N quant
#PBS -l ncpus=30
#PBS -l mem=100gb
#PBS -l walltime=100:00:00


set -e

SCRATCH="/scratch/${USER}_${PBS_JOBID%.*}"
LOG_FILE="${HOME}/script_${PBS_JOBID%.*}.log"
mkdir -p "${SCRATCH}/CLEAN_READS"

cd ${SCRATCH}/CLEAN_READS

# Creating an array of sample identifiers
SAMPLES=(L1EFJ120285 L1EFJ120286 L1EFJ120287 L1EFJ120288)

# Copying files to scratch directory
for SAMPLE in "${SAMPLES[@]}"; do
    echo "Copying $SAMPLE"
    if [[ ! -f "$HOME/CLEAN_READS/${SAMPLE}_1.fastq" || ! -f "$HOME/CLEAN_READS/${SAMPLE}_2.fastq" ]]; then
        echo "File for sample ${SAMPLE} not found!" | tee -a "$LOG_FILE"
        exit 1
    fi
      cp "$HOME/CLEAN_READS/${SAMPLE}_1.fastq" "${SCRATCH}/CLEAN_READS"
    cp "$HOME/CLEAN_READS/${SAMPLE}_2.fastq" "${SCRATCH}/CLEAN_READS"
done >> "$LOG_FILE" 2>&1

echo "Copying ASSEMBLY file"
cp -r "$HOME/ASSEMBLY/ASSEMBLY" "${SCRATCH}"

echo "Copying BIN_REFINEMENT file"
cp -r "$HOME/BIN_REFINEMENT" "${SCRATCH}"


source $HOME/miniconda2/etc/profile.d/conda.sh
conda activate metawrap-env

cd ${SCRATCH}/

# Running quality control for each sample
metawrap quant_bins -t 30 -b BIN_REFINEMENT/metawrap_50_10_bins -o QUANT_BINS -a ASSEMBLY/final_assembly.fasta CLEAN_READS/L*.fastq >> "$LOG_FILE" 2>&1

conda deactivate

# Moving results and cleaning up
if [[ -d "${SCRATCH}/QUANT_BINS" ]]; then
    if [[ -d "$HOME/QUANT_BINS" ]]; then
        echo "Target directory already exists, merging contents..." | tee -a "$LOG_FILE"
    fi
    mv "${SCRATCH}/QUANT_BINS" "$HOME"
fi

rm ${SCRATCH}/
cd ${PBS_O_WORKDIR}

if [[ -d "${SCRATCH}" ]]; then
    rmdir "${SCRATCH}" || { echo "Directory not empty, unable to remove" >> "$LOG_FILE"; exit 1; }
fi
```

### Re-assemble the consolidated bin set with the Reassemble module
```shell
#!/bin/bash
#PBS -N Reassemble
#PBS -l ncpus=50
#PBS -l mem=500gb
#PBS -l walltime=200:00:00


set -e

SCRATCH="/scratch/${USER}_${PBS_JOBID%.*}"
LOG_FILE="${HOME}/script_${PBS_JOBID%.*}.log"
mkdir -p "${SCRATCH}/CLEAN_READS"
mkdir -p "${SCRATCH}/BIN_REFINEMENT"

cd ${SCRATCH}/CLEAN_READS

# Creating an array of sample identifiers
SAMPLES=(L1EFJ120285 L1EFJ120286 L1EFJ120287 L1EFJ120288)

# Start timestamp
echo "Script started at $(date)" | tee -a "$LOG_FILE"

# Copying files to scratch directory
for SAMPLE in "${SAMPLES[@]}"; do
    echo "Copying $SAMPLE"
    if [[ ! -f "$HOME/CLEAN_READS/${SAMPLE}_1.fastq" || ! -f "$HOME/CLEAN_READS/${SAMPLE}_2.fastq" ]]; then
        echo "File for sample ${SAMPLE} not found!" | tee -a "$LOG_FILE"
        exit 1
    fi
    cp "$HOME/CLEAN_READS/${SAMPLE}_1.fastq" "${SCRATCH}/"
    cp "$HOME/CLEAN_READS/${SAMPLE}_2.fastq" "${SCRATCH}/"
done >> "$LOG_FILE" 2>&1

source $HOME/miniconda2/etc/profile.d/conda.sh
conda activate metawrap-env

#Concatinate the reads from all the samples:

cd ${SCRATCH}/

cat L*_1.fastq > ALL_READS_1.fastq
cat L*_2.fastq > ALL_READS_2.fastq

echo "Copying BIN_REFINEMENT file"
cp -r "$HOME/BIN_REFINEMENT" "${SCRATCH}"


source $HOME/miniconda2/etc/profile.d/conda.sh
conda activate metawrap-env

cd ${SCRATCH}/

# Running quality control for each sample
metawrap reassemble_bins -o BIN_REASSEMBLY -1 ALL_READS_1.fastq -2 ALL_READS_2.fastq -t 50 -m 500 -c 50 -x 10 -b BIN_REFINEMENT/metawrap_50_10_bins  >> "$LOG_FILE" 2>&1

conda deactivate

# Moving results and cleaning up
if [[ -d "${SCRATCH}/BIN_REASSEMBLY" ]]; then
    if [[ -d "$HOME/BIN_REASSEMBLY" ]]; then
        echo "Target directory already exists, merging contents..." | tee -a "$LOG_FILE"
    fi
    mv "${SCRATCH}/BIN_REASSEMBLY" "$HOME"
    mv "${SCRATCH}/ALL_READS_1.fastq" "$HOME"
    mv "${SCRATCH}/ALL_READS_2.fastq" "$HOME"
fi

rm ${SCRATCH}/
cd ${PBS_O_WORKDIR}

if [[ -d "${SCRATCH}" ]]; then
    rmdir "${SCRATCH}" || { echo "Directory not empty, unable to remove" >> "$LOG_FILE"; exit 1; }
fi
```

### GTDB-tk
```shell
#!/bin/bash

#PBS -N gtdbtk
#PBS -l ncpus=50
#PBS -l mem=1000gb
#PBS -l walltime=10:00:00

# Load the conda environment
source $HOME/miniconda2/etc/profile.d/conda.sh
conda activate gtdbtk

# Set input and output directories
genome_dir="$HOME/BIN_REASSEMBLY/reassembled_bins"
out_dir="$HOME/gtdbtk"
log_file="gtdbtk.log"

# Run gtdbtk classify_wf
gtdbtk classify_wf --genome_dir "$genome_dir" --out_dir "$out_dir" --extension fa --cpus 50 --mash_db "$HOME/mash" >> "$log_file" 2>&1

# Deactivate the conda environment
conda deactivate
```

### iqtree
```shell
conda activate gtdbtk
iqtree -s gtdbtk.bac120.user_msa.fasta -m MFP -nt 40 -bb 1000 -redo -mredo
conda deactivate gtdbtk
```

### prokka
```shell
#!/bin/bash

#PBS -N prokka
#PBS -l ncpus=50
#PBS -l mem=1000gb
#PBS -l walltime=10:00:00

# Define variables
CONDA_PROFILE="$HOME/miniconda2/etc/profile.d/conda.sh"
WORK_DIR="$HOME/BIN_REASSEMBLY/reassembled_bins"
OUTPUT_DIR="Bin_all/Bin_prokka"

# Activate Miniconda environment
source "$CONDA_PROFILE"

# Change to the working directory
cd "$WORK_DIR" || exit 1

# Loop through .fa files
for i in *.fa; do
    file="${i##*/}"
    base="${file%.fa}"
    thread=8  # Define the number of CPU threads
    prokka "$i" --outdir "$OUTPUT_DIR/$base" --prefix "$base" --metagenome --cpus "$thread" --kingdom Bacteria
    echo -e "\033[32m$i prokka Done...\033[0m"
done

# Create output directories
mkdir -p "$OUTPUT_DIR/prokka_out_table"
mkdir -p "$OUTPUT_DIR/prokka_map"
mkdir -p "$OUTPUT_DIR/prokka_map_table"

# Move prokka output files
echo -e "\033[32mMoving prokka files...\033[0m"
for i in "$OUTPUT_DIR/bin"*; do
    fold="${i##*/}"
    if [ -f "$i/$fold.tsv" ]; then
        mv "$i/$fold.tsv" "$OUTPUT_DIR/prokka_out_table"  # Move prokka .tsv files
    fi
    if [ -f "$i/$fold.gff" ]; then
        mv "$i/$fold.gff" "$OUTPUT_DIR/prokka_map"  # Move prokka .gff files
    fi
done

# Extract relevant information from prokka gff files
echo -e "\033[32mExtracting prokka gff information...\033[0m"
for i in "$OUTPUT_DIR/prokka_map/bin.*.gff"; do
    base="${i##*/}"
    if [ -f "$i" ]; then
        grep '^k' "$i" > "$OUTPUT_DIR/prokka_map_table/${base}.txt"
        sed -i '1 iseqid\tsource\ttype\tstart\tend\tscore\tstrand\tphase\tattributes' "$OUTPUT_DIR/prokka_map_table/${base}.txt"
    fi
done

# Run R script for prokka file count
echo -e "\033[32mRunning R script for prokka file count...\033[0m"
R CMD BATCH --args $HOME/prokka_fun_count.R
```

### Eggnog-mapper
```shell
#!/bin/bash

#PBS -N eggnog_mapper
#PBS -l ncpus=56
#PBS -l mem=100gb
#PBS -l walltime=100:00:00

source $HOME/miniconda2/etc/profile.d/conda.sh
conda activate eggnog-mapper

for id in $HOME/bin_prokka/*.output;
do 
	file=$(basename $id);
	sample=$(file%.*);
	sample=$(sample%.*);
  cd $HOME/eggnog_output	
	mkdir $sample  
  cd $(echo $id); 
  echo currently is under $sample > $HOME/log2.txt
	~/miniconda2/envs/eggnog-mapper/bin/emapper.py --cpu 56 -o $sample --output_dir ~/eggnog_output/$sample/ -m diamond --override -i PROKKA_$sample.faa --evalue 0.001 --score 60 --pident 40 --query_cover 20 --subject_cover 20 --itype proteins --tax_scope auto --target_orthologs all --go_evidence non-electronic --pfam_realign none --report_orthologs --decorate_gff yes --excel 
	echo $sample has been done > $HOME/log2.txt
	cd $HOME; 
done
conda deactivate
```

### dbCAN2
```shell
#!/bin/bash

#PBS -N Cazyme
#PBS -l ncpus=56
#PBS -l mem=100gb
#PBS -l walltime=100:00:00

# go to the directory in which locates the dbCAN database
cd /shared/homes/13949072/biodatabase/dbCAN/

# format the database for hmmscan
hmmpress dbCAN.txt

source ~/miniconda2/etc/profile.d/conda.sh
conda activate dbcan

for id in /shared/homes/13949072/binning/bin_prokka/*.output
do

# go to the folder that contains amino acid sequences of genomes
	cd $id
# do hmmscan;
	find . -name "*.faa" | while read line ; do hmmscan --domtblout ${line}.out.dm /shared/homes/13949072/biodatabase/dbCAN/dbCAN.txt $line > ${line}.out; done
# parse the hmmscan results
	find . -name "*.out.dm"|while read line ; do python ~/hmmscan-parser.py $line > ${line}.ps; done

# move the parsed hmmscan results to this directory, in my case, the directory name is 'dbCAN_annotation_results'
	mv *.out.dm.ps ~/results/
  mv *.dm ~/others/
  mv *.out ~/others/

conda deactivate
```


## Copyright
Xingdong Shi 

xingdong.shi@student.uts.edu.au

PhD candidate at

The Centre for Technology in Water and Wastewater

School of Environmental Engineering, University of Technology Sydney

This repository is part of "Biosynthesis mechanisms of medium-chain carboxylic acids and alcohols in anaerobic microalgae fermentation regulated by pH conditions". Please cite the following research if this repository is helpful in your research.

Shi, X., Wei, W., Lan, W., et al. Biosynthesis mechanisms of medium-chain carboxylic acids and alcohols in anaerobic microalgae fermentation regulated by pH conditions. Applied and Environmental Microbiology.


