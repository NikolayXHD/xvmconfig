﻿/**
 * Options for dynamic transparency. Values ​​from smallest to largest.
 * Настройки динамической прозрачности. Значения от меньшего к большему.
 */
{
  // Dynamic transparency by various statistical parameters.
  // Динамическая прозрачность по различным статистическим показателям.
  "alphaRating": {
    "very_bad":     "100",  // very bad   / очень плохо
    "bad":          "70",   // bad        / плохо
    "normal":       "40",   // normal     / средне
    "good":         "10",   // good       / хорошо
    "very_good":    "0",    // very good  / очень хорошо
    "unique":       "0"     // unique     / уникально
  },
  // Dynamic transparency by remaining health points.
  // Динамическая прозрачность по оставшемуся запасу прочности.
  "alphaHP": {
    "very_low":         "100",  // very low       / очень низкий
    "low":              "75",   // low            / низкий
    "average":          "50",   // average        / средний
    "above_average":    "0"     // above-average  / выше среднего
  },
  "alpha": {
    // Dynamic transparency by spotted status
    // Динамическая прозрачность по статусу засвета
    "spotted": {
      "neverSeen":      100,
      "lost":           100,
      "spotted":        100,
      "dead":           100,
      "neverSeen_arty": 100,
      "lost_arty":      100,
      "spotted_arty":   100,
      "dead_arty":      100
    },
    // Dynamic transparency by remaining health.
    // Динамическая прозрачность по оставшемуся здоровью.
    "hp": [
      { "value": 200,  "alpha": ${"alphaHP.very_low"     } }, // alpha for HP <= 200     
      { "value": 400,  "alpha": ${"alphaHP.low"          } }, // alpha for HP <= 400     
      { "value": 1000, "alpha": ${"alphaHP.average"      } }, // alpha for HP <= 1000    
      { "value": 9999, "alpha": ${"alphaHP.above_average"} }  // alpha for HP > 1000     
    ],                                                                                          
    // Dynamic transparency by percentage of remaining health.                                  
    // Динамическая прозрачность по проценту оставшегося здоровья.                              
    "hp_ratio": [                                                                               
      { "value": 10,  "alpha": ${"alphaHP.very_low"     } },  // alpha for HP <= 10%     
      { "value": 25,  "alpha": ${"alphaHP.low"          } },  // alpha for HP <= 25%     
      { "value": 50,  "alpha": ${"alphaHP.average"      } },  // alpha for HP <= 50%     
      { "value": 100, "alpha": ${"alphaHP.above_average"} }   // alpha for HP > 50%      
    ],
    // Dynamic transparency for XVM Scale
    // Динамическая прозрачность по шкале XVM
    "x": [
      { "value": 16,  "alpha": ${"alphaRating.very_bad" } },  // 00 - 16 - very bad  (20% of players)              
      { "value": 33,  "alpha": ${"alphaRating.bad"      } },  // 17 - 33 - bad       (better than 20% of players)  
      { "value": 52,  "alpha": ${"alphaRating.normal"   } },  // 34 - 52 - normal    (better than 60% of players)  
      { "value": 75,  "alpha": ${"alphaRating.good"     } },  // 53 - 75 - good      (better than 90% of players)  
      { "value": 92,  "alpha": ${"alphaRating.very_good"} },  // 76 - 92 - very good (better than 99% of players)  
      { "value": 999, "alpha": ${"alphaRating.unique"   } }   // 93 - XX - unique    (better than 99.9% of players)
    ],
    // Dynamic transparency by efficiency
    // Динамическая прозрачность по эффективности
    "eff": [
      { "value": 600,  "alpha": ${"alphaRating.very_bad" } },
      { "value": 900,  "alpha": ${"alphaRating.bad"      } },
      { "value": 1200, "alpha": ${"alphaRating.normal"   } },
      { "value": 1500, "alpha": ${"alphaRating.good"     } },
      { "value": 1800, "alpha": ${"alphaRating.very_good"} },
      { "value": 9999, "alpha": ${"alphaRating.unique"   } }
    ],
    // Dynamic transparency by WTR rating
    // Динамическая прозрачность по рейтингу WTR
    "wtr": [
      { "value": 2631,  "alpha": ${"alphaRating.very_bad" } }, //    0 - 2631 - very bad  (20% of players)
      { "value": 4464,  "alpha": ${"alphaRating.bad"      } }, // 2632 - 4464 - bad       (better than 20% of players)
      { "value": 6249,  "alpha": ${"alphaRating.normal"   } }, // 4465 - 6249 - normal    (better than 60% of players)
      { "value": 8141,  "alpha": ${"alphaRating.good"     } }, // 6250 - 8141 - good      (better than 90% of players)
      { "value": 9460,  "alpha": ${"alphaRating.very_good"} }, // 8142 - 9460 - very good (better than 99% of players)
      { "value": 99999, "alpha": ${"alphaRating.unique"   } }  // 9461 - *    - unique    (better than 99.9% of players)
    ],
    // Dynamic transparency by WN8 rating
    // Динамическая прозрачность по рейтингу WN8
    "wn8": [
      { "value": 380,  "alpha": ${"alphaRating.very_bad" } },
      { "value": 860,  "alpha": ${"alphaRating.bad"      } },
      { "value": 1420, "alpha": ${"alphaRating.normal"   } },
      { "value": 2105, "alpha": ${"alphaRating.good"     } },
      { "value": 2770, "alpha": ${"alphaRating.very_good"} },
      { "value": 9999, "alpha": ${"alphaRating.unique"   } }
    ],
    // Dynamic transparency by WG rating
    // Динамическая прозрачность по рейтингу WG
    "wgr": [
      { "value": 2578,  "alpha": ${"alphaRating.very_bad" } }, //     0 - 2578  - very bad  (20% of players)
      { "value": 4521,  "alpha": ${"alphaRating.bad"      } }, //  2579 - 4521  - bad       (better than 20% of players)
      { "value": 6630,  "alpha": ${"alphaRating.normal"   } }, //  4522 - 6630  - normal    (better than 60% of players)
      { "value": 8884,  "alpha": ${"alphaRating.good"     } }, //  6631 - 8884  - good      (better than 90% of players)
      { "value": 10347, "alpha": ${"alphaRating.very_good"} }, //  8885 - 10347 - very good (better than 99% of players)
      { "value": 99999, "alpha": ${"alphaRating.unique"   } }  // 10348 - *     - unique    (better than 99.9% of players)
    ],
    // Dynamic transparency by win percent
    // Динамическая прозрачность по проценту побед
    "winrate": [
      { "value": 47,  "alpha": ${"alphaRating.very_bad" } },
      { "value": 49,  "alpha": ${"alphaRating.bad"      } },
      { "value": 52,  "alpha": ${"alphaRating.normal"   } },
      { "value": 57,  "alpha": ${"alphaRating.good"     } },
      { "value": 65,  "alpha": ${"alphaRating.very_good"} },
      { "value": 101, "alpha": ${"alphaRating.unique"   } }
    ],
    // Dynamic transparency by kilo-battles
    // Динамическая прозрачность по количеству кило-боев
    "kb": [
      { "value": 2,   "alpha": ${"alphaRating.very_bad" } },
      { "value": 5,   "alpha": ${"alphaRating.bad"      } },
      { "value": 9,   "alpha": ${"alphaRating.normal"   } },
      { "value": 14,  "alpha": ${"alphaRating.good"     } },
      { "value": 20,  "alpha": ${"alphaRating.very_good"} },
      { "value": 999, "alpha": ${"alphaRating.unique"   } }
    ],
    // Dynamic transparency by average level of player tanks
    // Динамическая прозрачность по среднему уровню танков игрока
    "avglvl": [
      { "value": 1,   "alpha": ${"alphaRating.very_bad" } },
      { "value": 2,   "alpha": ${"alphaRating.bad"      } },
      { "value": 4,   "alpha": ${"alphaRating.normal"   } },
      { "value": 6,   "alpha": ${"alphaRating.good"     } },
      { "value": 8,   "alpha": ${"alphaRating.very_good"} },
      { "value": 10,  "alpha": ${"alphaRating.unique"   } }
    ],
    // Dynamic transparency by battles on current tank
    // Динамическая прозрачность по количеству боев на текущем танке
    "t_battles": [
      { "value": 100,   "alpha": ${"alphaRating.very_bad" } },
      { "value": 250,   "alpha": ${"alphaRating.bad"      } },
      { "value": 500,   "alpha": ${"alphaRating.normal"   } },
      { "value": 1000,  "alpha": ${"alphaRating.good"     } },
      { "value": 1800,  "alpha": ${"alphaRating.very_good"} },
      { "value": 99999, "alpha": ${"alphaRating.unique"   } }
    ],
    // Dynamic transparency by average damage on current tank
    // Динамическая прозрачность по среднему урону за бой на текущем танке
    "tdb": [
      { "value": 500,  "alpha": ${"alphaRating.very_bad" } },
      { "value": 750,  "alpha": ${"alphaRating.bad"      } },
      { "value": 1000, "alpha": ${"alphaRating.normal"   } },
      { "value": 1800, "alpha": ${"alphaRating.good"     } },
      { "value": 2500, "alpha": ${"alphaRating.very_good"} },
      { "value": 9999, "alpha": ${"alphaRating.unique"   } }
    ],
    // Dynamic transparency by average damage efficiency on current tank
    // Динамическая прозрачность по эффективности урона за бой на текущем танке
    "tdv": [
      { "value": 0.6,  "alpha": ${"alphaRating.very_bad" } },
      { "value": 0.8,  "alpha": ${"alphaRating.bad"      } },
      { "value": 1.0,  "alpha": ${"alphaRating.normal"   } },
      { "value": 1.3,  "alpha": ${"alphaRating.good"     } },
      { "value": 2.0,  "alpha": ${"alphaRating.very_good"} },
      { "value": 15,   "alpha": ${"alphaRating.unique"   } }
    ],
    // Dynamic transparency by average frags per battle on current tank
    // Динамическая прозрачность по среднему количеству фрагов за бой на текущем танке
    "tfb": [
      { "value": 0.6,  "alpha": ${"alphaRating.very_bad" } },
      { "value": 0.8,  "alpha": ${"alphaRating.bad"      } },
      { "value": 1.0,  "alpha": ${"alphaRating.normal"   } },
      { "value": 1.3,  "alpha": ${"alphaRating.good"     } },
      { "value": 2.0,  "alpha": ${"alphaRating.very_good"} },
      { "value": 15,   "alpha": ${"alphaRating.unique"   } }
    ],
    // Dynamic transparency by number of spotted enemies per battle on current tank
    // Динамическая прозрачность по среднему количеству засвеченных врагов за бой на текущем танке
    "tsb": [
      { "value": 0.6,  "alpha": ${"alphaRating.very_bad" } },
      { "value": 0.8,  "alpha": ${"alphaRating.bad"      } },
      { "value": 1.0,  "alpha": ${"alphaRating.normal"   } },
      { "value": 1.3,  "alpha": ${"alphaRating.good"     } },
      { "value": 2.0,  "alpha": ${"alphaRating.very_good"} },
      { "value": 15,   "alpha": ${"alphaRating.unique"   } }
    ]
  }
}
