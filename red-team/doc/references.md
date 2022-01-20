
https://github.com/khast3x/Redcloud
https://github.com/bluscreenofjeff/Red-Team-Infrastructure-Wiki
https://malcomvetter.medium.com/safe-red-team-infrastructure-c5d6a0f13fac 
https://github.com/topics/red-teaming

https://github.com/clong/DetectionLab - blue team lab

Major caveat. They all will require some work prior to the start of the teaching. I have knowledge of maybe half the concepts in the PDF you attached. Depending on your audience, you may be able to get away with having less detailed labs. 

Information: - please note the "simple" attack infrastructure. This is indeed simple. I've seen what Deloitte uses and it's definitely bigger and more advanced. This should give you an understanding of the technical work required to teach this course. This isn't just one machine. You will need a bare minimum of seven hosts or services: three Active Directory-joined Windows machines, one cloud machine for domain-fronting, your attacking machine, packet capture service in your environment, and other configuration things such as a firewall, phishing server (actually executing a successful phishing using this server will be a pain, consider keeping it theoretical as everyone already knows what phishing is).

Building Active Directory environments: https://macrosec.tech/index.php/2021/07/19/building-a-basic-active-directory-lab/ and https://robertscocca.medium.com/building-an-active-directory-lab-82170dd73fb4 as examples, there's more if you search.
