﻿using UnityEngine;
using System.Collections;

public class GlobalVariables : MonoBehaviour
{

    public static GlobalVariables instance;

    [Header("Active Variables")]
    public float actualGlobalMovingSpeed = 5;



    [Header("Obstacle Variables")]
    public Transform rotationPoint;
    public Obstacle activeObstacle;


    private void Awake()
    {
        if (instance == null)
        {
            instance = this;
        }
        else
        {
            Destroy(this);
        }
    }

}
