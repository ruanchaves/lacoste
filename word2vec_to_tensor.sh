VECTOR_PATH="/home/ruan/w2v_bd"
counter=0
for f in $(ls $VECTOR_PATH); do
    echo $f
    counter=$((counter+1))
    python2.7 -m gensim.scripts.word2vec2tensor -i $VECTOR_PATH/$f -o $VECTOR_PATH/tf_month_$counter
done
