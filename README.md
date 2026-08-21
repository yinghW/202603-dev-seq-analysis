# 202512-dev-seq-analyses
code and data for 2025 mnemiopsis morphometric project

All images are organized and named as:

Experiment/Treatment group (usually temperature)/Biological replicate(within the experiment)/Individual number/Date-plane-takes.tif (or ome.tif)

Example:
``` /Volumes/Yinghui/202510-dev-tif/lm/18C/A/1/OA/1022-OA-2.csv ```

# Animal Source and Culture
Wild-caught Mnemiopsis leidyi (Florida population) were purchased from Gulf Specimens Marine Lab and maintained in the laboratory in Instant Ocean brand artificial sea water (ASW) at 26 ppt. Animals used for this study were from embryos produced in the first day after collection, during shipping, in spawning groups of 8-12 individuals. 

Unhatched embryos were collected upon arrival and cultured as in [Ramon, Edgar, Mitchell, Martindale]. Briefly, embryos and hatchlings were incubated individually in 0.22 μm filtered ASW, changed daily, in 12-well plates from hatching, 6-well plates after they reached 1 mm in diameter, and in 100 mL beakers after they reached 3 mm in diameter. They were fed daily ad libitum with Brachionus plicatilis (L-type) after hatching.

# Imaging and Measurements
Time series images of each individual were collected over 4-5 weeks using a Nikon Digital Sight 10 camera mounted on a Nikon SMZ 25 using NIS-Elements software. Animals smaller than 3 mm in diameter were gently mounted on glass slides without compression. Larger animals were imaged in a 30 mL glass evaporating dish. The animals were returned to 26 ppt ASW immediately after imaging. 

To quantitatively describe M. leidyi post-embryonic development, we applied 28 digitized landmarks in Fiji (2.16.0) [CITE: Schindelin et al] in 3 different planes. Landmark points are defined in Supplemental Table XX. Exported measurements are available in Supplemental File XX.

One side of each image was measured. The left side of the image was used by default, and the image was flipped in FIJI if points to be measured were out of focus on the original left side. Since "left" and "right" left and right of the image are arbitrary with respect to the animal's body axis (ctenophores lack the left-right body axis found in bilaterians), they should be expected to alternate randomly from day to day for a given individual as animals were free-swimming except for during measurements.

# Data analysis
Measurements were analyzed in R(4.6.1) . Analysis can be replicated using the provided R Markdown file (Supplemental File XX). package geomorph: manipulating landmark data. Package mclust: Gaussian Mixture Model; Package segmented: piecewise linear regression; Package lmer: linear mixture model; 

While conducted the clustering to identify potential staging, all lobe and auricle measurements were removed.

## Morphological traits measured

Continuous measurements:
- Body width (PABW) - the widest part of the body, excluding lobes, in the pharyngeal axial plane
- Auricle length (ALO) - the length of the auricle starting from the aboral base side of the 
- Auricle width (AW) - the oral end of the base of the auricle to the oral most ctene plate on the adesophageal ctene row
- Position of widest point of the animal (WAE) - the distance of the widest part of the animal to the oral end of the adesophaegal ctene row
- Adtentacular ctene row length (ATCL) - the length of the oral to aboral end of the adtentacular ctene row
- Pharynx length (PL) - the length from the middle point of mouth opening to the aboral end of the ciliary mill (the aboral end of the pharynx)
- Body length (BL) - the length from the middle of mouth opening to the statocysts
- Tentacular canal length (TCL)  - the length from the connecting point with tentacular bulb to the connecting point with the infundibulum
- Lobe-to-mouth length (LTM) - the length from the tip of the lobe to the middle point of mouth opening 
- Lobe length (LL) - the length from the tip of the lobe to where the gastrovascular canal under the lobe meets with the paragastric canals.
- Tentacular plane body width (TABW) - the widest part of the body of the animal excluding lobe on the tentacular axial plane
- Adesophageal ctene row length (AECL) - the length of the adesophageal ctene row
- Tentacule bulb length (TBL) - the length of tentacule bulb on the tentacular axis
- Pharynx width (PW) - the width of the pharynx on the pharyngeal axis
- Adtentacular adradial canal length (ATAC) - the length of adradial canal from the last adtentacular ctene plates to the junction on the radial canal
- Adesophageal adradial canal length (AEAC) - the length of adradial canal from the last adesophageal ctene plates to the junction on the radial canal


## Dataset description
The M. leidyi’s time series tracking was done in September and October 2025 and consists of 3 biological replicates (2 biological replicates in October (202510-A, 202510-B), 1 in September (202509-A). Time series of 26 animals and a total of 453 data points (1359 images) were captured. 428 (1284 images) of them were used in constructing Gaussian mixture models, excluding 1 individual that was injured and developed abnormally during the time series and missing measurements, and analyzed. The images are taken every 24-48 hours (mostly every 48 hours). The duration of the time series are around 42 days (for 202509 experiment) and 34 days (for 202510 experiments).

# Reference
- Schindelin, J., Arganda-Carreras, I., Frise, E., Kaynig, V., Longair, M., Pietzsch, T., … Cardona, A. (2012). Fiji: an open-source platform for biological-image analysis. Nature Methods, 9(7), 676–682. doi:10.1038/nmeth.2019

