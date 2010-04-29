// M119 et D30 - calcul� avec un pas de temps de 0.002
[
	// Meta-donnees
	[
		850, // Vitesse initiale
		0.00038, // Coefficient de frottement
		// Liste des paliers d'altitudes d'impact
		[-1000,-600,-400,-260,-130,0,130,260,400,600,1000],
		// Liste des angles d'elevation
		[
			0,0.25,0.5,0.75,1,1.25,1.5,1.75,2,2.25,2.5,2.75,3,3.25,3.5,3.75,4,4.25,4.5,4.75,5,5.25,5.5,5.75,6,6.25,6.5,6.75,7,7.25,7.5,
			7.75,8,8.25,8.5,8.75,9,9.25,9.5,9.75,10,10.25,10.5,10.75,11,11.25,11.5,11.75,12,12.25,12.5,12.75,13,13.25,13.5,13.75,14,14.25,14.5,14.75,15,
			15.25,15.5,15.75,16,16.25,16.5,16.75,17,17.25,17.5,17.75,18,18.25,18.5,18.75,19,19.25,19.5,19.75,20,20.25,20.5,20.75,21,21.25,21.5,21.75,22,22.25,22.5,
			22.75,23,23.25,23.5,23.75,24,24.25,24.5,24.75,25,25.25,25.5,25.75,26,26.25,26.5,26.75,27,27.25,27.5,27.75,28,28.25,28.5,28.75,29,29.25,29.5,29.75,30,
			30.25,30.5,30.75,31,31.25,31.5,31.75,32,32.25,32.5,32.75,33,33.25,33.5,33.75,34,34.25,34.5,34.75,35,35.25,35.5,35.75,36,36.25,36.5,36.75,37,37.25,37.5,
			37.75,38,38.25,38.5,38.75,39,39.25,39.5,39.75,40,40.25,40.5,40.75,41,41.25,41.5,41.75,42,42.25,42.5,42.75,43,43.25,43.5,43.75,44,44.25,44.5,44.75,45,
			45.25,45.5,45.75,46,46.25,46.5,46.75,47,47.25,47.5,47.75,48,48.25,48.5,48.75,49,49.25,49.5,49.75,50,50.25,50.5,50.75,51,51.25,51.5,51.75,52,52.25,52.5,
			52.75,53,53.25,53.5,53.75,54,54.25,54.5,54.75,55,55.25,55.5,55.75,56,56.25,56.5,56.75,57,57.25,57.5,57.75,58,58.25,58.5,58.75,59,59.25,59.5,59.75,60,
			60.25,60.5,60.75,61,61.25,61.5,61.75,62,62.25,62.5,62.75,63,63.25,63.5,63.75,64,64.25,64.5,64.75,65,65.25,65.5,65.75,66,66.25,66.5,66.75,67,67.25,67.5,
			67.75,68,68.25,68.5,68.75,69,69.25,69.5,69.75,70,70.25,70.5,70.75,71,71.25,71.5,71.75,72,72.25,72.5,72.75,73,73.25,73.5,73.75,74,74.25,74.5,74.75,75
		]
	],
	// Donnees
	[
		// Portees pour chaque elevation pour l'altitude d'impact -1000m
		[
			5053,5080,5106,5131,5157,5182,5206,5231,5255,5278,5302,5324,5347,5369,5391,5413,5434,5455,5475,5496,5516,5535,5554,5573,5592,5610,5628,5646,5664,5681,5697,
			5714,5730,5746,5761,5777,5792,5806,5821,5835,5849,5862,5876,5888,5901,5914,5926,5938,5949,5961,5972,5982,5993,6003,6013,6023,6033,6042,6051,6060,6068,
			6076,6084,6092,6100,6107,6114,6121,6127,6133,6140,6145,6151,6156,6161,6166,6171,6175,6180,6183,6187,6191,6194,6197,6200,6203,6205,6207,6209,6211,6212,
			6214,6215,6216,6216,6217,6217,6217,6217,6216,6216,6215,6214,6213,6211,6210,6208,6206,6204,6201,6198,6196,6193,6189,6186,6182,6178,6174,6170,6166,6161,
			6156,6151,6146,6140,6135,6129,6123,6117,6110,6104,6097,6090,6083,6076,6068,6060,6053,6044,6036,6028,6019,6010,6001,5992,5983,5973,5963,5953,5943,5933,
			5922,5912,5901,5890,5878,5867,5855,5844,5832,5820,5807,5795,5782,5769,5756,5743,5730,5716,5702,5688,5674,5660,5646,5631,5616,5601,5586,5571,5555,5540,
			5524,5508,5491,5475,5458,5442,5425,5408,5390,5373,5355,5338,5320,5302,5283,5265,5246,5227,5208,5189,5170,5150,5131,5111,5091,5071,5050,5030,5009,4988,
			4967,4946,4924,4903,4881,4859,4837,4815,4792,4770,4747,4724,4701,4678,4654,4631,4607,4583,4559,4535,4510,4485,4461,4436,4411,4385,4360,4334,4308,4282,
			4256,4230,4203,4177,4150,4123,4096,4068,4041,4013,3985,3957,3929,3901,3872,3843,3815,3786,3756,3727,3697,3668,3638,3608,3578,3547,3517,3486,3455,3424,
			3393,3361,3330,3298,3266,3234,3202,3169,3137,3104,3071,3038,3005,2971,2938,2904,2870,2836,2802,2768,2733,2698,2663,2628,2593,2558,2522,2486,2451,2414
		],
		// Portees pour chaque elevation pour l'altitude d'impact -600m
		[
			4462,4499,4536,4572,4608,4643,4678,4712,4745,4779,4811,4843,4874,4905,4935,4965,4994,5023,5051,5079,5106,5133,5159,5185,5210,5235,5259,5283,5307,5330,5352,
			5375,5396,5418,5438,5459,5479,5499,5518,5537,5555,5573,5591,5608,5625,5642,5658,5674,5690,5705,5720,5734,5748,5762,5776,5789,5802,5814,5827,5838,5850,
			5861,5872,5883,5893,5903,5913,5923,5932,5941,5949,5958,5966,5974,5981,5988,5995,6002,6008,6015,6020,6026,6031,6037,6041,6046,6050,6055,6058,6062,6065,
			6068,6071,6074,6076,6078,6080,6082,6084,6085,6086,6086,6087,6087,6087,6087,6087,6086,6085,6084,6083,6081,6080,6078,6075,6073,6070,6068,6065,6061,6058,
			6054,6050,6046,6042,6037,6033,6028,6023,6017,6012,6006,6000,5994,5987,5981,5974,5967,5960,5953,5945,5937,5929,5921,5913,5904,5896,5887,5877,5868,5859,
			5849,5839,5829,5819,5808,5797,5787,5776,5764,5753,5741,5730,5718,5705,5693,5680,5668,5655,5642,5628,5615,5601,5587,5573,5559,5545,5530,5515,5500,5485,
			5470,5455,5439,5423,5407,5391,5374,5358,5341,5324,5307,5290,5272,5255,5237,5219,5201,5182,5164,5145,5126,5107,5088,5068,5049,5029,5009,4989,4969,4948,
			4928,4907,4886,4865,4843,4822,4800,4778,4756,4734,4712,4689,4666,4643,4620,4597,4574,4550,4526,4502,4478,4454,4429,4405,4380,4355,4330,4304,4279,4253,
			4227,4201,4175,4149,4122,4096,4069,4042,4014,3987,3959,3932,3904,3876,3847,3819,3790,3762,3733,3704,3674,3645,3615,3586,3556,3525,3495,3465,3434,3403,
			3372,3341,3310,3278,3247,3215,3183,3151,3118,3086,3053,3020,2987,2954,2921,2887,2854,2820,2786,2752,2717,2683,2648,2613,2578,2543,2508,2472,2437,2401
		],
		// Portees pour chaque elevation pour l'altitude d'impact -400m
		[
			4005,4053,4100,4147,4193,4238,4283,4326,4369,4411,4452,4492,4532,4571,4609,4646,4683,4718,4754,4788,4822,4854,4887,4918,4949,4980,5010,5038,5067,5095,5122,
			5149,5175,5201,5226,5251,5275,5298,5321,5344,5366,5388,5409,5429,5449,5469,5489,5507,5526,5544,5561,5579,5595,5612,5628,5643,5659,5673,5688,5702,5716,
			5729,5742,5755,5767,5779,5791,5802,5813,5824,5834,5844,5854,5863,5873,5881,5890,5898,5906,5914,5921,5928,5935,5941,5947,5953,5959,5964,5969,5974,5978,
			5983,5987,5990,5994,5997,6000,6003,6005,6007,6009,6011,6013,6014,6015,6016,6016,6016,6016,6016,6015,6015,6014,6013,6011,6010,6008,6006,6003,6001,5998,
			5995,5992,5989,5985,5981,5977,5973,5968,5964,5959,5953,5948,5943,5937,5931,5925,5918,5912,5905,5898,5890,5883,5875,5868,5860,5851,5843,5834,5825,5816,
			5807,5798,5788,5778,5768,5758,5747,5737,5726,5715,5704,5692,5681,5669,5657,5645,5632,5620,5607,5594,5581,5568,5554,5541,5527,5513,5499,5484,5469,5455,
			5440,5424,5409,5394,5378,5362,5346,5330,5313,5297,5280,5263,5246,5228,5211,5193,5175,5157,5139,5120,5102,5083,5064,5045,5025,5006,4986,4966,4946,4926,
			4905,4885,4864,4843,4822,4801,4779,4758,4736,4714,4692,4669,4647,4624,4601,4578,4555,4531,4508,4484,4460,4436,4412,4387,4363,4338,4313,4288,4262,4237,
			4211,4185,4159,4133,4107,4080,4053,4027,4000,3972,3945,3917,3890,3862,3834,3805,3777,3748,3719,3690,3661,3632,3603,3573,3543,3513,3483,3453,3422,3392,
			3361,3330,3299,3267,3236,3204,3172,3140,3108,3076,3043,3010,2977,2944,2911,2878,2844,2811,2777,2743,2708,2674,2640,2605,2570,2535,2500,2464,2429,2393
		],
		// Portees pour chaque elevation pour l'altitude d'impact -260m
		[
			3538,3600,3662,3722,3780,3838,3895,3950,4004,4057,4109,4160,4209,4257,4304,4350,4395,4439,4482,4524,4565,4604,4643,4681,4718,4755,4790,4825,4858,4892,4924,
			4955,4986,5016,5045,5074,5102,5129,5156,5182,5208,5233,5257,5281,5304,5327,5349,5370,5391,5412,5432,5452,5471,5490,5508,5526,5543,5560,5576,5592,5608,
			5623,5638,5653,5667,5680,5694,5707,5719,5731,5743,5755,5766,5777,5787,5797,5807,5816,5826,5834,5843,5851,5859,5866,5874,5881,5887,5894,5900,5906,5911,
			5916,5921,5926,5930,5934,5938,5942,5945,5948,5951,5953,5955,5957,5959,5960,5962,5963,5963,5964,5964,5964,5964,5963,5962,5961,5960,5959,5957,5955,5953,
			5950,5948,5945,5942,5938,5935,5931,5927,5923,5918,5914,5909,5904,5898,5893,5887,5881,5875,5868,5862,5855,5848,5841,5833,5826,5818,5810,5801,5793,5784,
			5775,5766,5757,5747,5738,5728,5718,5707,5697,5686,5675,5664,5653,5642,5630,5618,5606,5594,5581,5569,5556,5543,5529,5516,5502,5489,5475,5460,5446,5432,
			5417,5402,5387,5371,5356,5340,5324,5308,5292,5276,5259,5242,5225,5208,5191,5173,5156,5138,5120,5101,5083,5064,5046,5027,5007,4988,4969,4949,4929,4909,
			4889,4868,4848,4827,4806,4785,4764,4742,4720,4699,4677,4654,4632,4609,4587,4564,4541,4517,4494,4470,4447,4423,4398,4374,4350,4325,4300,4275,4250,4225,
			4199,4173,4147,4121,4095,4069,4042,4015,3988,3961,3934,3907,3879,3851,3823,3795,3767,3738,3709,3681,3652,3622,3593,3564,3534,3504,3474,3444,3413,3383,
			3352,3321,3290,3259,3227,3196,3164,3132,3100,3068,3035,3003,2970,2937,2904,2871,2837,2804,2770,2736,2702,2668,2633,2598,2564,2529,2494,2458,2423,2387
		],
		// Portees pour chaque elevation pour l'altitude d'impact -130m
		[
			2844,2933,3021,3107,3191,3274,3353,3431,3507,3580,3651,3720,3786,3851,3913,3974,4033,4090,4145,4199,4251,4302,4351,4398,4445,4489,4533,4576,4617,4657,4696,
			4734,4771,4807,4842,4876,4909,4941,4973,5004,5034,5063,5091,5119,5146,5172,5198,5223,5247,5271,5294,5317,5338,5360,5381,5401,5421,5440,5459,5477,5495,
			5513,5530,5546,5562,5578,5593,5608,5622,5636,5649,5662,5675,5687,5699,5711,5722,5733,5743,5753,5763,5773,5782,5790,5799,5807,5815,5822,5829,5836,5843,
			5849,5855,5860,5866,5871,5875,5880,5884,5888,5891,5895,5898,5900,5903,5905,5907,5909,5910,5911,5912,5913,5913,5913,5913,5913,5912,5911,5910,5909,5907,
			5905,5903,5901,5898,5896,5893,5889,5886,5882,5878,5874,5869,5865,5860,5855,5850,5844,5838,5832,5826,5820,5813,5806,5799,5792,5784,5777,5769,5761,5752,
			5744,5735,5726,5717,5708,5698,5688,5678,5668,5658,5647,5637,5626,5614,5603,5591,5580,5568,5556,5543,5531,5518,5505,5492,5478,5465,5451,5437,5423,5409,
			5394,5380,5365,5350,5334,5319,5303,5287,5271,5255,5239,5222,5206,5189,5171,5154,5137,5119,5101,5083,5065,5046,5028,5009,4990,4971,4952,4932,4912,4892,
			4872,4852,4832,4811,4790,4769,4748,4727,4705,4684,4662,4640,4617,4595,4573,4550,4527,4504,4480,4457,4433,4409,4385,4361,4337,4312,4288,4263,4238,4212,
			4187,4161,4136,4110,4084,4057,4031,4004,3977,3950,3923,3896,3868,3841,3813,3785,3757,3728,3700,3671,3642,3613,3584,3554,3525,3495,3465,3435,3405,3374,
			3344,3313,3282,3251,3219,3188,3156,3124,3092,3060,3028,2995,2963,2930,2897,2864,2830,2797,2763,2729,2695,2661,2627,2592,2558,2523,2488,2453,2417,2382
		],
		// Portees pour chaque elevation pour l'altitude d'impact 0m
		[
			0,554,984,1333,1626,1878,2098,2294,2470,2630,2776,2911,3035,3151,3259,3360,3456,3546,3631,3712,3789,3863,3933,4000,4064,4125,4184,4241,4295,4348,4399,
			4447,4495,4540,4584,4627,4668,4708,4747,4784,4821,4856,4891,4924,4956,4988,5018,5048,5077,5105,5132,5158,5184,5209,5234,5257,5281,5303,5325,5346,5367,
			5387,5406,5425,5444,5462,5479,5496,5512,5528,5544,5559,5573,5588,5601,5615,5628,5640,5652,5664,5675,5686,5697,5707,5717,5726,5735,5744,5752,5760,5768,
			5775,5782,5789,5795,5801,5807,5813,5818,5823,5827,5831,5835,5839,5842,5845,5848,5851,5853,5855,5856,5858,5859,5860,5860,5861,5861,5860,5860,5859,5858,
			5857,5856,5854,5852,5850,5847,5845,5842,5838,5835,5831,5828,5823,5819,5814,5810,5805,5799,5794,5788,5782,5776,5770,5763,5756,5749,5742,5734,5727,5719,
			5711,5702,5694,5685,5676,5667,5657,5648,5638,5628,5618,5607,5596,5586,5575,5563,5552,5540,5528,5516,5504,5491,5479,5466,5453,5440,5426,5413,5399,5385,
			5370,5356,5341,5327,5312,5296,5281,5265,5250,5234,5217,5201,5185,5168,5151,5134,5117,5099,5081,5064,5046,5027,5009,4990,4972,4953,4933,4914,4895,4875,
			4855,4835,4815,4794,4774,4753,4732,4711,4689,4668,4646,4624,4602,4580,4558,4535,4512,4489,4466,4443,4419,4396,4372,4348,4324,4299,4275,4250,4225,4200,
			4174,4149,4123,4098,4072,4045,4019,3993,3966,3939,3912,3885,3857,3830,3802,3774,3746,3718,3689,3661,3632,3603,3574,3545,3515,3486,3456,3426,3396,3365,
			3335,3304,3273,3242,3211,3180,3148,3116,3084,3052,3020,2988,2955,2922,2890,2856,2823,2790,2756,2722,2689,2654,2620,2586,2551,2516,2482,2446,2411,2376
		],
		// Portees pour chaque elevation pour l'altitude d'impact 130m
		[
			0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2357,2841,3060,3228,3368,3490,3600,3699,3790,3875,3954,
			4028,4097,4163,4226,4285,4342,4396,4448,4497,4545,4591,4635,4677,4718,4757,4796,4832,4868,4902,4936,4968,4999,5029,5059,5087,5115,5141,5167,5192,5217,
			5240,5263,5285,5307,5328,5349,5368,5387,5406,5424,5442,5459,5475,5491,5507,5522,5536,5550,5564,5577,5590,5602,5614,5625,5636,5647,5657,5667,5676,5686,
			5694,5703,5711,5718,5726,5732,5739,5745,5751,5757,5762,5767,5772,5776,5780,5784,5787,5791,5793,5796,5798,5800,5802,5803,5804,5805,5806,5806,5806,5806,
			5805,5804,5803,5802,5801,5799,5797,5794,5792,5789,5786,5783,5779,5775,5771,5767,5762,5758,5753,5747,5742,5736,5730,5724,5718,5711,5704,5697,5690,5683,
			5675,5667,5659,5650,5642,5633,5624,5615,5605,5596,5586,5576,5565,5555,5544,5533,5522,5511,5499,5488,5476,5464,5451,5439,5426,5413,5400,5386,5373,5359,
			5345,5331,5317,5302,5287,5272,5257,5242,5226,5211,5195,5179,5162,5146,5129,5112,5095,5078,5061,5043,5025,5007,4989,4971,4952,4933,4914,4895,4876,4856,
			4837,4817,4797,4777,4756,4735,4715,4694,4673,4651,4630,4608,4586,4564,4542,4519,4497,4474,4451,4428,4404,4381,4357,4333,4309,4285,4261,4236,4211,4186,
			4161,4136,4110,4085,4059,4033,4007,3980,3954,3927,3900,3873,3846,3818,3791,3763,3735,3707,3679,3650,3621,3593,3564,3534,3505,3476,3446,3416,3386,3356,
			3325,3295,3264,3233,3202,3171,3139,3108,3076,3044,3012,2980,2947,2914,2882,2849,2816,2782,2749,2715,2681,2647,2613,2579,2544,2510,2475,2440,2405,2370
		],
		// Portees pour chaque elevation pour l'altitude d'impact 260m
		[
			0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
			0,3143,3382,3545,3677,3789,3888,3978,4059,4135,4205,4270,4332,4390,4445,4497,4547,4595,4640,4684,4725,4765,4804,4841,4877,4911,4944,4976,5007,5037,
			5065,5093,5120,5146,5171,5196,5220,5242,5265,5286,5307,5327,5346,5365,5383,5401,5418,5435,5451,5466,5481,5495,5509,5523,5536,5548,5560,5572,5583,5594,
			5604,5614,5624,5633,5642,5650,5658,5666,5673,5680,5686,5693,5698,5704,5709,5714,5718,5723,5726,5730,5733,5736,5739,5741,5743,5745,5746,5747,5748,5749,
			5749,5749,5749,5748,5747,5746,5745,5743,5741,5739,5737,5734,5731,5728,5725,5721,5717,5713,5708,5704,5699,5694,5688,5683,5677,5671,5664,5658,5651,5644,
			5637,5629,5622,5614,5606,5597,5589,5580,5571,5561,5552,5542,5532,5522,5512,5501,5491,5480,5469,5457,5446,5434,5422,5410,5397,5384,5372,5359,5345,5332,
			5318,5304,5290,5276,5262,5247,5232,5217,5202,5186,5171,5155,5139,5123,5106,5090,5073,5056,5039,5021,5004,4986,4968,4950,4931,4913,4894,4875,4856,4837,
			4817,4798,4778,4758,4738,4717,4697,4676,4655,4634,4612,4591,4569,4547,4525,4503,4480,4458,4435,4412,4389,4366,4342,4318,4294,4270,4246,4222,4197,4172,
			4147,4122,4097,4071,4046,4020,3994,3967,3941,3914,3888,3861,3834,3806,3779,3751,3723,3695,3667,3639,3610,3582,3553,3524,3494,3465,3435,3406,3376,3346,
			3315,3285,3254,3224,3193,3161,3130,3099,3067,3035,3003,2971,2939,2906,2873,2841,2808,2774,2741,2707,2674,2640,2606,2572,2537,2503,2468,2433,2398,2363
		],
		// Portees pour chaque elevation pour l'altitude d'impact 400m
		[
			0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
			0,0,0,0,0,0,0,0,0,0,0,0,3510,3698,3836,3948,4045,4131,4209,4280,4346,4408,4465,4519,4570,4618,4664,4707,4749,4788,
			4826,4863,4898,4931,4963,4994,5024,5053,5081,5107,5133,5158,5182,5205,5227,5249,5270,5290,5309,5328,5346,5363,5380,5396,5412,5427,5442,5456,5470,5482,
			5495,5507,5519,5530,5541,5551,5561,5570,5579,5587,5596,5603,5611,5618,5624,5631,5636,5642,5647,5652,5656,5660,5664,5668,5671,5674,5676,5678,5680,5682,
			5683,5684,5685,5685,5685,5685,5684,5684,5683,5681,5680,5678,5676,5673,5671,5668,5664,5661,5657,5653,5649,5644,5640,5635,5629,5624,5618,5612,5606,5599,
			5593,5586,5579,5571,5564,5556,5548,5539,5531,5522,5513,5504,5494,5485,5475,5465,5454,5444,5433,5422,5411,5400,5388,5376,5364,5352,5339,5327,5314,5301,
			5287,5274,5260,5246,5232,5218,5203,5189,5174,5158,5143,5128,5112,5096,5080,5063,5047,5030,5013,4996,4979,4961,4944,4926,4908,4889,4871,4852,4833,4814,
			4795,4776,4756,4736,4716,4696,4676,4655,4635,4614,4592,4571,4550,4528,4506,4484,4462,4439,4417,4394,4371,4348,4325,4301,4277,4253,4229,4205,4181,4156,
			4131,4106,4081,4056,4030,4005,3979,3953,3926,3900,3873,3847,3820,3793,3765,3738,3710,3682,3654,3626,3598,3569,3540,3511,3482,3453,3424,3394,3364,3334,
			3304,3274,3243,3213,3182,3151,3120,3088,3057,3025,2993,2961,2929,2897,2864,2831,2798,2765,2732,2699,2665,2631,2598,2563,2529,2495,2460,2426,2391,2356
		],
		// Portees pour chaque elevation pour l'altitude d'impact 600m
		[
			0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
			0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3801,3961,4079,4177,
			4261,4336,4404,4466,4523,4576,4626,4673,4717,4758,4798,4835,4871,4905,4938,4969,4998,5027,5054,5080,5106,5130,5153,5175,5197,5217,5237,5256,5274,5292,
			5309,5325,5341,5356,5370,5384,5397,5410,5422,5434,5445,5456,5466,5476,5485,5494,5502,5510,5518,5525,5531,5538,5544,5549,5554,5559,5563,5567,5571,5574,
			5577,5580,5582,5584,5586,5587,5588,5589,5589,5589,5589,5588,5587,5586,5585,5583,5581,5579,5576,5573,5570,5567,5563,5559,5555,5550,5545,5540,5535,5530,
			5524,5518,5512,5505,5498,5491,5484,5476,5469,5461,5452,5444,5435,5426,5417,5408,5398,5388,5378,5368,5357,5346,5335,5324,5313,5301,5289,5277,5265,5252,
			5240,5227,5213,5200,5186,5173,5159,5144,5130,5115,5100,5085,5070,5055,5039,5023,5007,4991,4974,4958,4941,4924,4906,4889,4871,4853,4835,4817,4799,4780,
			4761,4742,4723,4703,4684,4664,4644,4624,4603,4583,4562,4541,4520,4498,4477,4455,4433,4411,4389,4366,4344,4321,4298,4275,4251,4228,4204,4180,4156,4131,
			4107,4082,4057,4032,4007,3981,3956,3930,3904,3878,3852,3825,3798,3771,3744,3717,3690,3662,3634,3606,3578,3550,3521,3493,3464,3435,3406,3376,3347,3317,
			3287,3257,3227,3196,3165,3135,3104,3073,3041,3010,2978,2946,2914,2882,2850,2817,2785,2752,2719,2685,2652,2618,2585,2551,2517,2483,2448,2414,2379,2344
		],
		// Portees pour chaque elevation pour l'altitude d'impact 1000m
		[
			0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
			0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
			0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4045,4190,4294,4377,4449,4511,4567,4618,4665,
			4708,4749,4786,4821,4854,4885,4914,4942,4969,4994,5017,5040,5061,5081,5101,5119,5137,5153,5169,5184,5199,5212,5225,5238,5249,5260,5271,5281,5290,5299,
			5307,5315,5322,5329,5335,5341,5346,5351,5355,5359,5363,5366,5369,5372,5374,5375,5376,5377,5378,5378,5378,5377,5377,5376,5374,5372,5370,5368,5365,5362,
			5358,5355,5351,5346,5342,5337,5332,5326,5320,5315,5308,5302,5295,5288,5280,5273,5265,5257,5248,5240,5231,5222,5212,5202,5193,5182,5172,5161,5151,5139,
			5128,5116,5105,5092,5080,5068,5055,5042,5029,5015,5002,4988,4974,4959,4945,4930,4915,4900,4884,4869,4853,4837,4820,4804,4787,4770,4753,4736,4718,4701,
			4683,4664,4646,4628,4609,4590,4571,4551,4532,4512,4492,4472,4451,4431,4410,4389,4368,4346,4325,4303,4281,4259,4237,4214,4191,4168,4145,4122,4098,4075,
			4051,4027,4003,3978,3953,3929,3904,3878,3853,3827,3802,3776,3750,3723,3697,3670,3643,3616,3589,3561,3534,3506,3478,3450,3422,3393,3364,3335,3306,3277,
			3248,3218,3188,3158,3128,3098,3067,3037,3006,2975,2944,2912,2881,2849,2817,2785,2753,2720,2688,2655,2622,2589,2556,2522,2489,2455,2421,2387,2353,2318
		]
	]
]