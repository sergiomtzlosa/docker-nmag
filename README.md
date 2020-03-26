Nmag is a micromagnetic simulation package. It has been developed at the University of Southampton with substantial contributions from Hans Fangohr, Thomas Fischbacher, Matteo Franchin. It is released under the GNU GPL.

* nmag project URL: http://nmag.soton.ac.uk/nmag/

Docker image available here: https://hub.docker.com/repository/docker/sergiomtzlosa/ubuntu-nmag

Use the ubuntu-nmag image
--------------------------------------

1.- Create a Dockerfile with the following code:

<pre>
FROM sergiomtzlosa/ubuntu-nmag:latest

ENTRYPOINT ["su", "-", "nmag"]
</pre>

2.- Build the docker image (4.2GB):

  **docker build -t ubuntu-nmag .**

3.- Enter in the image shell:

**docker run -it IMAGE_ID**

4.- Once you are inside the bash shell of the image type:

**nsim**

5.- After that you will get the nsim output:

<pre>
       nsim:2020-03-24 13:13:59,915   setup.py  471    INFO Nsim 0.2.1
       nsim:2020-03-24 13:13:59,915   setup.py  472    INFO Runid is 'interactive-session'
       nsim:2020-03-24 13:13:59,915   setup.py  473    INFO Using 1 CPUs


In [1]:
</pre>


Run docker as daemon
---------------------

Use the following command to run the docker image as daemon:

**docker run -d -it IMAGE_ID**

Enter inside docker image prompt with the following command:

**docker exec -it CONTAINER_ID su - nmag**

Docker image pull
-----------------

**docker pull sergiomtzlosa/ubuntu-nmag:latest**

Credentials
-----------

* User: nmag
* Password: nmag

