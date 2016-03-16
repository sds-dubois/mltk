ID0=63

# Gam package
export CLASSPATH=/home/sdubois/mltk/bin:$CLASSPATH

for idx in {0..5}
do

ID=${ID0}${idx}
echo "GA2M${idx} - model ${ID}"
# test
java mltk.predictor.evaluation.Evaluator -e a -m ga2ms/ga2m.model${ID} -o curves/ga2m${ID}

# generate curves
Rscript ../../save_curves.R curves/ga2m${ID} curves/ga2m${ID}

done
