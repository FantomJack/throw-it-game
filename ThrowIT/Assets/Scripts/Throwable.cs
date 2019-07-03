using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(Rigidbody))]
public class Throwable : MonoBehaviour
{
    //tag ktory automaticky nastavime vsetkym objektom s tymto skriptom
    public static string THROWABLE_TAG = "Throwable";

    //bod ktory sme nastavili cez input handler tomuto objektu, tento bod budeme nasledovat linearne rychlostou followspeed
    [HideInInspector]
    public Vector3 followPoint = Vector3.zero;
    public int followSpeed = 15;

    Rigidbody rb;





    void Start()
    {
        gameObject.tag = THROWABLE_TAG;

        rb = GetComponent<Rigidbody>();

    }

    void Update()
    {
    }

    //pohyb rigidbodies robievame vo fixedUpdate lebo fyzika sa pocita kazdy FixedUpdate a nie update
    void FixedUpdate()
    {
        if (followPoint != Vector3.zero)
        {
            Follow();
        }
    }


    private void Follow()
    {
        //ak sa pozicia objektu nerovna followPointu tak sa k nemu priblizime funkciou lerp
        if (followPoint != transform.position)
        {
            transform.position = Vector3.Lerp(transform.position, followPoint, followSpeed * Time.deltaTime);
        }

    }

    public void Throw()
    {

    }

    //objekt sme chytili ,vypneme gravitaciu
    public void Attach()
    {
        rb.useGravity = false;
    }

    //objekt sme pustili ,zapneme gravitaciu

    public void Dettach()
    {
        rb.useGravity = true;
        followPoint = Vector3.zero;
    }

}
