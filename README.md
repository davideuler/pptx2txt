pptx2txt
========

pptx2txt convert PowerPoint ".pptx" format to text.

Requirements
------------

pptx2txt require python-pptx.

```console
pip install python-pptx
```

Usage
-----

```console
pyton pptx2txt.py PPT_FILE...
```

Work with spellchecker
-----

Install pycorrector as spellchecker service：

```console
git clone https://github.com/shibing624/pycorrector.git
cd pycorrector

python -m pip -r requirements
pip install transformers
pip install --no-deps .
cp examples/flask_server_demo.py ./
flask --app flask_server_demo run
```

If you get the error as: module 'kenlm' has no attribute 'Model'.
Then you can install kenlm from source package: https://kheafield.com/code/kenlm.tar.gz
Here is the installation notes: https://github.com/shibing624/pycorrector/wiki/Install-kenlm

And you need cython 0.29.22 or above, to avoid error of "use of undeclared identifier '_PyGen_Send'" when installing kenlm. https://github.com/cython/cython/issues/3876

```console
python -m pip install cython
```

Then you can call the spellcheck service as :
```console
curl -H "Content-Type: application/json" -X POST -d '{"text":"我从北京南做高铁到南京南"}' http://127.0.0.1:5000/macbert_correct

curl -H "Content-Type: application/json" -X POST -d '{"text":"我从北京南做高铁到 南京南"}' http://127.0.0.1:5000/rule_correct
```


Tips
----

If you are using Windows, you may find it useful to add a shortcut to SendTo by doing the following

```console
pip install pywin32
pyton create_sendto_shortcut.py
```

Author
------

[Shinichi Akiyama](https://github.com/shakiyam)

License
-------

[MIT License](https://opensource.org/licenses/mit)
