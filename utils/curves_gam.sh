ID0=6

# Gam package
export CLASSPATH=/home/sdubois/mltk/bin:$CLASSPATH

for idx in {0..6}
do

ID=${ID0}${idx}
echo "GAM${idx} - model ${ID}"
# test
java mltk.predictor.evaluation.Evaluator -e a -m gams/gam.model${ID} -o curves/gam${ID}

# generate curves
Rscript ../../save_curves.R curves/gam${ID} curves/gam${ID}

done
