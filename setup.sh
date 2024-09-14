if [ ! -d "$HOME/sheekify-data-virginia/miniconda3" ]
then
    echo "Miniconda is not installed, installing Miniconda"
    mkdir -p ~/sheekify-data-virginia/miniconda3
    wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/sheekify-data-virginia/miniconda3/miniconda.sh
    bash ~/sheekify-data-virginia/miniconda3/miniconda.sh -b -u -p ~/sheekify-data-virginia/miniconda3
    rm ~/sheekify-data-virginia/miniconda3/miniconda.sh
fi

export PATH="$HOME/sheekify-data-virginia/miniconda3/bin:$PATH"

conda env create -f environment.yaml

conda activate idm
