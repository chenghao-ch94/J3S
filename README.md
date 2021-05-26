# J3S

## Description

We propose a Joint Statistical and Spatial Sparse representation models the image or image-set data for classification, by reconciling both their local patch structures and global Gaussian distribution mapped into Riemannian manifold.

![image](https://github.com/chengcv/J3S/blob/main/framework.jpg)

J3S model can be considered as the joint sparse coding problem and solved by coupling the local and global image representations using joint sparsity.
The learned J3S models are used for robust image and image-set classification.

![image](https://github.com/chengcv/J3S/blob/main/classification.jpg)


## Experiments results over ETH-80, FMD, UIUC, and YTC databases.

| Method         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | ETH-80  |  FMD  | UIUC | YTC  |
|---------------------|-----------|-----------|-----------|-----------|
| [AHISD](https://hal.archives-ouvertes.fr/hal-00564979/file/Cevikalp-cvpr10.pdf) &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;72.50&nbsp;&nbsp;     | 46.72 | 55.37 | 64.65 |
| [CHISD](https://hal.archives-ouvertes.fr/hal-00564979/file/Cevikalp-cvpr10.pdf) &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;79.75&nbsp;&nbsp;  | 47.52 | 65.09 | 67.24 |
| [MMD](https://vipl.ict.ac.cn/homepage/rpwang/publications/Manifold-Manifold%20Distance%20with%20Application%20to%20Face%20Recognition%20based%20on%20Image%20Set_CVPR2008.pdf) &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;| &nbsp;&nbsp;85.75&nbsp;&nbsp;  | 60.60 | 62.78 | 69.60 |
| [MDA](http://www.jdl.ac.cn/doc/2009/Manifold%20Discriminant%20Analysis.pdf) &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;| &nbsp;&nbsp;87.75&nbsp;&nbsp;  | 62.50 | 67.13 | 64.72 |
| [SPDML-AIRM](https://link.springer.com/content/pdf/10.1007/978-3-319-10605-2_2.pdf) &nbsp;&nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;90.75&nbsp;&nbsp;  | 63.42 | 74.72 | 67.50 |
| [SPDML-SETIN](https://link.springer.com/content/pdf/10.1007/978-3-319-10605-2_2.pdf) &nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;90.75&nbsp;&nbsp;  | 63.80 | 68.24 | 68.10 |
| [LEML](http://proceedings.mlr.press/v37/huanga15.pdf) &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | &nbsp;&nbsp;93.50&nbsp;&nbsp;  | 66.60 | 69.17 | 69.85 |
| [RMML-SPD](https://www.ijcai.org/Proceedings/2018/0449.pdf) &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;| &nbsp;&nbsp;95.00&nbsp;&nbsp;  | 68.88 | 70.09 | 78.05 |
| [RMML-GM](https://www.ijcai.org/Proceedings/2018/0449.pdf) &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;| &nbsp;&nbsp;93.00&nbsp;&nbsp; | 69.62 | 76.48 | 69.15 |
| [CDL-LDA](https://vipl.ict.ac.cn/homepage/rpwang/publications/Covariance%20Discriminative%20Learning_A%20Natural%20and%20Efficient%20Approach%20to_CVPR2012.pdf) &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;| &nbsp;&nbsp;94.00&nbsp;&nbsp;  | 76.92 | 78.89 | 70.21 |
| [CDL-PLS](https://vipl.ict.ac.cn/homepage/rpwang/publications/Covariance%20Discriminative%20Learning_A%20Natural%20and%20Efficient%20Approach%20to_CVPR2012.pdf) &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;| &nbsp;&nbsp;94.00&nbsp;&nbsp;  | 75.36 | 76.39 | 69.94 |
| [RSR](https://link.springer.com/content/pdf/10.1007/978-3-642-33709-3_16.pdf) &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;| &nbsp;&nbsp;91.50&nbsp;&nbsp; | 74.92 | 72.59| 72.77 |
| [KGDL](https://openaccess.thecvf.com/content_iccv_2013/papers/Harandi_Dictionary_Learning_and_2013_ICCV_paper.pdf) &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;| &nbsp;&nbsp;93.00&nbsp;&nbsp;  | 77.40 | 76.32 | 73.91 |
| [DRM](https://www.researchgate.net/profile/Munawar-Hayat/publication/273392204_Deep_Reconstruction_Models_for_Image_Set_Classification/links/554af7120cf29752ee7c3657/Deep-Reconstruction-Models-for-Image-Set-Classification.pdf) &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;| &nbsp;&nbsp;98.12&nbsp;&nbsp;  | N/A | N/A | 72.55 |
| [MMDML](https://openaccess.thecvf.com/content_cvpr_2015/papers/Lu_Multi-Manifold_Deep_Metric_2015_CVPR_paper.pdf) &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;| &nbsp;&nbsp;94.50&nbsp;&nbsp;  | N/A | N/A | 78.5 |
| J3S w/o Sp Dict. | &nbsp;&nbsp;95.25&nbsp;&nbsp;  | 81.40 | 83.43 | 82.87 |
| J3S &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;| &nbsp;&nbsp;96.00&nbsp;&nbsp;  | 82.58 | 84.07 | 83.09 |


## Citation

If you have any questions or suggestions, please contact me

      HAO006@ntu.edu.sg


In case of use, please cite our publication:

H. Cheng, and B. Wen. "Joint Statistical and Spatial Sparse Representation for Robust Image and Image-Set Classification." 2020 IEEE International Conference on Image Processing (ICIP). IEEE, 2020.


      @inproceedings{cheng2020joint,
        title={Joint Statistical and Spatial Sparse Representation for Robust Image and Image-Set Classification},
        author={Cheng, Hao and Wen, Bihan},
        booktitle={2020 IEEE International Conference on Image Processing (ICIP)},
        pages={2411--2415},
        year={2020},
        organization={IEEE}
      }

