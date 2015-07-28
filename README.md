# TermSuite-lang (TermSuite resources)

This repository contains the set of resources needed by [TermSuite](https://github.com/termsuite/termsuite-core). These resource are :
* Language-specific TreeTagger tags to Multex categories/subCategories mappings (`*-tt-*-mapping.xml`),
* Language-specific morphological analysis resource  (`*-compost-*.txt` files),
* Language-specific allowed characters (used for non-word or formula detection, `*-allowed-chars.txt` files),
* Language-specific multi-word detection rules (in the form of [UIMA Tokens Regex](https://github.com/JuleStar/uima-tokens-regex) rules, `.regex` files)
* Language-specific syntactic variation rules (`.yaml` files),
* Language-specific dictionaries (`*-dico.txt` files),
* Language-specific term frequencies in a general language corpus (`GeneralLanguage.Lang` files).


#WARNING

> This resource has been intentionally truncated and may result in poor TermSuite performances. The complete list of rules will be made publicly available shortly, as soon as authors' researches about multi-word term detection, syntactic and morphosyntactic term variation are published in scientific literature.

> Be patient ;)

## Supported languages

| Language | Qualitity of resource pack (and other comments)|
|----------|-------------|
| french |  Excellent |
| english |  Excellent |
| russian |  Excellent (TreeTagger is slow) |
| german |  Good |
| spanish |  Good |
| danish |  Poor |
| chinese |  Poor |
| latvian |  Poor (no POS tagger supported natively) |

## How to use these resources in TermSuite ?

First clone this repository.

```
$ git clone https://github.com/termsuite/termsuite-lang.git
```

Then pass the path to this local termsuite-lang repo to TermSuite.

*Example with TermSuite Java API*

If you cloned this repo from the current directory `/path/to/current-dir/`, then
the resource path will be :

```
TermSuitePipeline pipeline = TermSuitePipeline.create("fr")
	.setResourcePath("/path/to/current-dir/resource-lang/")
  ...
```

You can also package all elements inside `resource-lang` directory to a jar and
give the path to the jar as the TermSuite resource path.
