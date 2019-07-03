using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(Rigidbody))]
public class Throwable : MonoBehaviour
{
    //tag ktory automaticky nastavime vsetkym objektom s tymto skriptom
    public static string THROWABLE_TAG = "Throwable";

    Rigidbody rb;

    bool attached = false;


    void Start()
    {
        gameObject.tag = THROWABLE_TAG;

        rb = GetComponent<Rigidbody>();

    }


    public void Attach()
    {
        attached = true;
    }

    public void Dettach()
    {
        attached = false;
    }


    public Rigidbody GetRigidbody()
    {
        return rb;
    }

    public bool IsAttached()
    {
        return attached;
    }
}
