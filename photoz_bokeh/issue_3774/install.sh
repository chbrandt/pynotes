conda create -n bokeh_devel
conda create -n bokeh_devel jupyter pandas numpy ipython matplotlib
source activate bokeh_devel
git clone https://github.com/bokeh/bokeh.git
deps=$(awk '/requirements/,/commands/' bokeh/conda.recipe/meta.yaml | grep "^\s*-" | grep -v "py
3k" | awk '{print $2" "}' | tr -d '\n')
echo $deps 
conda install -y -c bokeh $deps
cd bokeh/bokehjs/
npm install
cd ..
python setup.py develop --build_js
