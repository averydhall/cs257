--
-- PostgreSQL database dump
--

-- Dumped from database version 14.0
-- Dumped by pg_dump version 14.0

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: players; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.players (
    name text,
    first_year integer,
    last_year integer,
    position text,
    height text,
    weight integer,
    birth_date text,
    college text
);


--
-- Data for Name: players; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.players (name, first_year, last_year, "position", height, weight, birth_date, college) FROM stdin;
Alaa Abdelnaby	1991	1995	F-C	6-10	240	June 24, 1968	Duke University
Zaid Abdul-Aziz	1969	1978	C-F	6-9	235	April 7, 1946	Iowa State University
Kareem Abdul-Jabbar	1970	1989	C	7-2	225	April 16, 1947	University of California, Los Angeles
Mahmoud Abdul-Rauf	1991	2001	G	6-1	162	March 9, 1969	Louisiana State University
Tariq Abdul-Wahad	1998	2003	F	6-6	223	November 3, 1974	San Jose State University
Shareef Abdur-Rahim	1997	2008	F	6-9	225	December 11, 1976	University of California
Tom Abernethy	1977	1981	F	6-7	220	May 6, 1954	Indiana University
Forest Able	1957	1957	G	6-3	180	July 27, 1932	Western Kentucky University
John Abramovic	1947	1948	F	6-3	195	February 9, 1919	Salem International University
Alex Abrines	2017	2018	G-F	6-6	190	August 1, 1993	\N
Alex Acker	2006	2009	G	6-5	185	January 21, 1983	Pepperdine University
Don Ackerman	1954	1954	G	6-0	183	September 4, 1930	Long Island University
Mark Acres	1988	1993	F-C	6-11	220	November 15, 1962	Oral Roberts University
Bud Acton	1968	1968	F	6-6	210	January 11, 1942	Hillsdale College
Quincy Acy	2013	2018	F	6-7	240	October 6, 1990	Baylor University
Alvan Adams	1976	1988	C-F	6-9	210	July 19, 1954	University of Oklahoma
Don Adams	1971	1977	F	6-6	210	November 27, 1947	Northwestern University
George Adams	1973	1975	F-G	6-5	210	May 15, 1949	Gardner-Webb University
Hassan Adams	2007	2009	G	6-4	220	June 20, 1984	University of Arizona
Jordan Adams	2015	2016	G	6-5	209	July 8, 1994	University of California, Los Angeles
Michael Adams	1986	1996	G	5-10	162	January 19, 1963	Boston College
Steven Adams	2014	2018	C	7-0	255	July 20, 1993	University of Pittsburgh
Rafael Addison	1987	1997	F-G	6-7	215	July 22, 1964	Syracuse University
Bam Adebayo	2018	2018	C-F	6-10	243	July 18, 1997	University of Kentucky
Rick Adelman	1969	1975	G	6-1	175	June 16, 1946	Loyola Marymount University
Jeff Adrien	2011	2015	F	6-7	245	February 10, 1986	University of Connecticut
Arron Afflalo	2008	2018	G	6-5	210	October 15, 1985	University of California, Los Angeles
Maurice Ager	2007	2011	G	6-5	202	February 9, 1984	Michigan State University
Mark Aguirre	1982	1994	F-G	6-6	232	December 10, 1959	DePaul University
Blake Ahearn	2008	2012	G	6-2	190	May 27, 1984	Missouri State University
Danny Ainge	1982	1995	G	6-4	175	March 17, 1959	Brigham Young University
Matthew Aitch	1968	1968	F	6-7	230	September 21, 1944	Michigan State University
Alexis Ajinca	2009	2017	C	7-2	248	May 6, 1988	\N
Henry Akin	1967	1969	C-F	6-10	225	July 31, 1944	Morehead State University
Josh Akognon	2013	2013	G	5-11	185	February 10, 1986	California State University, Fullerton
Solomon Alabi	2011	2012	C	7-1	251	March 21, 1988	Florida State University
Mark Alarie	1987	1991	F	6-8	217	December 11, 1963	Duke University
Gary Alcorn	1960	1961	C	6-9	225	October 8, 1936	California State University, Fresno
Furkan Aldemir	2015	2015	F-C	6-10	240	August 9, 1991	\N
Cole Aldrich	2011	2018	C	6-11	250	October 31, 1988	University of Kansas
LaMarcus Aldridge	2007	2018	F-C	6-11	260	July 19, 1985	University of Texas at Austin
Chuck Aleksinas	1985	1985	C	6-11	260	February 26, 1959	University of Connecticut
Cliff Alexander	2016	2016	F	6-8	245	November 16, 1995	University of Kansas
Cory Alexander	1996	2005	G	6-1	185	June 22, 1973	University of Virginia
Courtney Alexander	2001	2003	G	6-5	205	April 27, 1977	California State University, Fresno
Gary Alexander	1994	1994	F	6-7	240	November 1, 1969	University of South Florida
Joe Alexander	2009	2010	F	6-8	230	December 26, 1986	West Virginia University
Victor Alexander	1992	2002	C-F	6-9	265	August 31, 1969	Iowa State University
Steve Alford	1988	1991	G	6-2	183	November 23, 1964	Indiana University
Bill Allen	1968	1968	C-F	6-8	205	\N	New Mexico State University
Bob Allen	1969	1969	F	6-9	205	July 17, 1946	Marshall University
Jarrett Allen	2018	2018	F-C	6-10	234	April 21, 1998	University of Texas at Austin
Jerome Allen	1996	1997	G	6-4	184	January 28, 1973	University of Pennsylvania
Kadeem Allen	2018	2018	G	6-3	192	January 15, 1993	University of Arizona
Lavoy Allen	2012	2017	F-C	6-9	260	February 4, 1989	Temple University
Lucius Allen	1970	1979	G	6-2	175	September 26, 1947	University of California, Los Angeles
Malik Allen	2002	2011	F-C	6-10	255	June 27, 1978	Villanova University
Randy Allen	1989	1990	F	6-8	220	January 26, 1965	Florida State University
Ray Allen	1997	2014	G	6-5	205	July 20, 1975	University of Connecticut
Tony Allen	2005	2018	G-F	6-4	213	January 11, 1982	Oklahoma State University
Willie Allen	1972	1972	F	6-6	230	February 8, 1949	University of Miami
Odis Allison	1972	1972	F	6-6	195	October 2, 1949	University of Nevada, Las Vegas
Lance Allred	2008	2008	C	6-11	250	February 2, 1981	Weber State University
Darrell Allums	1981	1981	F	6-9	220	September 12, 1958	University of California, Los Angeles
Morris Almond	2008	2012	G	6-6	225	February 2, 1985	Rice University
Derrick Alston	1995	1997	F	6-11	225	August 20, 1972	Duquesne University
Rafer Alston	2000	2010	G	6-2	171	July 24, 1976	California State University, Fresno
Peter Aluma	1999	1999	C	6-10	260	April 23, 1973	Liberty University
John Amaechi	1996	2003	C-F	6-10	270	November 26, 1970	Pennsylvania State University
Ashraf Amaya	1996	1997	F	6-8	230	November 23, 1971	Southern Illinois University
Al-Farouq Aminu	2011	2018	F	6-9	220	September 21, 1990	Wake Forest University
Lou Amundson	2007	2016	F	6-9	220	December 7, 1982	University of Nevada, Las Vegas
Bob Anderegg	1960	1960	F-G	6-3	200	August 24, 1937	Michigan State University
Chris Andersen	2002	2017	F-C	6-10	245	July 7, 1978	Blinn College
David Andersen	2010	2011	C	6-11	245	June 23, 1980	\N
Alan Anderson	2006	2017	G-F	6-6	220	October 16, 1982	Michigan State University
Andrew Anderson	1968	1970	G	6-2	184	July 6, 1945	Canisius College
Antonio Anderson	2010	2010	G	6-6	215	June 5, 1985	University of Memphis
Cliff Anderson	1968	1971	G-F	6-2	200	September 7, 1944	Saint Joseph's University
Dan Anderson	1968	1969	C	6-10	230	February 15, 1943	Augsburg College
Dan Anderson	1975	1976	G	6-2	185	January 1, 1951	University of Southern California
Derek Anderson	1998	2008	G	6-5	194	July 18, 1974	University of Kentucky
Dwight Anderson	1983	1983	G	6-3	185	December 28, 1960	University of Southern California
Eric Anderson	1993	1994	F	6-9	220	May 26, 1970	Indiana University
Greg Anderson	1988	1998	F-C	6-10	230	June 22, 1964	University of Houston
J.J. Anderson	1983	1985	F	6-8	195	September 23, 1960	Bradley University
James Anderson	2011	2016	G-F	6-6	213	March 25, 1989	Oklahoma State University
Jerome Anderson	1976	1977	G	6-5	195	October 9, 1953	West Virginia University
Justin Anderson	2016	2018	G	6-6	228	November 19, 1993	University of Virginia
Kenny Anderson	1992	2005	G	6-0	168	October 9, 1970	Georgia Institute of Technology
Kim Anderson	1979	1979	F	6-7	200	May 12, 1955	University of Missouri
Kyle Anderson	2015	2018	F-G	6-9	230	September 20, 1993	University of California, Los Angeles
Michael Anderson	1989	1989	G	5-11	184	March 23, 1966	Drexel University
Nick Anderson	1990	2002	F-G	6-6	205	January 20, 1968	University of Illinois at Urbana-Champaign
Richard Anderson	1983	1990	F-C	6-10	240	November 19, 1960	University of California, Santa Barbara
Ron Anderson	1985	1994	F-G	6-7	215	October 15, 1958	California State University, Fresno
Ryan Anderson	2009	2018	F	6-10	240	May 6, 1988	University of California
Shandon Anderson	1997	2006	F-G	6-6	208	December 31, 1973	University of Georgia
Willie Anderson	1989	1997	G-F	6-7	190	January 8, 1967	University of Georgia
Wally Anderzunas	1970	1970	C-F	6-7	220	January 11, 1946	Creighton University
Martynas Andriuskevicius	2006	2006	C	7-2	240	March 12, 1986	\N
Don Anielak	1955	1955	F	6-7	190	November 1, 1930	Missouri State University
Ike Anigbogu	2018	2018	F-C	6-10	252	October 22, 1998	University of California, Los Angeles
Michael Ansley	1990	1992	F	6-7	225	February 8, 1967	University of Alabama
Chris Anstey	1998	2000	C	7-0	249	January 1, 1975	\N
Giannis Antetokounmpo	2014	2018	F-G	6-11	222	December 6, 1994	\N
Thanasis Antetokounmpo	2016	2016	F	6-7	205	July 17, 1992	\N
Carmelo Anthony	2004	2018	F	6-8	240	May 29, 1984	Syracuse University
Greg Anthony	1992	2002	G	6-0	176	November 15, 1967	University of Nevada, Las Vegas
Joel Anthony	2008	2017	C	6-9	245	August 9, 1982	University of Nevada, Las Vegas
Pero Antic	2014	2015	C-F	6-11	260	July 29, 1982	\N
OG Anunoby	2018	2018	F	6-8	232	July 17, 1997	Indiana University
Keith Appling	2016	2016	G	6-1	185	February 13, 1992	Michigan State University
Rafael Araujo	2005	2007	C	6-11	280	August 12, 1980	Brigham Young University
Stacey Arceneaux	1962	1962	F	6-4	210	February 17, 1936	Iowa State University
Robert Archibald	2003	2004	F	6-11	250	March 29, 1980	University of Illinois at Urbana-Champaign
Tiny Archibald	1971	1984	G	6-1	150	September 2, 1948	University of Texas at El Paso
Ryan Arcidiacono	2018	2018	G	6-3	188	March 26, 1994	Villanova University
Jim Ard	1971	1978	F-C	6-8	215	September 19, 1948	University of Cincinnati
Gilbert Arenas	2002	2012	G	6-3	191	January 6, 1982	University of Arizona
Trevor Ariza	2005	2018	F	6-8	215	June 30, 1985	University of California, Los Angeles
Paul Arizin	1951	1962	F-G	6-4	190	April 9, 1928	Villanova University
Joe Arlauckas	1988	1988	F	6-9	230	July 20, 1965	Niagara University
B.J. Armstrong	1990	2000	G	6-2	175	September 9, 1967	University of Iowa
Bob Armstrong	1957	1957	C-F	6-8	220	June 17, 1933	Michigan State University
Brandon Armstrong	2002	2004	G	6-5	188	June 16, 1980	Pepperdine University
Curly Armstrong	1949	1951	G-F	5-11	170	November 1, 1918	Indiana University
Darrell Armstrong	1995	2008	G	6-0	170	June 22, 1968	Fayetteville State University
Hilton Armstrong	2007	2014	F-C	6-11	235	November 11, 1984	University of Connecticut
Tate Armstrong	1978	1979	G	6-3	175	October 5, 1955	Duke University
Jesse Arnelle	1956	1956	F	6-5	220	December 30, 1933	Pennsylvania State University
Jay Arnette	1964	1966	G	6-2	175	December 19, 1938	University of Texas at Austin
Bob Arnzen	1970	1974	F	6-5	205	November 3, 1947	University of Notre Dame
Carlos Arroyo	2002	2011	G	6-2	202	July 30, 1979	Florida International University
Darrell Arthur	2009	2018	F	6-9	235	March 25, 1988	University of Kansas
John Arthurs	1970	1970	G	6-4	185	August 15, 1947	Tulane University
Jamel Artis	2018	2018	G-F	6-7	213	January 12, 1993	University of Pittsburgh
Omer Asik	2011	2018	C	7-0	255	July 4, 1986	\N
Vincent Askew	1988	1998	G-F	6-6	210	February 28, 1966	University of Memphis
Keith Askins	1991	1999	G-F	6-7	197	December 15, 1967	University of Alabama
Don Asmonga	1954	1954	G	6-2	185	February 15, 1928	Alliance College
Dick Atha	1956	1958	G	6-2	190	September 21, 1931	Indiana State University
Chucky Atkins	2000	2010	G	5-11	160	August 14, 1974	University of South Florida
Al Attles	1961	1971	G	6-0	175	November 7, 1936	North Carolina Agricultural and Technical State University
Chet Aubuchon	1947	1947	G	5-10	137	May 18, 1916	Michigan State University
Stacey Augmon	1992	2006	F-G	6-8	205	August 1, 1968	University of Nevada, Las Vegas
D.J. Augustin	2009	2018	G	6-0	183	November 10, 1987	University of Texas at Austin
James Augustine	2007	2008	F	6-10	235	February 27, 1984	University of Illinois at Urbana-Champaign
Isaac Austin	1992	2002	C	6-10	255	August 18, 1969	Arizona State University
Johnny Austin	1967	1968	G	6-0	170	August 31, 1944	Boston College
Ken Austin	1984	1984	F	6-9	205	July 15, 1961	Rice University
Anthony Avent	1993	2000	F	6-9	235	October 18, 1969	Seton Hall University
Bird Averitt	1974	1978	G	6-1	170	July 22, 1952	Pepperdine University
William Avery	2000	2002	G	6-2	197	August 8, 1979	Duke University
Dennis Awtrey	1971	1982	C	6-10	235	February 22, 1948	Santa Clara University
Gustavo Ayon	2012	2014	C	6-10	250	April 1, 1985	\N
Jeff Ayres	2010	2016	F	6-9	240	April 29, 1987	Arizona State University
Kelenna Azubuike	2007	2012	G	6-5	220	December 16, 1983	University of Kentucky
Chris Babb	2014	2014	G	6-5	225	February 14, 1990	Iowa State University
Luke Babbitt	2011	2018	F	6-9	225	June 20, 1989	University of Nevada, Reno
Milos Babic	1991	1992	C-F	7-0	240	November 23, 1968	Tennessee Technological University
Johnny Bach	1949	1949	F-G	6-2	180	July 10, 1924	Fordham University
Dwayne Bacon	2018	2018	G	6-6	222	August 30, 1995	Florida State University
Henry Bacon	1973	1973	G	6-3	205	July 5, 1948	University of Louisville
Jim Baechtold	1953	1957	F-G	6-4	205	December 9, 1927	Eastern Kentucky University
Dalibor Bagaric	2001	2003	C	7-1	255	February 7, 1980	\N
John Bagley	1983	1994	G	6-0	185	April 23, 1960	Boston College
Carl Bailey	1982	1982	C	7-0	210	April 23, 1958	Tuskegee University
Gus Bailey	1975	1980	G-F	6-5	185	February 18, 1951	University of Texas at El Paso
James Bailey	1980	1988	F-C	6-9	220	May 21, 1957	Rutgers University
Thurl Bailey	1984	1999	F-C	6-11	215	April 7, 1961	North Carolina State University
Toby Bailey	1999	2000	G	6-6	213	November 19, 1975	University of California, Los Angeles
Cameron Bairstow	2015	2016	F-C	6-9	250	December 7, 1990	University of New Mexico
Jimmie Baker	1976	1976	F	6-9	220	December 25, 1953	University of Hawaii
LaMark Baker	1999	1999	G	6-1	175	November 11, 1969	Ohio State University
Maurice Baker	2005	2005	G	6-1	175	July 28, 1979	Oklahoma State University
Norm Baker	1947	1947	G	6-0	180	February 17, 1923	\N
Ron Baker	2017	2018	G	6-4	220	March 30, 1993	Wichita State University
Vin Baker	1994	2006	F	6-11	232	November 23, 1971	University of Hartford
Wade Baldwin	2017	2017	G	6-4	202	March 29, 1996	Vanderbilt University
Renaldo Balkman	2007	2012	F	6-8	208	July 14, 1984	University of South Carolina
Cedric Ball	1991	1991	F	6-8	210	April 16, 1968	University of North Carolina at Charlotte
Lonzo Ball	2018	2018	G	6-6	190	October 27, 1997	University of California, Los Angeles
Greg Ballard	1978	1989	F	6-7	215	January 29, 1955	University of Oregon
Herschel Baltimore	1947	1947	F	6-4	195	June 21, 1921	Pennsylvania State University
Gene Banks	1982	1987	F-G	6-7	215	May 15, 1959	Duke University
Marcus Banks	2004	2011	G	6-2	200	November 19, 1981	University of Nevada, Las Vegas
Walker Banks	1971	1971	C	6-10	205	August 26, 1947	Western Kentucky University
Ken Bannister	1985	1991	F-C	6-9	235	April 1, 1960	Saint Augustine's College
Mike Bantom	1974	1982	F-C	6-9	200	December 3, 1951	Saint Joseph's University
John Barber	1957	1957	F	6-6	210	June 27, 1927	California State University, Los Angeles
Leandro Barbosa	2004	2017	G	6-3	194	November 28, 1982	\N
Steve Bardo	1992	1996	G	6-5	190	April 5, 1968	University of Illinois at Urbana-Champaign
J.J. Barea	2007	2018	G	6-0	185	June 26, 1984	Northeastern University
Andrea Bargnani	2007	2016	F-C	7-0	245	October 26, 1985	\N
Cliff Barker	1950	1952	G	6-2	185	January 15, 1921	University of Kentucky
Tom Barker	1977	1979	C-F	6-11	225	March 11, 1955	University of Hawaii
Charles Barkley	1985	2000	F	6-6	252	February 20, 1963	Auburn University
Erick Barkley	2001	2002	G	6-1	177	February 21, 1978	St. John's University
Don Barksdale	1952	1955	F-C	6-6	200	March 31, 1923	University of California, Los Angeles
Harrison Barnes	2013	2018	F	6-8	210	May 30, 1992	University of North Carolina
Harry Barnes	1969	1969	F	6-3	205	July 25, 1945	Northeastern University
Jim Barnes	1965	1971	C-F	6-8	210	April 13, 1941	University of Texas at El Paso
Marvin Barnes	1975	1980	F-C	6-8	210	July 27, 1952	Providence College
Matt Barnes	2004	2017	F	6-7	226	March 9, 1980	University of California, Los Angeles
Dick Barnett	1960	1974	G-F	6-4	190	October 2, 1936	Tennessee State University
Jim Barnett	1967	1977	G-F	6-4	170	July 7, 1944	University of Oregon
Nathaniel Barnett	1976	1976	G	6-3	175	January 29, 1953	University of Akron
John Barnhill	1963	1972	G	6-1	180	March 20, 1938	Tennessee State University
Norton Barnhill	1977	1977	G	6-4	205	July 15, 1953	Washington State University
Leo Barnhorst	1950	1954	F-G	6-4	190	May 11, 1924	University of Notre Dame
John Barr	1947	1947	F	6-3	205	August 8, 1918	Pennsylvania State University
Mike Barr	1973	1977	G	6-3	180	October 19, 1950	Duquesne University
Moe Barr	1971	1971	G	6-4	195	June 19, 1944	Duquesne University
Andre Barrett	2005	2008	G	5-10	172	February 21, 1982	Seton Hall University
Ernie Barrett	1954	1956	G-F	6-3	180	August 27, 1929	Kansas State University
Mike Barrett	1970	1973	G	6-2	155	September 5, 1943	West Virginia University Institute of Technology
Earl Barron	2006	2015	C	7-0	250	August 14, 1981	University of Memphis
Dana Barros	1990	2004	G	5-11	163	April 13, 1967	Boston College
Brent Barry	1996	2009	G	6-6	185	December 31, 1971	Oregon State University
Drew Barry	1998	2000	G	6-5	191	February 17, 1973	Georgia Institute of Technology
Jon Barry	1993	2006	G	6-4	195	July 25, 1969	Georgia Institute of Technology
Rick Barry	1966	1980	F	6-7	205	March 28, 1944	University of Miami
Ed Bartels	1950	1951	F	6-5	195	October 8, 1925	North Carolina State University
Vic Bartolome	1972	1972	C	7-0	230	September 29, 1948	Oregon State University
Will Barton	2013	2018	G	6-6	175	January 6, 1991	University of Memphis
Eddie Basden	2006	2006	G	6-5	215	February 15, 1983	University of North Carolina at Charlotte
Jerry Baskerville	1976	1976	F	6-7	190	November 10, 1951	Temple University
Brandon Bass	2006	2017	F	6-8	250	April 30, 1985	Louisiana State University
Tim Bassett	1974	1980	F-C	6-8	225	April 1, 1951	University of Georgia
Maceo Baston	2003	2009	F	6-9	215	May 29, 1975	University of Michigan
Mengke Bateer	2002	2004	C	6-11	290	November 20, 1975	\N
Billy Ray Bates	1980	1983	G	6-4	210	May 31, 1956	Kentucky State University
Esteban Batista	2006	2007	F-C	6-10	270	September 2, 1983	\N
Mike Batiste	2003	2003	F	6-8	225	November 21, 1977	Arizona State University
Tony Battie	1998	2012	C-F	6-11	230	February 11, 1976	Texas Tech University
Shane Battier	2002	2014	F	6-8	220	September 9, 1978	Duke University
John Battle	1986	1995	G	6-2	175	November 9, 1962	Rutgers University
Kenny Battle	1990	1993	F	6-6	210	October 10, 1964	University of Illinois at Urbana-Champaign
Dave Batton	1983	1984	C	6-10	240	March 26, 1956	University of Notre Dame
Lloyd Batts	1975	1975	G-F	6-4	185	May 9, 1951	University of Cincinnati
Nicolas Batum	2009	2018	F-G	6-8	200	December 14, 1988	\N
Johnny Baum	1970	1974	F	6-5	200	June 17, 1946	Temple University
Frankie Baumholtz	1947	1947	G	5-10	170	October 7, 1918	Ohio University
Lonny Baxter	2003	2006	F	6-8	260	January 27, 1979	University of Maryland
Jerryd Bayless	2009	2018	G	6-3	200	August 20, 1988	University of Arizona
Elgin Baylor	1959	1972	F	6-5	225	September 16, 1934	Seattle University
Howard Bayne	1968	1968	F	6-6	235	July 28, 1942	University of Tennessee
Aron Baynes	2013	2018	C	6-10	260	December 9, 1986	Washington State University
Sergei Bazarevich	1995	1995	G	6-2	168	March 16, 1965	\N
Kent Bazemore	2013	2018	G-F	6-5	201	July 1, 1989	Old Dominion University
Ed Beach	1951	1951	F	6-3	200	January 25, 1929	West Virginia University
Bradley Beal	2013	2018	G	6-5	207	June 28, 1993	University of Florida
Al Beard	1968	1968	C	6-9	200	April 27, 1942	Norfolk State University
Butch Beard	1970	1979	G	6-3	185	May 4, 1947	University of Louisville
Ralph Beard	1950	1951	G	5-10	175	December 2, 1927	University of Kentucky
Charles Beasley	1968	1971	G-F	6-5	190	September 23, 1945	Southern Methodist University
Jerome Beasley	2004	2004	F	6-10	237	May 17, 1980	University of North Dakota
John Beasley	1968	1974	F-C	6-9	225	February 5, 1944	Texas A&M University
Malik Beasley	2017	2018	G	6-5	196	November 26, 1996	Florida State University
Michael Beasley	2009	2018	F	6-9	235	January 9, 1989	Kansas State University
Zelmo Beaty	1963	1975	C	6-9	225	October 25, 1939	Prairie View A&M University
Rodrigue Beaubois	2010	2013	G	6-0	170	February 24, 1988	\N
Byron Beck	1968	1977	C-F	6-9	225	January 25, 1945	University of Denver
Corey Beck	1996	1999	G	6-1	190	May 27, 1971	University of Arkansas
Ernie Beck	1954	1961	G-F	6-4	190	December 11, 1931	University of Pennsylvania
Arthur Becker	1968	1973	F	6-7	205	January 12, 1942	Arizona State University
Moe Becker	1947	1947	G-F	6-1	185	February 24, 1917	Duquesne University
Bob Bedell	1968	1971	F	6-7	205	June 26, 1944	Stanford University
William Bedford	1987	1993	C	7-0	225	December 14, 1963	University of Memphis
Hank Beenders	1947	1949	C-F	6-6	185	June 2, 1916	Long Island University
Ron Behagen	1974	1980	F-C	6-9	185	January 14, 1951	University of Minnesota
Elmer Behnke	1952	1952	C	6-7	210	February 3, 1929	Bradley University
Marco Belinelli	2008	2018	G-F	6-5	210	March 25, 1986	\N
Charlie Bell	2002	2011	G	6-3	200	March 12, 1979	Michigan State University
Dennis Bell	1974	1976	F	6-5	185	June 2, 1951	Drake University
Jordan Bell	2018	2018	F	6-9	224	January 7, 1995	University of Oregon
Raja Bell	2001	2012	G	6-5	204	September 19, 1976	Florida International University
Troy Bell	2004	2004	G	6-1	180	November 10, 1980	Boston College
Whitey Bell	1960	1961	G	6-0	180	September 13, 1932	North Carolina State University
Walt Bellamy	1962	1975	C	6-11	225	July 24, 1939	Indiana University
DeAndre' Bembry	2017	2018	F	6-6	210	July 4, 1994	Saint Joseph's University
Irv Bemoras	1954	1957	F-G	6-3	185	November 18, 1930	University of Illinois at Urbana-Champaign
Leon Benbow	1975	1976	G	6-4	185	July 23, 1950	Jacksonville University
Dragan Bender	2017	2018	F	7-1	225	November 17, 1997	\N
Jonathan Bender	2000	2010	F	6-11	202	January 30, 1981	\N
Jerrelle Benimon	2015	2015	F	6-8	245	August 1, 1991	Towson University
Benoit Benjamin	1986	2000	C	7-0	250	November 22, 1964	Creighton University
Corey Benjamin	1999	2003	G	6-6	200	February 24, 1978	Oregon State University
Anthony Bennett	2014	2017	F	6-8	245	March 14, 1993	University of Nevada, Las Vegas
Elmer Bennett	1995	1997	G	6-0	170	February 13, 1970	University of Notre Dame
Mario Bennett	1996	2000	F	6-6	235	August 1, 1973	Arizona State University
Mel Bennett	1976	1982	F	6-7	200	January 4, 1955	University of Pittsburgh
Spider Bennett	1969	1969	G	6-3	190	August 4, 1943	Winston-Salem State University
Tony Bennett	1993	1995	G	6-0	175	June 1, 1969	University of Wisconsin-Green Bay
Winston Bennett	1990	1992	F	6-7	210	February 9, 1965	University of Kentucky
David Benoit	1992	2001	F	6-8	220	May 9, 1968	University of Alabama
Keith Benson	2012	2012	C	6-11	240	August 13, 1988	Oakland University
Kent Benson	1978	1988	C	6-10	235	December 27, 1954	Indiana University
Ben Bentil	2017	2017	F	6-9	235	March 29, 1995	Providence College
Gene Berce	1950	1950	G-F	5-11	175	November 22, 1926	Marquette University
Gary Bergen	1957	1957	C	6-8	210	July 16, 1932	University of Utah
Larry Bergh	1970	1970	F	6-8	210	April 2, 1945	Weber State University
Ricky Berry	1989	1989	F	6-8	205	October 6, 1964	San Jose State University
Walter Berry	1987	1989	F	6-8	215	May 14, 1964	St. John's University
Davis Bertans	2017	2018	F	6-10	210	November 12, 1992	\N
Del Beshore	1979	1980	G	5-11	165	November 29, 1956	California University of Pennslyvania
Travis Best	1996	2005	G	5-11	182	July 12, 1972	Georgia Institute of Technology
Patrick Beverley	2013	2018	G	6-1	185	July 12, 1988	University of Arkansas
Sim Bhullar	2015	2015	C	7-5	360	December 2, 1992	New Mexico State University
Wesley Bialosuknia	1968	1968	G	6-2	185	June 8, 1945	University of Connecticut
Al Bianchi	1957	1966	G	6-3	185	March 26, 1932	Bowling Green State University
Hank Biasatti	1947	1947	G	5-11	175	January 14, 1922	Long Island University
Henry Bibby	1973	1981	G	6-1	185	November 24, 1949	University of California, Los Angeles
Mike Bibby	1999	2012	G	6-1	190	May 13, 1978	University of Arizona
Ed Biedenbach	1969	1969	G	6-1	175	August 12, 1945	North Carolina State University
Andris Biedrins	2005	2014	C	6-11	240	April 2, 1986	\N
Don Bielke	1956	1956	C	6-7	240	\N	Valparaiso University
Bob Bigelow	1976	1979	F-G	6-7	215	December 26, 1953	University of Pennsylvania
Lionel Billingy	1975	1975	F-C	6-9	215	August 31, 1952	Duquesne University
Chauncey Billups	1998	2014	G	6-3	202	September 25, 1976	University of Colorado
Dave Bing	1967	1978	G	6-3	180	November 24, 1943	Syracuse University
Joe Binion	1987	1987	F	6-8	235	March 26, 1961	North Carolina Agricultural and Technical State University
Khem Birch	2018	2018	C-F	6-9	220	September 28, 1992	University of Nevada, Las Vegas
Jabari Bird	2018	2018	G	6-6	197	July 3, 1994	University of California
Jerry Bird	1959	1959	F	6-6	210	February 2, 1935	University of Kentucky
Larry Bird	1980	1992	F	6-9	220	December 7, 1956	Indiana State University
Otis Birdsong	1978	1989	G	6-3	190	December 9, 1955	University of Houston
Gale Bishop	1949	1949	F	6-3	195	June 4, 1922	Washington State University
Bismack Biyombo	2012	2018	C-F	6-9	255	August 28, 1992	\N
Nemanja Bjelica	2016	2018	F	6-10	240	May 9, 1988	\N
Uwe Blab	1986	1990	C	7-1	252	March 26, 1962	Indiana University
Charlie Black	1949	1952	F-C	6-5	200	June 15, 1921	University of Kansas
Norman Black	1981	1981	G	6-5	185	November 12, 1957	Saint Joseph's University
Tarik Black	2015	2018	C-F	6-9	250	November 22, 1991	University of Kansas
Tom Black	1971	1971	C	6-10	220	July 9, 1941	South Dakota State University
Rolando Blackman	1982	1994	G	6-6	190	February 26, 1959	Kansas State University
Alex Blackwell	1993	1993	F	6-6	250	June 27, 1970	Monmouth University
Cory Blackwell	1985	1985	F	6-6	210	March 27, 1963	University of Wisconsin
James Blackwell	1995	1995	G	6-0	190	February 25, 1968	Dartmouth College
Nate Blackwell	1988	1988	G	6-4	170	February 15, 1965	Temple University
DeJuan Blair	2010	2016	F-C	6-7	270	April 22, 1989	University of Pittsburgh
Steve Blake	2004	2016	G	6-3	172	February 26, 1980	University of Maryland
Antonio Blakeney	2018	2018	G	6-4	197	October 4, 1996	Louisiana State University
Will Blalock	2007	2007	G	6-0	205	September 8, 1983	Iowa State University
George Blaney	1962	1962	G	6-1	175	November 12, 1939	College of the Holy Cross
Lance Blanks	1991	1993	G	6-4	190	September 9, 1966	University of Texas at Austin
Ricky Blanton	1993	1993	F	6-7	215	April 21, 1966	Louisiana State University
Andray Blatche	2006	2014	F	6-11	235	August 22, 1986	\N
Mookie Blaylock	1990	2002	G	6-0	180	March 20, 1967	University of Oklahoma
Eric Bledsoe	2011	2018	G	6-1	205	December 9, 1989	University of Kentucky
Leon Blevins	1951	1951	G	6-2	160	June 25, 1926	University of Arizona
John Block	1967	1976	F-C	6-9	207	April 16, 1944	University of Southern California
Mike Bloom	1948	1949	F-C	6-6	190	January 14, 1915	Temple University
Corie Blount	1994	2004	F	6-9	240	January 4, 1969	University of Cincinnati
Mark Blount	2001	2009	C	7-0	230	November 30, 1975	University of Pittsburgh
Vander Blue	2014	2018	G	6-4	200	July 17, 1992	Marquette University
Ray Blume	1982	1982	G	6-4	185	September 23, 1958	Oregon State University
Nelson Bobb	1950	1953	G	6-0	170	February 25, 1924	Temple University
Tony Bobbitt	2005	2005	G	6-4	190	October 22, 1979	University of Cincinnati
Bucky Bockhorn	1959	1965	G	6-4	200	July 8, 1933	University of Dayton
Tom Boerwinkle	1969	1978	C	7-0	265	August 23, 1945	University of Tennessee
Keith Bogans	2004	2014	G-F	6-5	215	May 12, 1980	University of Kentucky
Bogdan Bogdanovic	2018	2018	G	6-6	205	August 18, 1992	\N
Bojan Bogdanovic	2015	2018	G-F	6-8	216	April 18, 1989	\N
Muggsy Bogues	1988	2001	G	5-3	136	January 9, 1965	Wake Forest University
Andrew Bogut	2006	2018	C	7-0	260	November 28, 1984	University of Utah
Etdrick Bohannon	1998	2001	F	6-9	220	May 29, 1973	Auburn University at Montgomery
Manute Bol	1986	1995	C	7-7	200	October 16, 1962	University of Bridgeport
Bill Bolger	1954	1954	F	6-5	205	August 21, 1931	Georgetown University
Joel Bolomboy	2017	2018	F	6-9	235	January 28, 1994	Weber State University
Doug Bolstorff	1958	1958	G	6-4	195	October 29, 1931	University of Minnesota
George Bon Salle	1962	1962	F	6-8	220	July 1, 1935	University of Illinois at Urbana-Champaign
Phil Bond	1978	1978	G	6-2	175	July 27, 1954	University of Louisville
Walter Bond	1993	1995	G	6-5	200	February 1, 1969	University of Minnesota
Dexter Boney	1997	1997	G	6-4	185	April 27, 1970	University of Nevada, Las Vegas
Ron Bonham	1965	1968	F	6-5	192	May 31, 1942	University of Cincinnati
Anthony Bonner	1991	1996	F	6-8	215	June 8, 1968	Saint Louis University
Matt Bonner	2005	2016	F	6-10	235	April 5, 1980	University of Florida
Butch Booker	1970	1970	C	6-10	230	July 20, 1945	Cheyney University of Pennsylvania
Devin Booker	2016	2018	G	6-6	206	October 30, 1996	University of Kentucky
Melvin Booker	1996	1997	G	6-1	185	August 20, 1972	University of Missouri
Trevor Booker	2011	2018	F	6-8	228	November 25, 1987	Clemson University
Josh Boone	2007	2010	F-C	6-10	237	November 21, 1984	University of Connecticut
Ron Boone	1969	1981	G-F	6-2	200	September 6, 1946	Idaho State University
Calvin Booth	2000	2009	C	6-11	230	May 7, 1976	Pennsylvania State University
Keith Booth	1998	1999	F	6-6	226	October 9, 1974	University of Maryland
Bob Boozer	1961	1971	F	6-8	215	April 26, 1937	Kansas State University
Carlos Boozer	2003	2015	F-C	6-9	258	November 20, 1981	Duke University
Curtis Borchardt	2004	2005	C	7-0	240	September 13, 1980	Stanford University
Jake Bornheimer	1949	1950	F-C	6-5	200	June 29, 1927	Muhlenberg College
Lazaro Borrell	2000	2000	F	6-8	220	September 20, 1972	\N
Ike Borsavage	1951	1951	C-F	6-8	220	July 25, 1924	Temple University
Vince Boryla	1950	1954	F	6-5	210	March 11, 1927	University of Denver
Chris Bosh	2004	2016	F-C	6-11	235	March 24, 1984	Georgia Institute of Technology
Jim Bostic	1978	1978	F	6-7	225	January 28, 1953	New Mexico State University
Lawrence Boston	1980	1980	F	6-8	225	May 18, 1956	University of Maryland
Tom Boswell	1976	1984	F-C	6-9	220	October 2, 1953	University of South Carolina
Ruben Boumtje-Boumtje	2002	2004	C	7-0	257	May 20, 1978	Georgetown University
Don Boven	1950	1953	F-G	6-4	210	March 6, 1925	Western Michigan University
Cal Bowdler	2000	2002	F	6-10	245	March 31, 1977	Old Dominion University
Bruce Bowen	1997	2009	F	6-7	185	June 14, 1971	California State University, Fullerton
Ryan Bowen	2000	2010	F	6-7	215	November 20, 1975	University of Iowa
Tommie Bowens	1968	1970	F-C	6-8	220	July 7, 1940	Grambling State University
Anthony Bowie	1989	1998	G-F	6-6	190	November 9, 1963	University of Oklahoma
Sam Bowie	1985	1995	C-F	7-1	235	March 17, 1961	University of Kentucky
Orbie Bowling	1968	1968	C	6-10	215	March 21, 1939	University of Tennessee
Ira Bowman	2000	2002	G	6-5	195	June 11, 1973	University of Pennsylvania
Nate Bowman	1967	1972	C	6-10	230	March 19, 1943	Wichita State University
Donnie Boyce	1996	1997	G	6-5	196	September 2, 1973	University of Colorado
Dennis Boyd	1979	1979	G	6-1	175	May 21, 1954	University of Detroit Mercy
Freddie Boyd	1973	1978	G	6-2	180	June 13, 1950	Oregon State University
Ken Boyd	1975	1975	F	6-5	195	March 25, 1952	Boston University
Earl Boykins	1999	2012	G	5-5	135	June 2, 1976	Eastern Michigan University
Harry Boykoff	1950	1951	C	6-10	225	July 24, 1922	St. John's University
Winford Boynes	1979	1981	G-F	6-6	185	May 17, 1957	University of San Francisco
Cedric Bozeman	2007	2007	G	6-6	207	March 7, 1983	University of California, Los Angeles
Steve Bracey	1973	1975	G	6-1	175	August 1, 1950	University of Tulsa
Craig Brackins	2011	2012	F	6-10	230	October 9, 1987	Iowa State University
Gary Bradds	1965	1971	F	6-8	210	July 26, 1942	Ohio State University
Alex Bradley	1982	1982	F	6-6	215	October 30, 1959	Villanova University
Alonzo Bradley	1978	1980	F	6-6	190	October 16, 1953	Texas Southern University
Avery Bradley	2011	2018	G	6-2	180	November 26, 1990	University of Texas at Austin
Bill Bradley	1968	1968	G	5-11	165	June 16, 1941	\N
Bill Bradley	1968	1977	F-G	6-5	205	July 28, 1943	Princeton University
Charles Bradley	1982	1984	G	6-5	215	May 16, 1959	University of Wyoming
Dudley Bradley	1980	1989	G-F	6-6	195	March 19, 1957	University of North Carolina
Jim Bradley	1974	1976	F	6-8	215	March 16, 1952	Northern Illinois University
Joe Bradley	1950	1950	G	6-3	175	September 24, 1928	Oklahoma State University
Michael Bradley	2002	2006	F-C	6-10	245	April 18, 1979	Villanova University
Shawn Bradley	1994	2005	C	7-6	235	March 22, 1972	Brigham Young University
Tony Bradley	2018	2018	F-C	6-11	240	January 8, 1998	University of North Carolina
Mark Bradtke	1997	1997	C-F	6-10	265	September 27, 1968	\N
Marques Bragg	1996	1996	F	6-8	230	March 24, 1970	Providence College
Torraye Braggs	2004	2005	F	6-8	245	May 15, 1976	Xavier University
A.J. Bramlett	2000	2000	C	6-10	227	January 10, 1977	University of Arizona
Adrian Branch	1987	1990	F-G	6-7	185	November 17, 1963	University of Maryland
Elton Brand	2000	2016	F	6-8	275	March 11, 1979	Duke University
Terrell Brandon	1992	2002	G	5-11	180	May 20, 1970	University of Oregon
Bob Brannum	1950	1955	F-C	6-5	215	May 28, 1925	Michigan State University
Brad Branson	1982	1983	C-F	6-10	220	September 24, 1958	Southern Methodist University
Jesse Branson	1966	1968	F	6-7	195	January 7, 1942	Elon University
Jim Brasco	1953	1953	G	6-1	170	February 3, 1931	New York University
Mike Bratz	1978	1986	G	6-2	185	October 17, 1955	Stanford University
Carl Braun	1948	1962	G-F	6-5	180	September 25, 1927	Colgate University
Tim Breaux	1995	1998	F	6-7	215	September 19, 1970	University of Wyoming
J.R. Bremer	2003	2004	G	6-2	185	September 19, 1980	St. Bonaventure University
Pete Brennan	1959	1959	F	6-6	205	September 23, 1936	University of North Carolina
Tom Brennan	1955	1955	F	6-3	195	August 6, 1930	Villanova University
Randy Breuer	1984	1994	C	7-3	230	October 11, 1960	University of Minnesota
Corey Brewer	2008	2018	F-G	6-9	186	March 5, 1986	University of Florida
Jamison Brewer	2002	2005	G	6-4	184	November 19, 1980	Auburn University
Jim Brewer	1974	1982	F-C	6-9	210	December 3, 1951	University of Minnesota
Ron Brewer	1979	1986	G	6-4	180	September 16, 1955	University of Arkansas
Ronnie Brewer	2007	2014	G-F	6-7	220	March 20, 1985	University of Arkansas
Primoz Brezec	2002	2010	C	7-2	252	October 2, 1979	\N
Frankie Brian	1950	1956	G	6-1	180	May 1, 1923	Louisiana State University
Frank Brickowski	1985	1997	F-C	6-9	240	August 14, 1959	Pennsylvania State University
Junior Bridgeman	1976	1987	F-G	6-5	210	September 17, 1953	University of Louisville
Bill Bridges	1963	1975	F-C	6-6	228	April 4, 1939	University of Kansas
Al Brightman	1947	1947	F	6-2	195	September 22, 1923	University of Charleston
Aud Brindley	1947	1947	F	6-4	175	December 31, 1923	Dartmouth College
John Brisker	1970	1975	F-G	6-5	210	June 15, 1947	University of Toledo
Allan Bristow	1974	1983	F-G	6-7	210	August 23, 1951	Virginia Polytechnic Institute and State University
Tyrone Britt	1968	1968	G	6-4	190	April 18, 1944	Johnson C. Smith University
Wayman Britt	1978	1978	G	6-2	185	August 31, 1952	University of Michigan
Mike Brittain	1986	1987	C	7-0	235	June 21, 1963	University of South Carolina
Dave Britton	1981	1981	G	6-4	180	August 29, 1958	Texas A&M University
Jon Brockman	2010	2012	F	6-7	255	March 20, 1987	University of Washington
Jim Brogan	1982	1983	G	6-4	185	February 24, 1958	West Virginia Wesleyan College
Malcolm Brogdon	2017	2018	G	6-5	215	December 11, 1992	University of Virginia
Gary Brokaw	1975	1978	G	6-4	178	January 11, 1954	University of Notre Dame
Price Brookfield	1949	1950	F-G	6-4	185	May 11, 1920	West Texas A&M University
Clarence Brookins	1971	1971	F	6-4	190	\N	Temple University
Aaron Brooks	2008	2018	G	6-0	161	January 14, 1985	University of Oregon
Dillon Brooks	2018	2018	G-F	6-6	220	January 22, 1996	University of Oregon
Kevin Brooks	1992	1994	F	6-6	200	October 12, 1969	University of Louisiana at Lafayette
MarShon Brooks	2012	2014	G-F	6-5	200	January 26, 1989	Providence College
Michael Brooks	1981	1988	F	6-7	220	August 17, 1958	La Salle University
Scott Brooks	1989	1998	G	5-11	165	July 31, 1965	University of California, Irvine
Andre Brown	2007	2009	F	6-9	245	May 12, 1981	DePaul University
Anthony Brown	2016	2017	F-G	6-7	210	October 10, 1992	Stanford University
Bob Brown	1949	1950	F	6-4	205	November 12, 1923	Miami University
Bobby Brown	2009	2018	G	6-2	175	September 24, 1984	California State University, Fullerton
Chucky Brown	1990	2002	F	6-7	214	February 29, 1968	North Carolina State University
Damone Brown	2002	2005	F	6-9	200	June 28, 1979	Syracuse University
Darrell Brown	1949	1949	F	6-2	175	March 14, 1923	Humboldt State University
Dee Brown	1991	2002	G	6-1	160	November 29, 1968	Jacksonville University
Dee Brown	2007	2009	G	6-0	185	August 17, 1984	University of Illinois at Urbana-Champaign
Derrick Brown	2010	2012	F	6-7	225	September 8, 1987	Xavier University
Devin Brown	2003	2010	G	6-5	220	December 30, 1978	University of Texas at San Antonio
Ernest Brown	2002	2002	C	7-0	244	May 17, 1979	Indian Hills Community College
Fred Brown	1972	1984	G	6-3	182	August 7, 1948	University of Iowa
George Brown	1958	1958	F	6-6	190	October 30, 1935	Wayne State University
Gerald Brown	1999	1999	G	6-4	210	July 28, 1975	Pepperdine University
Harold Brown	1947	1947	G	6-0	155	October 2, 1923	University of Evansville
Jabari Brown	2015	2015	G	6-4	215	December 18, 1992	University of Missouri
Jaylen Brown	2017	2018	F-G	6-7	225	October 24, 1996	University of California
John Brown	1974	1980	F	6-7	220	December 14, 1951	University of Missouri
Kedrick Brown	2002	2005	G	6-7	222	March 18, 1981	Okaloosa-Walton Community College
Kwame Brown	2002	2013	F	6-11	270	March 10, 1982	\N
Larry Brown	1968	1972	G	5-9	160	September 14, 1940	University of North Carolina
Leon Brown	1947	1947	F	6-3	190	October 12, 1919	University of Wyoming
Lewis Brown	1981	1981	C	6-11	225	February 19, 1955	University of Nevada, Las Vegas
Lorenzo Brown	2014	2018	G	6-5	189	August 26, 1990	North Carolina State University
Marcus Brown	1997	2000	G	6-3	185	April 3, 1974	Murray State University
Markel Brown	2015	2016	G	6-3	190	January 29, 1992	Oklahoma State University
Mike Brown	1987	1997	C-F	6-9	257	July 19, 1963	George Washington University
Myron Brown	1992	1992	G	6-3	180	November 3, 1969	Slippery Rock University of Pennsylvania
P.J. Brown	1994	2008	F-C	6-11	225	October 14, 1969	Louisiana Tech University
Randy Brown	1992	2003	G	6-2	190	May 22, 1968	New Mexico State University
Raymond Brown	1990	1990	F	6-8	220	July 5, 1965	University of Idaho
Rickey Brown	1981	1985	C-F	6-10	215	August 20, 1958	Mississippi State University
Roger Brown	1968	1975	F-G	6-5	205	May 22, 1942	University of Dayton
Roger Brown	1973	1980	C	6-11	225	February 23, 1950	University of Kansas
Shannon Brown	2007	2015	G	6-4	205	November 29, 1985	Michigan State University
Stan Brown	1948	1952	F	6-3	200	June 27, 1929	\N
Sterling Brown	2018	2018	G	6-5	225	February 10, 1995	Southern Methodist University
Tierre Brown	2002	2005	G	6-2	189	June 3, 1979	McNeese State University
Tony Brown	1985	1992	F-G	6-6	185	July 29, 1960	University of Arkansas
Jim Browne	1949	1950	C	6-10	235	January 1, 1930	\N
Stanley Brundy	1990	1990	F	6-6	210	November 13, 1967	DePaul University
Brian Brunkhorst	1969	1969	F	6-6	208	June 12, 1945	Marquette University
George Bruns	1973	1973	G	6-0	160	August 30, 1946	Manhattan College
Rick Brunson	1998	2006	G	6-4	190	June 14, 1972	Temple University
Nicolas Brussino	2017	2018	G-F	6-7	195	March 2, 1993	\N
Em Bryant	1965	1972	G	6-1	175	November 4, 1938	DePaul University
Joe Bryant	1976	1983	F-C	6-9	185	October 19, 1954	La Salle University
Kobe Bryant	1997	2016	G-F	6-6	212	August 23, 1978	\N
Mark Bryant	1989	2003	F-C	6-9	245	April 25, 1965	Seton Hall University
Thomas Bryant	2018	2018	C	6-10	248	July 31, 1997	Indiana University
Wallace Bryant	1984	1986	C	7-0	245	July 14, 1959	University of San Francisco
Torgeir Bryn	1990	1990	C	6-9	250	August 8, 1964	Texas State University
George Bucci	1976	1976	G	6-3	200	July 9, 1953	Manhattan College
Joe Buckhalter	1962	1963	F	6-7	210	August 1, 1937	Tennessee State University
Steve Bucknall	1990	1990	G	6-6	215	March 17, 1966	University of North Carolina
Cleveland Buckner	1962	1963	F-C	6-9	210	August 17, 1938	Jackson State University
Greg Buckner	2000	2009	G	6-4	210	September 16, 1976	Clemson University
Quinn Buckner	1977	1986	G	6-3	190	August 20, 1954	Indiana University
Dave Budd	1961	1965	F	6-6	205	October 28, 1938	Wake Forest University
Chase Budinger	2010	2016	F	6-7	209	May 22, 1988	University of Arizona
Walt Budko	1949	1952	F-C	6-5	220	July 30, 1925	Columbia University
Jud Buechler	1991	2002	F-G	6-6	220	June 19, 1968	University of Arizona
Rodney Buford	2000	2005	G-F	6-5	189	November 2, 1977	Creighton University
Matt Bullard	1991	2002	F	6-10	215	June 5, 1967	University of Iowa
Reggie Bullock	2014	2018	G-F	6-7	205	March 16, 1991	University of North Carolina
Larry Bunce	1968	1969	C	7-0	240	July 29, 1945	Utah State University
Greg Bunch	1979	1979	F	6-6	190	May 15, 1956	California State University, Fullerton
Dick Bunt	1953	1953	G	6-0	170	July 13, 1930	New York University
Bill Buntin	1966	1966	C-F	6-7	250	May 5, 1942	University of Michigan
Bill Bunting	1970	1972	F-C	6-8	200	August 26, 1947	University of North Carolina
Ticky Burden	1976	1978	G	6-2	185	February 28, 1953	University of Utah
Pat Burke	2003	2007	C-F	6-11	250	December 14, 1973	Auburn University
Trey Burke	2014	2017	G	6-1	191	November 12, 1992	University of Michigan
Roger Burkman	1982	1982	G	6-5	175	May 22, 1958	University of Louisville
Alec Burks	2012	2018	G	6-6	214	July 20, 1991	University of Colorado
Antonio Burks	2005	2006	G	6-1	200	February 25, 1980	University of Memphis
Kevin Burleson	2006	2006	G	6-3	205	April 9, 1979	University of Minnesota
Tom Burleson	1975	1981	C	7-2	225	February 24, 1952	North Carolina State University
Jack Burmaster	1950	1950	G	6-3	190	December 23, 1926	University of Illinois at Urbana-Champaign
David Burns	1982	1982	G	6-2	180	July 3, 1958	Saint Louis University
Evers Burns	1994	1994	F	6-8	260	August 24, 1971	University of Maryland
Jim Burns	1968	1968	G	6-3	195	September 21, 1945	Northwestern University
Scott Burrell	1994	2001	G-F	6-7	218	January 12, 1971	University of Connecticut
Art Burris	1951	1952	F	6-5	220	April 7, 1924	University of Tennessee
Junior Burrough	1996	1996	F	6-8	242	January 18, 1973	University of Virginia
Bob Burrow	1957	1958	C-F	6-7	228	June 29, 1934	University of Kentucky
Ed Burton	1962	1965	F	6-6	225	August 13, 1939	Michigan State University
Willie Burton	1991	1999	F-G	6-8	210	May 26, 1968	University of Minnesota
Steve Burtt	1985	1993	G	6-2	185	November 5, 1962	Iona College
Don Buse	1973	1985	G	6-4	190	August 10, 1950	University of Evansville
David Bustion	1973	1973	F	6-8	215	August 30, 1949	University of Denver
Donnie Butcher	1962	1966	G	6-2	200	February 8, 1936	Pikeville College
Al Butler	1962	1965	G	6-2	175	July 9, 1938	Niagara University
Caron Butler	2003	2016	F	6-7	228	March 13, 1980	University of Connecticut
Greg Butler	1989	1991	C	6-11	240	March 11, 1966	Stanford University
Jackie Butler	2005	2007	F-C	6-10	250	March 10, 1985	\N
Jimmy Butler	2012	2018	F-G	6-8	236	September 14, 1989	Marquette University
Mike Butler	1969	1972	G	6-2	170	October 22, 1946	University of Memphis
Mitchell Butler	1994	2004	G-F	6-5	210	December 15, 1970	University of California, Los Angeles
Rasual Butler	2003	2016	F-G	6-7	215	May 23, 1979	La Salle University
Dwight Buycks	2014	2015	G	6-3	190	March 6, 1989	Marquette University
Derrick Byars	2012	2012	F	6-7	220	April 25, 1984	Vanderbilt University
Andrew Bynum	2006	2014	C	7-0	285	October 27, 1987	\N
Will Bynum	2006	2015	G	6-0	185	January 4, 1983	Georgia Institute of Technology
Walter Byrd	1970	1970	F	6-7	205	\N	Temple University
Marty Byrnes	1979	1983	F	6-7	215	April 30, 1956	Syracuse University
Tommy Byrnes	1947	1951	F-G	6-3	175	February 19, 1923	Seton Hall University
Michael Bytzura	1947	1947	F	6-1	170	June 18, 1922	Long Island University
Zarko Cabarkapa	2004	2006	F	6-11	235	May 21, 1981	\N
Barney Cable	1959	1964	F	6-7	175	July 29, 1935	Bradley University
Bruno Caboclo	2015	2018	F	6-9	218	September 21, 1995	\N
Jason Caffey	1996	2003	F	6-8	255	June 12, 1973	University of Alabama
Michael Cage	1985	2000	F-C	6-9	224	January 28, 1962	San Diego State University
Gerry Calabrese	1951	1952	G	6-1	175	February 4, 1925	St. John's University
Nick Calathes	2014	2015	G	6-6	213	February 7, 1989	University of Florida
Jose Calderon	2006	2018	G	6-3	200	September 28, 1981	\N
Adrian Caldwell	1990	1998	F-C	6-8	265	July 4, 1966	Lamar University
Jim Caldwell	1968	1969	C	6-10	240	January 28, 1943	Georgia Institute of Technology
Joe Caldwell	1965	1975	F-G	6-5	195	November 1, 1941	Arizona State University
Kentavious Caldwell-Pope	2014	2018	G	6-5	205	February 18, 1993	University of Georgia
Bill Calhoun	1949	1955	F-G	6-3	180	November 4, 1927	City College of San Francisco
Corky Calhoun	1973	1980	F	6-7	210	November 1, 1950	University of Pennsylvania
Demetrius Calip	1992	1992	G	6-1	165	November 18, 1969	University of Michigan
Tom Callahan	1947	1947	G	6-1	180	June 2, 1921	Rockhurst University
Rick Calloway	1991	1991	F	6-6	180	December 12, 1966	University of Kansas
Ernie Calverley	1947	1949	G	5-10	145	January 30, 1924	University of Rhode Island
Mack Calvin	1970	1981	G	6-0	165	July 27, 1947	University of Southern California
Dexter Cambridge	1993	1993	F	6-7	224	January 29, 1970	University of Texas at Austin
Marcus Camby	1997	2013	C-F	6-11	220	March 22, 1974	University of Massachusetts Amherst
Elden Campbell	1991	2005	C	6-11	215	July 23, 1968	Clemson University
Tony Campbell	1985	1995	F-G	6-7	215	May 7, 1962	Ohio State University
Isaiah Canaan	2014	2018	G	6-0	201	May 21, 1991	Murray State University
Larry Cannon	1970	1974	G	6-4	195	April 12, 1947	La Salle University
Clint Capela	2015	2018	C	6-10	240	May 18, 1994	\N
Derrick Caracter	2011	2011	F	6-9	275	May 4, 1988	University of Texas at El Paso
Frank Card	1969	1973	F	6-7	195	December 28, 1944	South Carolina State University
Brian Cardinal	2001	2012	F	6-8	245	May 2, 1977	Purdue University
Howie Carl	1962	1962	G	5-9	160	June 7, 1938	DePaul University
Chet Carlisle	1947	1947	F-C	6-5	195	November 2, 1916	University of California
Geno Carlisle	2005	2005	G	6-3	180	August 13, 1976	University of California
Rick Carlisle	1985	1990	G	6-5	210	October 27, 1959	University of Virginia
Don Carlos	1969	1969	G-F	6-5	210	March 3, 1944	Otterbein College
Al Carlson	1976	1976	C	6-11	235	September 17, 1951	University of Oregon
Don Carlson	1947	1951	G-F	6-0	170	March 22, 1919	University of Minnesota
Bob Carney	1955	1955	G	6-3	170	August 3, 1932	Bradley University
Rodney Carney	2007	2011	F	6-7	205	April 15, 1984	University of Memphis
Bob Carpenter	1950	1951	F-C	6-5	200	November 6, 1917	East Texas State University
Antoine Carr	1985	2000	F-C	6-9	225	July 23, 1961	Wichita State University
Austin Carr	1972	1981	G	6-4	200	March 10, 1948	University of Notre Dame
Chris Carr	1996	2001	G	6-5	207	March 12, 1974	Southern Illinois University
Cory Carr	1999	1999	G	6-3	210	December 5, 1975	Texas Tech University
Kenny Carr	1978	1987	F	6-7	220	August 15, 1955	North Carolina State University
M.L. Carr	1976	1985	F-G	6-6	205	January 9, 1951	Guilford College
Darel Carrier	1968	1973	G	6-3	185	October 26, 1940	Western Kentucky University
Bob Carrington	1978	1980	G-F	6-6	195	July 3, 1953	Boston College
DeMarre Carroll	2010	2018	F	6-8	215	July 27, 1986	University of Missouri
Joe Barry Carroll	1981	1991	C-F	7-0	225	July 24, 1958	Purdue University
Matt Carroll	2004	2013	G	6-6	212	August 28, 1980	University of Notre Dame
Jimmy Carruth	1997	1997	C-F	6-10	265	November 4, 1969	Virginia Polytechnic Institute and State University
Anthony Carter	2000	2012	G	6-1	190	June 16, 1975	University of Hawaii
Butch Carter	1981	1986	G	6-5	180	June 11, 1958	Indiana University
Fred Carter	1970	1977	G-F	6-3	185	February 14, 1945	Mount St. Mary's University
George Carter	1968	1976	F-G	6-4	210	January 10, 1944	St. Bonaventure University
Howard Carter	1984	1985	G	6-5	215	October 26, 1961	Louisiana State University
Jake Carter	1950	1950	F-C	6-4	195	July 25, 1924	East Texas State University
Maurice Carter	2004	2004	G	6-5	210	October 12, 1976	Louisiana State University
Reggie Carter	1981	1982	G	6-3	175	October 10, 1957	St. John's University
Ron Carter	1979	1980	G	6-5	190	August 31, 1956	Virginia Military Institute
Vince Carter	1999	2018	G-F	6-6	220	January 26, 1977	University of North Carolina
Michael Carter-Williams	2014	2018	G	6-6	190	October 10, 1991	Syracuse University
Bill Cartwright	1980	1995	C	7-1	245	July 30, 1957	University of San Francisco
Jay Carty	1969	1969	F	6-8	220	July 4, 1941	Oregon State University
Alex Caruso	2018	2018	G	6-5	186	February 28, 1994	Texas A&M University
Cornelius Cash	1977	1977	F	6-8	215	March 3, 1952	Bowling Green State University
Sam Cash	1973	1973	F	6-8	230	November 13, 1950	University of California, Riverside
Sam Cassell	1994	2008	G	6-3	185	November 18, 1969	Florida State University
Omri Casspi	2010	2018	F	6-9	225	June 22, 1988	\N
Harvey Catchings	1975	1985	C-F	6-9	218	September 2, 1951	Hardin-Simmons University
Terry Catledge	1986	1993	F	6-8	220	August 22, 1963	University of South Alabama
Sid Catlett	1972	1972	F	6-6	230	April 18, 1948	University of Notre Dame
Kelvin Cato	1998	2007	C	6-11	255	August 26, 1974	Iowa State University
Bobby Cattage	1982	1986	F	6-9	250	August 17, 1958	Auburn University
Willie Cauley-Stein	2016	2018	F-C	7-0	240	August 18, 1993	University of Kentucky
Duane Causwell	1991	2001	C	7-0	240	May 31, 1968	Temple University
Tyler Cavanaugh	2018	2018	F	6-9	239	February 9, 1994	George Washington University
Ron Cavenall	1985	1989	C	7-1	230	April 30, 1959	Texas Southern University
Cedric Ceballos	1991	2001	F	6-6	190	August 2, 1969	California State University, Fullerton
John Celestand	2000	2000	G	6-4	178	March 6, 1977	Villanova University
Al Cervi	1950	1953	G-F	5-11	170	February 12, 1917	\N
Lionel Chalmers	2005	2005	G	6-0	180	November 10, 1980	Xavier University
Mario Chalmers	2009	2018	G	6-2	190	May 19, 1986	University of Kansas
Bill Chamberlain	1973	1974	F	6-6	188	December 16, 1949	University of North Carolina
Wilt Chamberlain	1960	1973	C	7-1	275	August 21, 1936	University of Kansas
Jerry Chambers	1967	1974	F	6-5	185	July 18, 1943	University of Utah
Tom Chambers	1982	1998	F-C	6-10	220	June 21, 1959	University of Utah
Mike Champion	1989	1989	F	6-10	230	April 5, 1964	Gonzaga University
Tyson Chandler	2002	2018	C	7-1	240	October 2, 1982	\N
Wilson Chandler	2008	2018	F	6-8	225	May 10, 1987	DePaul University
Don Chaney	1969	1980	G	6-5	210	March 22, 1946	University of Houston
John Chaney	1950	1950	F-C	6-3	185	February 29, 1920	Louisiana State University
Rex Chapman	1989	2000	G	6-4	185	October 5, 1967	University of Kentucky
Wayne Chapman	1969	1972	G-F	6-6	190	June 15, 1945	Western Kentucky University
Len Chappell	1963	1972	F-C	6-8	240	January 31, 1941	Wake Forest University
Ken Charles	1974	1978	G	6-3	180	July 10, 1951	Fordham University
Lorenzo Charles	1986	1986	F	6-7	225	November 25, 1963	North Carolina State University
Calbert Cheaney	1994	2006	G-F	6-7	209	July 17, 1971	Indiana University
Maurice Cheeks	1979	1993	G	6-1	180	September 8, 1956	West Texas A&M University
Phil Chenier	1972	1981	G	6-3	180	October 30, 1950	University of California
Will Cherry	2015	2015	G	6-0	185	February 8, 1991	University of Montana
Derrick Chievous	1989	1991	F	6-7	195	July 3, 1967	University of Missouri
Pete Chilcutt	1992	2000	F-C	6-10	230	September 14, 1968	University of North Carolina
Josh Childress	2005	2014	G-F	6-8	210	June 20, 1983	Stanford University
Randolph Childress	1996	1997	G	6-2	188	September 21, 1972	Wake Forest University
Chris Childs	1995	2003	G	6-3	195	November 20, 1967	Boise State University
Leroy Chollet	1950	1951	F	6-2	190	March 5, 1925	Canisius College
Jim Chones	1973	1982	C-F	6-11	220	November 30, 1949	Marquette University
Marquese Chriss	2017	2018	F	6-10	233	July 2, 1997	University of Washington
Fred Christ	1955	1955	G	6-4	210	August 6, 1930	Fordham University
Cal Christensen	1951	1955	F-C	6-5	210	June 6, 1927	University of Toledo
Bob Christian	1970	1974	C	6-10	255	May 11, 1946	Grambling State University
Doug Christie	1993	2007	G-F	6-6	200	May 9, 1970	Pepperdine University
Dionte Christmas	2014	2014	G	6-5	205	September 15, 1986	Temple University
Rakeem Christmas	2016	2017	F	6-9	250	December 1, 1991	Syracuse University
Semaj Christon	2017	2017	G	6-3	190	November 1, 1992	Xavier University
Patrick Christopher	2015	2015	G-F	6-5	209	June 3, 1988	University of California
Stephen Chubin	1968	1970	G	6-2	200	February 8, 1944	University of Rhode Island
Robert Churchwell	1996	1996	G-F	6-6	195	February 20, 1972	Georgetown University
Archie Clark	1967	1976	G	6-2	175	July 15, 1941	University of Minnesota
Carlos Clark	1984	1985	G	6-4	210	August 10, 1960	University of Mississippi
Earl Clark	2010	2015	F	6-10	225	January 17, 1988	University of Louisville
Ian Clark	2014	2018	G	6-3	175	March 7, 1991	Belmont University
Keon Clark	1999	2004	F-C	6-11	220	April 16, 1975	University of Nevada, Las Vegas
Richard Clark	1968	1969	G	6-4	190	January 5, 1944	Eastern Kentucky University
Coty Clarke	2016	2016	F	6-7	232	July 4, 1992	University of Arkansas
Jordan Clarkson	2015	2018	G	6-5	194	June 7, 1992	University of Missouri
Gian Clavell	2018	2018	G	6-4	185	November 26, 1993	Colorado State University
Victor Claver	2013	2015	F	6-9	224	August 30, 1988	\N
John Clawson	1969	1969	F	6-4	200	May 15, 1944	University of Michigan
Charles Claxton	1996	1996	C	7-0	265	December 13, 1970	University of Georgia
Speedy Claxton	2002	2009	G	5-11	166	May 8, 1978	Hofstra University
Jim Cleamons	1972	1980	G	6-3	185	September 13, 1949	Ohio State University
Mateen Cleaves	2001	2006	G	6-2	205	September 7, 1977	Michigan State University
Barry Clemens	1966	1976	F	6-6	210	May 1, 1943	Ohio Wesleyan University
Antonius Cleveland	2018	2018	G	6-6	195	February 2, 1994	Southeast Missouri State University
Nat Clifton	1951	1958	C-F	6-6	220	October 13, 1922	Xavier University of Louisiana
Bill Closs	1950	1952	F-C	6-5	195	January 8, 1922	Rice University
Keith Closs	1998	2000	C	7-3	212	April 3, 1976	Central Connecticut State University
Paul Cloyd	1950	1950	G-F	6-2	180	June 13, 1920	University of Wisconsin
Bob Cluggish	1947	1947	C	6-10	235	September 18, 1917	University of Kentucky
Ben Clyde	1975	1975	F	6-7	198	June 10, 1951	Florida State University
Richard Coffey	1991	1991	F	6-6	212	September 2, 1965	University of Minnesota
Fred Cofield	1986	1987	G	6-3	190	January 4, 1962	Eastern Michigan University
John Coker	1996	2001	C	7-0	253	October 28, 1971	Boise State University
Norris Cole	2012	2017	G	6-2	175	October 13, 1988	Cleveland State University
Ben Coleman	1987	1994	F	6-9	235	November 14, 1961	University of Maryland
Derrick Coleman	1991	2005	F	6-10	230	June 21, 1967	Syracuse University
E.C. Coleman	1974	1979	F	6-8	225	September 25, 1950	Houston Baptist University
Jack Coleman	1950	1958	F-C	6-7	195	May 23, 1924	University of Louisville
Norris Coleman	1988	1988	F	6-8	210	September 27, 1961	Kansas State University
Bimbo Coles	1991	2004	G	6-1	180	April 22, 1968	Virginia Polytechnic Institute and State University
Jason Collier	2001	2005	C	7-0	260	September 8, 1977	Georgia Institute of Technology
Art Collins	1981	1981	G	6-4	185	April 14, 1954	St. Thomas University
Don Collins	1981	1987	F-G	6-6	190	November 28, 1958	Washington State University
Doug Collins	1974	1981	G-F	6-6	180	July 28, 1951	Illinois State University
James Collins	1998	1998	G	6-4	196	November 5, 1973	Florida State University
Jarron Collins	2002	2011	F-C	6-11	255	December 2, 1978	Stanford University
Jason Collins	2002	2014	C	7-0	255	December 2, 1978	Stanford University
Jimmy Collins	1971	1972	G	6-2	175	November 24, 1946	New Mexico State University
John Collins	2018	2018	F	6-10	235	September 23, 1997	Wake Forest University
Mardy Collins	2007	2010	G	6-6	220	August 4, 1984	Temple University
Sherron Collins	2011	2011	G	5-11	205	March 18, 1987	University of Kansas
Zach Collins	2018	2018	C-F	7-0	232	November 19, 1997	Gonzaga University
Kyle Collinsworth	2018	2018	G-F	6-6	210	October 3, 1991	Brigham Young University
Darren Collison	2010	2018	G	6-0	175	August 23, 1987	University of California, Los Angeles
Nick Collison	2005	2018	F	6-10	255	October 26, 1980	University of Kansas
Joe Colone	1949	1949	F	6-5	210	January 23, 1924	Bloomsburg University of Pennsylvania
Sean Colson	2001	2001	G	6-0	175	July 1, 1975	University of North Carolina at Charlotte
Steve Colter	1985	1995	G	6-3	165	July 24, 1962	New Mexico State University
Glen Combs	1969	1975	G	6-2	185	October 30, 1946	Virginia Polytechnic Institute and State University
Leroy Combs	1984	1984	F	6-8	210	January 1, 1961	Oklahoma State University
John Comeaux	1968	1968	F	6-5	193	September 15, 1943	Grambling State University
Dallas Comegys	1988	1989	F	6-9	205	August 17, 1964	DePaul University
Larry Comley	1964	1964	G	6-5	210	August 17, 1939	Kansas State University
Jeffrey Congdon	1968	1972	G	6-1	180	October 17, 1943	Brigham Young University
Gene Conley	1953	1964	C-F	6-8	225	November 10, 1930	Washington State University
Larry Conley	1968	1968	G	6-3	175	January 22, 1944	University of Kentucky
Mike Conley	2008	2018	G	6-1	175	October 11, 1987	Ohio State University
Ed Conlin	1956	1962	F-G	6-5	200	September 2, 1933	Fordham University
Marty Conlon	1992	2000	F-C	6-10	224	January 19, 1968	Providence College
Pat Connaughton	2016	2018	G	6-5	206	January 6, 1993	University of Notre Dame
Jimmy Conner	1976	1976	G	6-4	190	March 20, 1953	University of Kentucky
Lester Conner	1983	1995	G	6-4	180	September 17, 1959	Oregon State University
Chuck Connors	1947	1948	F-C	6-5	190	April 10, 1921	Seton Hall University
Will Conroy	2007	2013	G	6-2	195	December 8, 1982	University of Washington
Anthony Cook	1991	1996	F-C	6-9	205	March 19, 1967	University of Arizona
Bert Cook	1955	1955	G-F	6-3	185	April 26, 1929	Utah State University
Bobby Cook	1950	1950	G-F	5-10	155	April 1, 1923	University of Wisconsin
Brian Cook	2004	2012	F	6-9	234	December 4, 1980	University of Illinois at Urbana-Champaign
Daequan Cook	2008	2013	G	6-5	205	April 28, 1987	Ohio State University
Darwin Cook	1981	1989	G	6-3	184	August 6, 1958	University of Portland
Jeff Cook	1980	1988	F-C	6-10	215	October 21, 1956	Idaho State University
Norm Cook	1977	1978	F	6-8	210	March 21, 1955	University of Kansas
Omar Cook	2004	2005	G	6-1	190	January 28, 1982	St. John's University
Quinn Cook	2017	2018	G	6-2	184	March 23, 1993	Duke University
Charles Cooke	2018	2018	G	6-5	196	July 1, 1994	University of Dayton
David Cooke	1986	1986	F	6-8	230	September 27, 1963	Saint Mary's College of California
Joe Cooke	1971	1971	G	6-3	175	August 14, 1948	Indiana University
Jack Cooley	2015	2018	F-C	6-9	260	April 4, 1991	University of Notre Dame
Chuck Cooper	1951	1956	F	6-5	210	September 29, 1926	Duquesne University
Duane Cooper	1993	1994	G	6-1	185	June 25, 1969	University of Southern California
Joe Cooper	1982	1985	C-F	6-10	230	September 1, 1957	University of Colorado
Michael Cooper	1979	1990	G-F	6-5	170	April 15, 1956	University of New Mexico
Wayne Cooper	1979	1992	C-F	6-10	220	November 16, 1956	University of New Orleans
Tom Copa	1992	1992	C	6-10	275	October 30, 1964	Marquette University
Chris Copeland	2013	2016	F	6-9	239	March 17, 1984	University of Colorado
Hollis Copeland	1980	1982	F	6-6	180	December 20, 1955	Rutgers University
Lanard Copeland	1990	1992	G	6-6	190	July 16, 1965	Georgia State University
Tyrone Corbin	1986	2001	G-F	6-6	210	December 31, 1962	DePaul University
Chris Corchiani	1992	1994	G	6-0	185	March 28, 1968	North Carolina State University
Ken Corley	1947	1947	C	6-5	210	\N	Oklahoma State Teachers College
Ray Corley	1950	1953	G	6-0	180	January 1, 1928	Georgetown University
Dave Corzine	1979	1991	C	6-11	250	April 25, 1956	DePaul University
Larry Costello	1955	1968	G	6-1	186	July 2, 1931	Niagara University
Matt Costello	2018	2018	F	6-9	245	August 5, 1993	Michigan State University
Bryce Cotton	2015	2016	G	6-1	165	August 11, 1992	Providence College
Jack Cotton	1950	1950	F-C	6-7	200	October 25, 1924	University of Wyoming
James Cotton	1998	1999	G	6-5	220	December 14, 1975	California State University, Long Beach
John Coughran	1980	1980	F	6-7	225	September 12, 1951	University of California
Mel Counts	1965	1976	C-F	7-0	230	October 16, 1941	Oregon State University
Steve Courtin	1965	1965	G	6-1	188	September 21, 1942	Saint Joseph's University
Joe Courtney	1993	1997	F	6-8	235	October 17, 1969	University of Southern Mississippi
Marcus Cousin	2011	2011	C	6-11	245	December 18, 1986	University of Houston
DeMarcus Cousins	2011	2018	C-F	6-11	270	August 13, 1990	University of Kentucky
Bob Cousy	1951	1970	G	6-1	175	August 9, 1928	College of the Holy Cross
Robert Covington	2014	2018	F	6-9	215	December 14, 1990	Tennessee State University
Dave Cowens	1971	1983	C-F	6-9	230	October 25, 1948	Florida State University
Chubby Cox	1983	1983	G	6-2	180	December 29, 1955	University of San Francisco
Johnny Cox	1963	1963	G	6-4	180	November 1, 1936	University of Kentucky
Wesley Cox	1978	1979	F	6-6	215	January 27, 1955	University of Louisville
Allen Crabbe	2014	2018	G-F	6-6	210	April 9, 1992	University of California
Torrey Craig	2018	2018	G-F	6-6	215	December 19, 1990	University of South Carolina Upstate
Chris Crawford	1998	2004	F	6-9	235	May 13, 1975	Marquette University
Freddie Crawford	1967	1971	G-F	6-4	189	December 23, 1941	St. Bonaventure University
Jamal Crawford	2001	2018	G	6-5	200	March 20, 1980	University of Michigan
Joe Crawford	2009	2009	F	6-5	210	June 17, 1986	University of Kentucky
Jordan Crawford	2011	2018	G	6-4	195	October 23, 1988	Xavier University
Jim Creighton	1976	1976	F	6-8	200	April 18, 1950	University of Colorado
Ron Crevier	1986	1986	C	7-0	235	April 14, 1958	Boston College
Hal Crisler	1947	1947	F	6-3	215	December 31, 1923	Iowa State University
Joe Crispin	2002	2002	G	6-0	185	July 18, 1979	Pennsylvania State University
Charlie Criss	1978	1985	G	5-8	165	November 6, 1948	New Mexico State University
Russell Critchfield	1969	1969	G	5-10	150	June 27, 1946	University of California
Winston Crite	1988	1989	F	6-7	233	June 20, 1965	Texas A&M University
Javaris Crittenton	2008	2009	G	6-5	200	December 31, 1987	Georgia Institute of Technology
Dillard Crocker	1949	1953	F-G	6-4	205	January 19, 1925	Western Michigan University
Bobby Croft	1971	1971	C	6-10	200	March 17, 1946	University of Tennessee
Geoff Crompton	1979	1984	C	6-11	280	July 4, 1955	University of North Carolina
Terry Crosby	1980	1980	G	6-4	195	January 4, 1957	University of Tennessee
Austin Croshere	1998	2009	F	6-9	235	May 1, 1975	Providence College
Jeff Cross	1986	1986	F	6-10	240	September 1, 1961	University of Maine
Pete Cross	1971	1973	C-F	6-9	230	March 28, 1948	University of San Francisco
Russell Cross	1984	1984	C	6-10	215	September 5, 1961	Purdue University
Chink Crossin	1948	1950	G	6-1	165	July 4, 1923	University of Pennsylvania
John Crotty	1993	2003	G	6-1	185	July 15, 1969	University of Virginia
Bill Crow	1968	1968	G	6-1	180	December 9, 1940	Westminster College of Utah
Mark Crow	1978	1978	F	6-7	210	October 22, 1954	Duke University
Corey Crowder	1992	1995	G-F	6-5	214	April 13, 1969	Kentucky Wesleyan College
Jae Crowder	2013	2018	F	6-6	235	July 6, 1990	Marquette University
Al Cueto	1970	1971	C-F	6-7	230	August 2, 1946	University of Tulsa
Pat Cummings	1980	1991	F-C	6-9	230	July 11, 1956	University of Cincinnati
Terry Cummings	1983	2000	F	6-9	220	March 15, 1961	DePaul University
Vonteego Cummings	2000	2002	G	6-3	185	February 29, 1976	University of Pittsburgh
Billy Cunningham	1966	1976	F-C	6-6	210	June 3, 1943	University of North Carolina
Dante Cunningham	2010	2018	F	6-8	230	April 22, 1987	Villanova University
Dick Cunningham	1969	1975	C	6-10	245	July 11, 1946	Murray State University
Jared Cunningham	2013	2016	G	6-4	195	May 22, 1991	Oregon State University
William Cunningham	1998	1999	C	6-11	250	March 25, 1974	Temple University
Radisav Curcic	1993	1993	C	6-10	275	September 26, 1965	\N
Armand Cure	1947	1947	F	6-0	198	August 1, 1919	University of Rhode Island
Earl Cureton	1981	1997	F-C	6-9	210	September 3, 1957	University of Detroit Mercy
Bill Curley	1995	2001	F	6-9	220	May 29, 1972	Boston College
Fran Curran	1949	1950	G	6-0	175	September 9, 1922	University of Notre Dame
Dell Curry	1987	2002	G	6-4	190	June 25, 1964	Virginia Polytechnic Institute and State University
Eddy Curry	2002	2013	C	7-0	295	December 5, 1982	\N
JamesOn Curry	2010	2010	G	6-3	190	January 7, 1986	Oklahoma State University
Michael Curry	1994	2005	F-G	6-5	210	August 22, 1968	Georgia Southern University
Seth Curry	2014	2017	G	6-2	185	August 23, 1990	Duke University
Stephen Curry	2010	2018	G	6-3	190	March 14, 1988	Davidson College
Rastko Cvetkovic	1996	1996	C	7-1	260	June 22, 1970	\N
Mike D'Antoni	1974	1977	G	6-3	185	May 8, 1951	Marshall University
Mike Dabich	1968	1968	C	7-0	242	December 27, 1942	New Mexico State University
Ed Dahler	1952	1952	F	6-5	190	January 31, 1926	Duquesne University
Quintin Dailey	1983	1992	G	6-3	180	January 22, 1961	University of San Francisco
Samuel Dalembert	2002	2015	C	6-11	255	May 10, 1981	Seton Hall University
Howie Dallmar	1947	1949	F	6-4	200	May 24, 1922	Stanford University
Erick Dampier	1997	2012	C	6-11	265	July 14, 1975	Mississippi State University
Louie Dampier	1968	1979	G	6-0	170	November 20, 1944	University of Kentucky
Bob Dandridge	1970	1982	F-G	6-6	195	November 15, 1947	Norfolk State University
Antonio Daniels	1998	2011	G	6-4	195	March 19, 1975	Bowling Green State University
Erik Daniels	2005	2005	F	6-8	214	April 1, 1982	University of Kentucky
Lloyd Daniels	1993	1998	G	6-7	205	September 4, 1967	Mount San Antonio College
Marquis Daniels	2004	2013	G-F	6-6	200	January 7, 1981	Auburn University
Mel Daniels	1968	1977	C	6-9	220	July 20, 1944	University of New Mexico
Troy Daniels	2014	2018	G	6-4	205	July 15, 1991	Virginia Commonwealth University
Sasha Danilovic	1996	1997	G	6-5	200	February 26, 1970	\N
Adrian Dantley	1977	1991	F-G	6-5	208	February 28, 1956	University of Notre Dame
Pete Darcey	1953	1953	C	6-7	217	March 3, 1930	Oklahoma State University
Jimmy Darden	1950	1950	G	6-1	170	June 19, 1922	University of Denver
Ollie Darden	1968	1970	F-C	6-7	235	July 28, 1944	University of Michigan
Yinka Dare	1995	1998	C	7-0	265	October 10, 1972	George Washington University
Jesse Dark	1975	1975	G	6-5	210	September 2, 1951	Virginia Commonwealth University
Rick Darnell	1976	1976	C-F	6-10	215	January 1, 1953	San Jose State University
Jimmy Darrow	1962	1962	G	5-10	170	September 25, 1937	Bowling Green State University
Luigi Datome	2014	2015	F	6-8	215	November 27, 1987	\N
Brad Daugherty	1987	1994	C	7-0	245	October 19, 1965	University of North Carolina
Mack Daughtry	1971	1971	G	6-3	175	\N	Albany State University
Kornel David	1999	2001	F	6-9	235	October 22, 1971	\N
Jermareo Davidson	2008	2009	F	6-10	230	November 15, 1984	University of Alabama
Bob Davies	1949	1955	G-F	6-1	175	January 15, 1920	Seton Hall University
Brandon Davies	2014	2015	F	6-10	240	July 25, 1991	Brigham Young University
Anthony Davis	2013	2018	F-C	6-10	253	March 11, 1993	University of Kentucky
Antonio Davis	1994	2006	F-C	6-9	215	October 31, 1968	University of Texas at El Paso
Aubrey Davis	1947	1947	G-F	6-2	175	March 28, 1921	Oklahoma Baptist University
Baron Davis	2000	2012	G	6-3	209	April 13, 1979	University of California, Los Angeles
Ben Davis	1997	2000	F	6-9	240	December 26, 1972	University of Arizona
Bill Davis	1947	1947	F	6-3	215	October 3, 1920	University of Notre Dame
Bob Davis	1973	1973	F	6-7	215	April 2, 1950	Weber State University
Brad Davis	1978	1992	G	6-3	180	December 17, 1955	University of Maryland
Brian Davis	1994	1994	F-G	6-7	200	June 21, 1970	Duke University
Charles Davis	1982	1990	F	6-7	215	October 5, 1958	Vanderbilt University
Charlie Davis	1972	1974	G	6-2	160	September 7, 1949	Wake Forest University
Dale Davis	1992	2007	F-C	6-11	230	March 25, 1969	Clemson University
Deyonta Davis	2017	2018	F-C	6-11	237	December 2, 1996	Michigan State University
Dwight Davis	1973	1977	F	6-8	220	October 28, 1949	University of Houston
Ed Davis	2011	2018	F	6-10	240	June 5, 1989	University of North Carolina
Emanual Davis	1997	2003	G	6-4	195	August 27, 1968	Delaware State University
Glen Davis	2008	2015	F-C	6-9	289	January 1, 1986	Louisiana State University
Harry Davis	1979	1980	F	6-7	220	January 27, 1956	Florida State University
Hubert Davis	1993	2004	G	6-5	183	May 17, 1970	University of North Carolina
Jim Davis	1968	1975	C-F	6-9	225	December 18, 1941	University of Colorado
Johnny Davis	1977	1986	G	6-2	170	October 21, 1955	University of Dayton
Josh Davis	2004	2012	F	6-8	235	August 10, 1980	University of Wyoming
Lee Davis	1969	1976	C-F	6-8	235	October 11, 1945	North Carolina Central University
Mark Davis	1989	1989	F-G	6-6	195	June 8, 1963	Old Dominion University
Mark Davis	1996	2000	G-F	6-7	210	April 26, 1973	Texas Tech University
Mel Davis	1974	1977	F	6-6	220	November 9, 1950	St. John's University
Mickey Davis	1972	1977	F-G	6-7	195	June 16, 1950	Duquesne University
Mike Davis	1970	1973	G	6-3	185	July 26, 1946	Virginia Union University
Mike Davis	1983	1983	F	6-10	230	August 2, 1956	University of Maryland
Monti Davis	1981	1981	F	6-7	205	July 26, 1958	Tennessee State University
Paul Davis	2007	2010	C	6-11	270	July 21, 1984	Michigan State University
Ralph Davis	1961	1962	G	6-4	180	September 7, 1938	University of Cincinnati
Red Davis	1956	1956	C	6-7	220	April 22, 1932	St. John's University
Ricky Davis	1999	2010	G	6-6	195	September 23, 1979	University of Iowa
Ron Davis	1977	1982	G-F	6-6	198	May 1, 1954	Washington State University
Terry Davis	1990	2001	F-C	6-9	225	June 17, 1967	Virginia Union University
Walt Davis	1954	1958	C-F	6-8	205	January 5, 1931	Texas A&M University
Walter Davis	1978	1992	G-F	6-6	193	September 9, 1954	University of North Carolina
Warren Davis	1968	1973	F-C	6-6	212	June 30, 1943	North Carolina Agricultural and Technical State University
Willie Davis	1971	1971	C	6-8	234	August 9, 1945	University of North Texas
Andre Dawkins	2015	2015	G	6-5	215	September 19, 1991	Duke University
Darryl Dawkins	1976	1989	C	6-11	251	January 11, 1957	\N
Johnny Dawkins	1987	1995	G	6-2	165	September 28, 1963	Duke University
Paul Dawkins	1980	1980	F	6-5	190	June 10, 1957	Northern Illinois University
Branden Dawson	2016	2016	F	6-6	225	February 1, 1993	Michigan State University
Eric Dawson	2012	2012	F	6-9	250	July 7, 1984	Midwestern State University
Jimmy Dawson	1968	1968	G	6-0	175	April 18, 1945	University of Illinois at Urbana-Champaign
Tony Dawson	1991	1995	F	6-7	215	August 25, 1967	Florida State University
Todd Day	1993	2001	G-F	6-6	188	January 7, 1970	University of Arkansas
Austin Daye	2010	2015	F	6-11	220	June 5, 1988	Gonzaga University
Darren Daye	1984	1988	F-G	6-8	220	November 30, 1960	University of California, Los Angeles
Nando De Colo	2013	2014	G	6-5	200	June 23, 1987	\N
Greg Deane	1980	1980	G	6-4	190	December 6, 1957	University of Utah
Billy DeAngelis	1971	1971	G	6-1	180	October 5, 1946	Saint Joseph's University
Dave DeBusschere	1963	1974	F-G	6-6	220	October 16, 1940	University of Detroit Mercy
Andrew DeClercq	1996	2005	F-C	6-10	230	February 1, 1973	University of Florida
Dewayne Dedmon	2014	2018	C	7-0	245	August 12, 1989	University of Southern California
Don Dee	1969	1969	F	6-8	210	August 9, 1943	Saint Mary of the Plains College
Archie Dees	1959	1962	F-C	6-8	205	February 22, 1936	Indiana University
Terry Dehere	1994	1999	G	6-2	190	September 12, 1971	Seton Hall University
Red Dehnert	1947	1947	F	6-3	175	January 24, 1924	Columbia University
Bryce Dejean-Jones	2016	2016	G	6-6	209	August 21, 1992	Iowa State University
Sam Dekker	2016	2018	F	6-9	230	May 6, 1994	University of Wisconsin
Vinny Del Negro	1989	2002	G	6-4	185	August 9, 1966	North Carolina State University
Malcolm Delaney	2017	2018	G	6-3	190	March 11, 1989	Virginia Polytechnic Institute and State University
Bison Dele	1992	1999	F-C	6-9	235	April 6, 1969	University of Arizona
Carlos Delfino	2005	2013	G	6-6	230	August 29, 1982	\N
Tony Delk	1997	2006	G	6-1	189	January 28, 1974	University of Kentucky
Matthew Dellavedova	2014	2018	G	6-4	198	September 8, 1990	Saint Mary's College of California
Nate DeLong	1952	1952	C	6-6	220	January 5, 1926	University of Wisconsin-River Falls
Fennis Dembo	1989	1989	F	6-5	215	January 24, 1966	University of Wyoming
Larry Demic	1980	1982	F-C	6-9	225	June 27, 1957	University of Arizona
Dell Demps	1994	1997	G	6-3	205	February 12, 1970	University of the Pacific
George Dempsey	1955	1959	G	6-2	190	July 19, 1929	King's College
Luol Deng	2005	2018	F	6-9	220	April 16, 1985	Duke University
Kenny Dennard	1982	1984	F	6-8	220	October 18, 1958	Duke University
Blaine Denning	1953	1953	G	6-2	175	September 19, 1930	Lawrence Technological University
Justin Dentmon	2012	2013	G	5-11	185	September 5, 1985	University of Washington
Randy Denton	1972	1977	C	6-10	240	February 18, 1949	Duke University
Joe DePre	1971	1973	G	6-3	185	December 19, 1947	St. John's University
Rod Derline	1975	1976	G	6-0	175	March 11, 1952	Seattle University
DeMar DeRozan	2010	2018	G-F	6-7	221	August 7, 1989	University of Southern California
Dave Deutsch	1967	1967	G	6-1	170	May 13, 1945	University of Rochester
Corky Devlin	1956	1958	G	6-5	195	December 21, 1931	George Washington University
Hank DeZonie	1951	1951	C-F	6-6	215	February 12, 1922	Clark Atlanta University
Derrick Dial	2000	2004	G	6-4	184	December 20, 1975	Eastern Michigan University
Cheick Diallo	2017	2018	F	6-9	220	September 13, 1996	University of Kansas
Boris Diaw	2004	2017	F-C	6-8	250	April 16, 1982	\N
Yakhouba Diawara	2007	2010	G-F	6-7	225	August 29, 1982	Pepperdine University
Guillermo Diaz	2008	2008	G	6-2	192	March 4, 1985	University of Miami
Dan Dickau	2003	2008	G	6-0	190	September 16, 1978	Gonzaga University
Kaniel Dickens	2004	2008	F	6-8	215	July 21, 1978	University of Idaho
Henry Dickerson	1976	1977	G	6-4	190	November 27, 1951	University of Charleston
Michael Dickerson	1999	2003	G-F	6-5	190	June 25, 1975	University of Arizona
Clyde Dickey	1975	1975	G	6-3	185	December 14, 1951	Boise State University
Derrek Dickey	1974	1978	F	6-7	218	March 20, 1951	University of Cincinnati
Dick Dickey	1952	1952	G	6-1	175	October 26, 1926	North Carolina State University
John Dickson	1968	1968	C	6-10	240	November 18, 1945	Arkansas State University
Travis Diener	2006	2010	G	6-1	175	March 1, 1982	Marquette University
Gorgui Dieng	2014	2018	C	6-11	241	January 18, 1990	University of Louisville
Connie Dierking	1959	1971	C-F	6-9	222	October 2, 1936	University of Cincinnati
Coby Dietrick	1971	1983	C-F	6-10	220	July 23, 1948	San Jose State University
Ernie DiGregorio	1974	1978	G	6-0	180	January 15, 1951	Providence College
Craig Dill	1968	1968	C	6-11	215	December 17, 1944	University of Michigan
Dwaine Dillard	1976	1976	F	6-6	230	March 9, 1949	Eastern Michigan University
Mickey Dillard	1982	1982	G	6-3	170	October 15, 1958	Florida State University
Bob Dille	1947	1947	F	6-3	190	July 2, 1917	Valparaiso University
Hook Dillon	1950	1950	F	6-3	180	January 8, 1924	University of North Carolina
Byron Dinkins	1990	1991	G	6-1	170	June 15, 1967	University of North Carolina at Charlotte
Jackie Dinkins	1972	1972	F	6-5	210	January 22, 1950	Voorhees College
Harry Dinnel	1968	1968	F-G	6-4	200	\N	Pepperdine University
Bill Dinwiddie	1968	1972	F	6-7	220	July 15, 1943	New Mexico Highlands University
Spencer Dinwiddie	2015	2018	G	6-6	200	April 6, 1993	University of Colorado
Ike Diogu	2006	2012	F	6-8	250	September 11, 1983	Arizona State University
DeSagana Diop	2002	2013	C	7-0	300	January 30, 1982	\N
Terry Dischinger	1963	1973	F-G	6-7	189	November 21, 1940	Purdue University
Fred Diute	1955	1955	G	6-3	210	January 9, 1929	St. Bonaventure University
Vlade Divac	1990	2005	C	7-1	243	February 3, 1968	\N
Juan Dixon	2003	2009	G	6-3	164	October 9, 1978	University of Maryland
Aleksandar Djordjevic	1997	1997	G	6-2	198	August 26, 1967	\N
Earl Dodd	1950	1950	F	6-5	175	November 1, 1924	Truman State University
Michael Doleac	1999	2008	C	6-11	262	June 15, 1977	University of Utah
Joe Dolhon	1950	1951	G	6-0	175	July 9, 1927	New York University
Bob Doll	1947	1950	F-C	6-5	195	August 10, 1919	University of Colorado
James Donaldson	1981	1995	C	7-2	275	August 16, 1957	Washington State University
Bob Donham	1951	1954	G-F	6-2	190	October 11, 1926	Ohio State University
Billy Donovan	1988	1988	G	5-11	171	May 30, 1965	Providence College
Harry Donovan	1950	1950	G	6-2	180	September 10, 1926	Muhlenberg College
Keyon Dooling	2001	2013	G	6-3	196	May 8, 1980	University of Missouri
Jacky Dorsey	1978	1981	F	6-7	230	December 18, 1954	University of Georgia
Joey Dorsey	2009	2015	F	6-8	268	December 16, 1983	University of Memphis
Ron Dorsey	1972	1972	F	6-4	200	October 10, 1948	Tennessee State University
Tyler Dorsey	2018	2018	G	6-5	183	February 14, 1996	University of Oregon
Damyean Dotson	2018	2018	G	6-6	205	May 6, 1994	University of Houston
Quincy Douby	2007	2009	G	6-3	175	May 16, 1984	Rutgers University
Bruce Douglas	1987	1987	G	6-3	195	April 9, 1964	University of Illinois at Urbana-Champaign
John Douglas	1982	1983	G	6-2	170	June 12, 1956	University of Kansas
Leon Douglas	1977	1983	C-F	6-10	230	August 26, 1954	University of Alabama
Sherman Douglas	1990	2001	G	6-0	180	September 15, 1966	Syracuse University
Toney Douglas	2010	2017	G	6-2	195	March 16, 1986	Florida State University
Chris Douglas-Roberts	2009	2015	G	6-7	200	January 8, 1987	University of Memphis
Sonny Dove	1968	1972	F	6-7	198	August 16, 1945	St. John's University
Jerry Dover	1972	1972	G	5-7	155	October 16, 1949	LeMoyne-Owen College
Zabian Dowdell	2011	2011	G	6-3	191	September 10, 1984	Virginia Polytechnic Institute and State University
Bill Downey	1948	1948	C	6-6	210	November 11, 1923	Marquette University
Steve Downing	1974	1975	C	6-8	225	September 9, 1950	Indiana University
Danny Doyle	1963	1963	F	6-8	200	February 6, 1940	Belmont Abbey College
Terry Dozier	1990	1990	F	6-9	210	June 29, 1966	University of South Carolina
Goran Dragic	2009	2018	G	6-3	190	May 6, 1986	\N
Zoran Dragic	2015	2015	G-F	6-5	200	June 22, 1989	\N
Greg Dreiling	1987	1997	C	7-1	250	November 7, 1962	University of Kansas
Bryce Drew	1999	2004	G	6-2	185	September 21, 1974	Valparaiso University
John Drew	1975	1985	F-G	6-6	205	September 30, 1954	Gardner-Webb University
Larry Drew	1981	1991	G	6-1	170	April 2, 1958	University of Missouri
Larry Drew	2015	2015	G	6-2	180	March 5, 1990	University of California, Los Angeles
Clyde Drexler	1984	1998	G	6-7	210	June 22, 1962	University of Houston
Nate Driggers	1997	1997	G	6-5	215	October 12, 1973	University of Montevallo
Terry Driscoll	1971	1975	F	6-7	215	August 28, 1947	Boston College
Predrag Drobnjak	2002	2005	C	6-11	270	October 27, 1975	\N
Ralph Drollinger	1981	1981	C	7-2	250	April 20, 1954	University of California, Los Angeles
Andre Drummond	2013	2018	C	6-11	279	August 10, 1993	University of Connecticut
Dick Duckett	1958	1958	G	6-1	185	March 25, 1933	St. John's University
Kevin Duckworth	1987	1997	C	7-0	275	April 1, 1964	Eastern Illinois University
Charles Dudley	1973	1979	G	6-2	180	March 5, 1950	University of Washington
Chris Dudley	1988	2003	C	6-11	235	February 22, 1965	Yale University
Jared Dudley	2008	2018	F-G	6-7	225	July 10, 1985	Boston College
Terry Duerod	1980	1983	G	6-2	180	July 29, 1956	University of Detroit Mercy
Bob Duffy	1947	1947	F	6-4	175	July 5, 1922	Tulane University
Bob Duffy	1963	1965	G	6-3	185	September 26, 1940	Colgate University
Chris Duhon	2005	2013	G	6-1	185	August 31, 1982	Duke University
Duje Dukan	2016	2016	F	6-9	220	December 4, 1991	University of Wisconsin
Walter Dukes	1956	1963	C	7-0	220	June 23, 1930	Seton Hall University
Joe Dumars	1986	1999	G	6-3	190	May 24, 1963	McNeese State University
Rich Dumas	1969	1969	G	6-3	170	\N	Northeastern State University
Richard Dumas	1993	1996	F	6-7	200	May 19, 1969	Oklahoma State University
Tony Dumas	1995	1998	G	6-6	190	August 25, 1972	University of Missouri-Kansas City
Andy Duncan	1949	1951	F-C	6-6	195	April 17, 1922	College of William & Mary
Tim Duncan	1998	2016	F-C	6-11	250	April 25, 1976	Wake Forest University
Mike Dunleavy	1977	1990	G	6-3	180	March 21, 1954	University of South Carolina
Mike Dunleavy	2003	2017	F-G	6-9	230	September 15, 1980	Duke University
Kris Dunn	2017	2018	G	6-4	210	March 18, 1994	Providence College
Pat Dunn	1958	1958	G	6-2	170	March 17, 1931	Utah State University
T.R. Dunn	1978	1991	G-F	6-4	192	February 1, 1955	University of Alabama
Ronald Dupree	2004	2011	F	6-7	209	January 26, 1981	Louisiana State University
Kevin Durant	2008	2018	F-G	6-9	240	September 29, 1988	University of Texas at Austin
John Duren	1981	1983	G	6-3	195	October 30, 1958	Georgetown University
Jarrett Durham	1972	1972	F	6-5	188	August 22, 1949	Duquesne University
Pat Durham	1993	1995	F	6-7	210	March 10, 1967	Colorado State University
Devin Durrant	1985	1986	F	6-7	200	October 20, 1960	Brigham Young University
Ken Durrett	1972	1975	F	6-7	190	December 8, 1948	La Salle University
Dennis DuVal	1975	1976	G	6-3	175	March 31, 1952	Syracuse University
Jack Dwan	1949	1949	F-G	6-4	200	May 3, 1921	Loyola University of Chicago
Craig Dykema	1982	1982	F	6-8	190	June 11, 1959	California State University, Long Beach
Gene Dyker	1954	1954	F	6-6	225	February 17, 1930	DePaul University
Jerome Dyson	2012	2012	G	6-3	180	May 1, 1987	University of Connecticut
Ledell Eackles	1989	1998	G-F	6-5	220	November 24, 1966	University of New Orleans
Jim Eakins	1969	1978	C	6-11	215	May 24, 1946	Brigham Young University
Acie Earl	1994	1997	F-C	6-10	240	June 23, 1970	University of Iowa
Ed Earle	1954	1954	F	6-3	190	April 28, 1927	Loyola University of Chicago
Cleanthony Early	2015	2016	F	6-8	210	April 17, 1991	Wichita State University
Penny Early	1969	1969	G	5-3	114	May 30, 1943	\N
Mark Eaton	1983	1993	C	7-4	275	January 24, 1957	University of California, Los Angeles
Jerry Eaves	1983	1987	G	6-4	180	February 8, 1959	University of Louisville
Devin Ebanks	2011	2013	F	6-9	215	October 28, 1989	West Virginia University
Bill Ebben	1958	1958	G	6-4	190	October 7, 1935	University of Detroit Mercy
Al Eberhard	1975	1978	F	6-6	225	May 10, 1952	University of Missouri
Ndudi Ebi	2004	2005	F	6-9	200	June 18, 1984	\N
Roy Ebron	1974	1974	C	6-9	220	August 31, 1951	University of Louisiana at Lafayette
Jarell Eddie	2016	2017	G-F	6-7	218	October 30, 1991	Virginia Polytechnic Institute and State University
Patrick Eddie	1992	1992	C	6-11	240	December 27, 1967	University of Mississippi
Dike Eddleman	1950	1953	F-G	6-3	189	December 27, 1922	University of Illinois at Urbana-Champaign
Kenton Edelin	1985	1985	F	6-8	205	May 24, 1962	University of Virginia
Charles Edge	1974	1975	F	6-6	210	February 23, 1950	LeMoyne-Owen College
Bobby Edmonds	1968	1970	F	6-6	220	March 8, 1941	Tennessee State University
Keith Edmonson	1983	1984	G	6-5	195	September 28, 1960	Purdue University
Tyus Edney	1996	2001	G	5-10	152	February 14, 1973	University of California, Los Angeles
Bill Edwards	1994	1994	F	6-8	215	September 22, 1971	Wright State University
Blue Edwards	1990	1999	G-F	6-4	200	October 31, 1965	East Carolina University
Corsley Edwards	2005	2005	F	6-9	275	March 5, 1979	Central Connecticut State University
Doug Edwards	1994	1996	F	6-7	220	January 21, 1971	Florida State University
Franklin Edwards	1982	1988	G	6-1	170	February 2, 1959	Cleveland State University
James Edwards	1978	1996	C-F	7-0	225	November 22, 1955	University of Washington
Jay Edwards	1990	1990	G	6-4	185	January 3, 1969	Indiana University
John Edwards	2005	2006	C	7-0	275	July 31, 1981	Kent State University
Kevin Edwards	1989	2001	G	6-3	190	October 30, 1965	DePaul University
Shane Edwards	2014	2014	F	6-7	220	May 31, 1987	University of Arkansas at Little Rock
Johnny Egan	1962	1972	G	5-11	180	January 31, 1939	Providence College
Lonnie Eggleston	1949	1949	G	6-0	170	June 8, 1918	Oklahoma State University
Bulbs Ehlers	1948	1949	F-G	6-3	198	March 10, 1923	Purdue University
Craig Ehlo	1984	1997	G-F	6-6	180	August 11, 1961	Washington State University
Rich Eichhorst	1962	1962	G	6-3	200	October 21, 1933	Southeast Missouri State University
Howard Eisley	1995	2006	G	6-2	177	December 4, 1972	Boston College
Obinna Ekezie	2000	2005	F-C	6-9	270	August 22, 1975	University of Maryland
Khalid El-Amin	2001	2001	G	5-10	200	April 25, 1979	University of Connecticut
Don Eliason	1947	1947	F	6-2	210	July 24, 1918	Hamline University
Mario Elie	1991	2001	G-F	6-5	210	November 26, 1963	American International College
Ray Ellefson	1949	1951	C	6-8	230	November 18, 1922	West Texas A&M University
Henry Ellenson	2017	2018	F	6-11	245	January 13, 1997	Marquette University
Wayne Ellington	2010	2018	G	6-4	200	October 29, 1987	University of North Carolina
Bob Elliott	1979	1981	C-F	6-9	225	August 18, 1955	University of Arizona
Sean Elliott	1990	2001	F	6-8	205	February 2, 1968	University of Arizona
Bo Ellis	1978	1980	F	6-9	197	August 8, 1954	Marquette University
Boo Ellis	1959	1960	F	6-5	185	February 11, 1936	Niagara University
Dale Ellis	1984	2000	G-F	6-7	205	August 6, 1960	University of Tennessee
Harold Ellis	1994	1998	G	6-5	200	October 7, 1970	Morehouse College
Joe Ellis	1967	1974	F-G	6-6	175	May 3, 1944	University of San Francisco
LaPhonso Ellis	1993	2003	F	6-8	240	May 5, 1970	University of Notre Dame
LeRon Ellis	1992	1996	F-C	6-9	225	April 28, 1969	Syracuse University
Leroy Ellis	1963	1976	C-F	6-10	210	March 10, 1940	St. John's University
Monta Ellis	2006	2017	G	6-3	185	October 26, 1985	\N
Pervis Ellison	1990	2001	F-C	6-9	210	April 3, 1967	University of Louisville
Len Elmore	1975	1984	C-F	6-9	220	March 28, 1952	University of Maryland
Francisco Elson	2004	2012	C	7-0	235	February 28, 1976	University of California
Darrell Elston	1975	1977	G	6-4	190	August 15, 1952	University of North Carolina
Melvin Ely	2003	2014	C	6-10	260	May 2, 1978	California State University, Fresno
Joel Embiid	2017	2018	C-F	7-0	250	March 16, 1994	University of Kansas
Wayne Embry	1959	1969	C-F	6-8	240	March 26, 1937	Miami University
Andre Emmett	2005	2012	F	6-5	230	August 27, 1982	Texas Tech University
Ned Endress	1947	1947	F-G	6-2	200	March 2, 1918	University of Akron
Chris Engler	1983	1988	C	6-11	245	March 1, 1959	University of Wyoming
Wayne Englestad	1989	1989	F	6-8	245	December 6, 1966	University of California, Irvine
A.J. English	1991	1992	G	6-3	175	July 11, 1967	Virginia Union University
Alex English	1977	1991	F	6-7	190	January 5, 1954	University of South Carolina
Claude English	1971	1971	F	6-4	185	December 26, 1946	University of Rhode Island
Jo Jo English	1993	1995	G	6-4	195	February 4, 1970	University of South Carolina
Kim English	2013	2013	G	6-6	200	September 24, 1988	University of Missouri
Scott English	1973	1975	F	6-6	205	October 20, 1950	University of Texas at El Paso
Gene Englund	1950	1950	F-C	6-5	205	October 21, 1917	University of Wisconsin
James Ennis	2015	2018	F	6-7	210	July 1, 1990	California State University, Long Beach
Tyler Ennis	2015	2018	G	6-3	194	August 24, 1994	Syracuse University
Ray Epps	1979	1979	F	6-6	195	August 20, 1956	Norfolk State University
Semih Erden	2011	2012	C	7-0	240	July 28, 1986	\N
Bo Erias	1958	1958	F	6-3	220	July 30, 1932	Niagara University
Keith Erickson	1966	1977	F-G	6-5	195	April 19, 1944	University of California, Los Angeles
Julius Erving	1972	1987	F-G	6-7	210	February 22, 1950	University of Massachusetts Amherst
Evan Eschmeyer	2000	2003	C	6-11	255	May 30, 1975	Northwestern University
Jack Eskridge	1949	1949	C-F	6-5	200	January 21, 1924	University of Kansas
Vincenzo Esposito	1996	1996	G	6-3	198	January 3, 1969	\N
Billy Evans	1970	1970	G	6-0	170	March 3, 1947	Boston College
Bob Evans	1950	1950	G	6-2	175	May 31, 1925	Butler University
Brian Evans	1997	1999	F	6-8	220	September 13, 1973	Indiana University
Earl Evans	1980	1980	F	6-8	202	November 11, 1955	University of Nevada, Las Vegas
Jawun Evans	2018	2018	G	6-0	185	July 26, 1996	Oklahoma State University
Jeremy Evans	2011	2016	F	6-9	200	October 24, 1987	Western Kentucky University
Maurice Evans	2002	2012	G	6-5	220	November 8, 1978	University of Texas at Austin
Mike Evans	1980	1988	G	6-1	170	April 19, 1955	Kansas State University
Reggie Evans	2003	2015	F	6-8	245	May 18, 1980	University of Iowa
Tyreke Evans	2010	2018	G-F	6-6	220	September 19, 1989	University of Memphis
Daniel Ewing	2006	2007	G	6-3	185	March 26, 1983	Duke University
Patrick Ewing	1986	2002	C-F	7-0	240	August 5, 1962	Georgetown University
Patrick Ewing	2011	2011	F	6-8	235	May 20, 1984	Georgetown University
Dante Exum	2015	2017	G	6-6	190	July 13, 1995	\N
Christian Eyenga	2011	2012	F	6-5	210	June 22, 1989	\N
Festus Ezeli	2013	2016	C	6-11	255	October 21, 1989	Vanderbilt University
Johnny Ezersky	1948	1950	F-G	6-3	175	March 21, 1922	University of Rhode Island
Joe Fabel	1947	1947	F-G	6-1	190	September 4, 1913	University of Pittsburgh
John Fairchild	1966	1970	F	6-8	205	April 28, 1943	Brigham Young University
Phil Farbman	1949	1949	F	6-1	185	April 3, 1924	City College of New York
Kenneth Faried	2012	2018	F	6-8	228	November 19, 1989	Morehead State University
Dick Farley	1955	1959	G-F	6-4	190	April 13, 1932	Indiana University
Jordan Farmar	2007	2017	G	6-2	180	November 30, 1986	University of California, Los Angeles
Desmon Farmer	2007	2009	G	6-5	220	October 7, 1981	University of Southern California
Jim Farmer	1988	1994	G	6-4	190	September 23, 1964	University of Alabama
Mike Farmer	1959	1966	F	6-7	210	September 26, 1936	University of San Francisco
Tony Farmer	1998	2000	F	6-9	244	January 3, 1970	University of Nebraska
Bob Faught	1947	1947	F	6-5	185	September 2, 1921	University of Notre Dame
Vitor Faverani	2014	2014	C	6-11	260	May 5, 1988	\N
Derrick Favors	2011	2018	F-C	6-10	265	July 15, 1991	Georgia Institute of Technology
Nick Fazekas	2008	2008	F	6-11	235	June 17, 1985	University of Nevada, Reno
Dave Fedor	1963	1963	F	6-6	190	December 10, 1940	Florida State University
Bob Feerick	1947	1950	F-G	6-3	190	January 2, 1920	Santa Clara University
Butch Feher	1977	1977	G	6-4	185	May 19, 1954	Vanderbilt University
Jamie Feick	1997	2001	C	6-9	255	July 3, 1974	Michigan State University
Ron Feiereisel	1956	1956	G	6-3	185	August 6, 1931	DePaul University
George Feigenbaum	1950	1953	G	6-1	185	July 2, 1929	University of Kentucky
Dave Feitl	1987	1992	C	6-11	235	June 8, 1962	University of Texas at El Paso
Kay Felder	2017	2018	G	5-9	176	March 29, 1995	Oakland University
Cristiano Felicio	2016	2018	F-C	6-10	275	July 7, 1992	\N
Carrick Felix	2014	2014	G	6-6	201	August 17, 1990	Arizona State University
Noel Felix	2006	2006	F	6-9	225	October 4, 1981	California State University, Fresno
Ray Felix	1954	1962	C	6-11	220	December 10, 1930	Long Island University
Raymond Felton	2006	2018	G	6-1	205	June 26, 1984	University of North Carolina
Jake Fendley	1952	1953	G	6-0	180	June 12, 1929	Northwestern University
Warren Fenley	1947	1947	F	6-3	190	February 8, 1922	Manhattan College
Desmond Ferguson	2004	2004	G-F	6-7	203	July 22, 1977	University of Detroit Mercy
Terrance Ferguson	2018	2018	G-F	6-7	184	May 17, 1998	\N
Rudy Fernandez	2009	2012	G	6-6	185	April 4, 1985	\N
Eric Fernsten	1976	1984	C-F	6-10	205	November 1, 1953	University of San Francisco
Al Ferrari	1956	1963	G-F	6-4	190	July 6, 1933	Michigan State University
Rolando Ferreira	1989	1989	C	7-1	240	May 24, 1964	University of Houston
Joe Graboski	1949	1962	F-C	6-7	195	January 15, 1930	\N
Duane Ferrell	1989	1999	F-G	6-7	209	February 28, 1965	Georgia Institute of Technology
Yogi Ferrell	2017	2018	G	6-0	180	May 9, 1993	Indiana University
Arnie Ferrin	1949	1951	F-G	6-2	180	July 29, 1925	University of Utah
Bob Ferry	1960	1969	C-F	6-8	230	May 31, 1937	Saint Louis University
Danny Ferry	1991	2003	F	6-10	230	October 17, 1966	Duke University
Kyrylo Fesenko	2008	2012	C	7-1	288	December 24, 1986	\N
Bobby Fields	1972	1972	G	6-3	175	October 20, 1949	La Salle University
Kenny Fields	1985	1988	F-G	6-5	220	February 9, 1962	University of California, Los Angeles
Landry Fields	2011	2015	F	6-7	210	June 27, 1988	Stanford University
Ron Filipek	1968	1968	F	6-5	205	February 5, 1944	Tennessee Technological University
Greg Fillmore	1971	1972	C	7-1	240	March 7, 1947	Cheyney University of Pennsylvania
Larry Finch	1974	1975	G	6-2	185	February 16, 1951	University of Memphis
Hank Finkel	1967	1975	C	7-0	240	April 20, 1942	University of Dayton
Michael Finley	1996	2010	G-F	6-7	215	March 6, 1973	University of Wisconsin
Danny Finn	1953	1955	G	6-1	185	May 29, 1928	St. John's University
Dorian Finney-Smith	2017	2018	F	6-8	220	May 4, 1993	University of Florida
Matt Fish	1995	1997	C	6-11	235	November 18, 1969	University of North Carolina at Wilmington
Derek Fisher	1997	2014	G	6-1	200	August 9, 1974	University of Arkansas at Little Rock
Richard Fisher	1972	1972	F	6-5	215	October 27, 1948	Colorado State University
Gerald Fitch	2006	2006	G	6-3	188	August 12, 1982	University of Kentucky
Bob Fitzgerald	1947	1949	F-C	6-5	190	March 14, 1923	Seton Hall University
Dick Fitzgerald	1947	1948	F	6-2	175	November 18, 1920	Fordham University
Marcus Fizer	2001	2006	F	6-9	262	August 10, 1978	Iowa State University
Jerry Fleishman	1947	1953	G-F	6-2	190	February 14, 1922	New York University
Al Fleming	1978	1978	F	6-7	215	April 5, 1954	University of Arizona
Ed Fleming	1956	1960	G-F	6-3	189	July 25, 1933	Niagara University
Vern Fleming	1985	1996	G	6-5	185	February 4, 1962	University of Georgia
Luis Flores	2005	2005	G	6-2	200	April 11, 1981	Manhattan College
Bruce Flowers	1983	1983	F	6-8	225	June 13, 1957	University of Notre Dame
Sleepy Floyd	1983	1995	G	6-3	170	March 6, 1960	Georgetown University
Jonny Flynn	2010	2012	G	6-0	185	February 6, 1989	Syracuse University
Mike Flynn	1976	1978	G	6-2	180	July 31, 1953	University of Kentucky
Larry Fogle	1976	1976	G	6-5	205	March 19, 1953	Canisius College
Jack Foley	1963	1963	F	6-3	170	April 19, 1939	College of the Holy Cross
Isaac Fontaine	2002	2002	G	6-4	210	April 16, 1975	Washington State University
Levi Fontaine	1971	1971	G	6-4	190	November 1, 1948	University of Maryland Eastern Shore
Jeff Foote	2012	2012	C	7-0	265	July 14, 1987	Cornell University
Bryn Forbes	2017	2018	G	6-3	190	July 23, 1993	Michigan State University
Gary Forbes	2011	2012	F	6-7	220	February 25, 1985	University of Massachusetts Amherst
Alphonso Ford	1994	1995	G	6-1	190	October 31, 1971	Mississippi Valley State University
Alton Ford	2002	2004	F	6-9	275	May 29, 1981	University of Houston
Bob Ford	1973	1973	F	6-7	228	January 26, 1950	Purdue University
Chris Ford	1973	1982	G-F	6-5	190	January 11, 1949	Villanova University
Don Ford	1976	1982	F	6-9	215	December 31, 1952	University of California, Santa Barbara
Jake Ford	1971	1972	G	6-3	180	April 29, 1946	University of Maryland Eastern Shore
Phil Ford	1979	1985	G	6-2	175	February 9, 1956	University of North Carolina
Sharrod Ford	2006	2006	F	6-9	225	January 9, 1982	Clemson University
Sherell Ford	1996	1996	F	6-7	210	August 26, 1972	University of Illinois at Chicago
T.J. Ford	2004	2012	G	6-0	165	March 24, 1983	University of Texas at Austin
Donnie Forman	1949	1949	G	5-10	175	January 17, 1926	New York University
Bayard Forrest	1978	1979	C	6-10	235	July 8, 1954	Grand Canyon University
Joseph Forte	2002	2003	G	6-4	194	March 23, 1981	University of North Carolina
Courtney Fortson	2012	2012	G	5-11	185	May 23, 1988	University of Arkansas
Danny Fortson	1998	2007	F	6-7	260	March 27, 1976	University of Cincinnati
Fred Foster	1969	1977	F	6-5	210	March 18, 1946	Miami University
Greg Foster	1991	2003	F-C	6-11	240	October 3, 1968	University of Texas at El Paso
Jeff Foster	2000	2012	F-C	6-11	236	January 16, 1977	Texas State University
Jimmy Foster	1975	1976	G	6-1	175	December 16, 1951	University of Connecticut
Rod Foster	1984	1986	G	6-1	160	October 10, 1960	University of California, Los Angeles
Antonis Fotsis	2002	2002	F	6-10	219	April 1, 1981	\N
Evan Fournier	2013	2018	G-F	6-7	205	October 29, 1992	\N
Larry Foust	1951	1962	C-F	6-9	215	June 24, 1928	La Salle University
Calvin Fowler	1970	1970	G	6-0	175	February 11, 1940	Saint Francis University
Jerry Fowler	1952	1952	C	6-8	230	June 20, 1927	University of Missouri
Tremaine Fowlkes	2002	2005	F	6-8	220	April 11, 1976	California State University, Fresno
De'Aaron Fox	2018	2018	G	6-3	170	December 20, 1997	University of Kentucky
Harold Fox	1973	1973	G	6-2	175	August 29, 1949	Jacksonville University
Jim Fox	1968	1977	C-F	6-10	230	April 7, 1943	University of South Carolina
Rick Fox	1992	2004	F-G	6-7	230	July 24, 1969	University of North Carolina
Randy Foye	2007	2017	G	6-4	213	September 24, 1983	Villanova University
Adonal Foyle	1998	2009	C	6-10	250	March 9, 1975	Colgate University
Richie Frahm	2004	2008	G	6-5	210	August 14, 1977	Gonzaga University
Steve Francis	2000	2008	G	6-3	195	February 21, 1977	University of Maryland
Tellis Frank	1988	1994	F-C	6-10	225	April 26, 1965	Western Kentucky University
Nat Frankel	1947	1947	F-G	6-0	195	November 3, 1913	Brooklyn College
Jamaal Franklin	2014	2015	G	6-5	191	July 21, 1991	San Diego State University
William Franklin	1973	1976	F	6-7	220	October 19, 1949	Purdue University
Ronald Franz	1968	1973	F	6-7	205	October 20, 1945	University of Kansas
Tim Frazier	2015	2018	G	6-1	170	November 1, 1990	Pennsylvania State University
Walt Frazier	1968	1980	G	6-4	200	March 29, 1945	Southern Illinois University
Will Frazier	1966	1969	C-F	6-7	210	August 24, 1942	Grambling State University
Anthony Frederick	1989	1992	F	6-7	205	December 7, 1964	Pepperdine University
Jimmer Fredette	2012	2016	G	6-2	195	February 25, 1989	Brigham Young University
World B. Free	1976	1988	G	6-2	185	December 9, 1953	Guilford College
Joel Freeland	2013	2015	F-C	6-10	250	February 7, 1987	\N
Donnie Freeman	1968	1976	G	6-3	185	July 18, 1944	University of Illinois at Urbana-Champaign
Gary Freeman	1971	1971	F	6-9	210	July 25, 1948	Oregon State University
Rod Freeman	1974	1974	F	6-7	225	November 5, 1950	Vanderbilt University
Matt Freije	2005	2007	F	6-10	240	October 2, 1981	Vanderbilt University
Frido Frey	1947	1947	F	6-2	195	October 26, 1921	Long Island University
Larry Friend	1958	1958	G-F	6-4	185	April 14, 1935	University of California
Pat Frink	1969	1969	G	6-4	195	February 18, 1945	University of Colorado
Jim Fritsche	1954	1955	F-C	6-8	210	December 10, 1931	Hamline University
Channing Frye	2006	2018	C-F	6-11	255	May 17, 1983	University of Arizona
Bernie Fryer	1974	1975	G	6-3	185	December 25, 1949	Brigham Young University
Frank Fucarino	1947	1947	F	6-2	175	July 24, 1920	Long Island University
Herm Fuetsch	1948	1948	G	6-0	170	July 6, 1918	\N
Joe Fulks	1947	1954	F-C	6-5	190	October 26, 1921	Murray State University
Carl Fuller	1971	1972	C	6-9	225	January 10, 1946	Bethune-Cookman College
Hiram Fuller	2004	2004	F	6-9	240	May 15, 1981	California State University, Fresno
Todd Fuller	1997	2001	C	6-11	255	July 25, 1974	North Carolina State University
Tony Fuller	1981	1981	G	6-4	180	September 4, 1958	Pepperdine University
Markelle Fultz	2018	2018	G	6-4	195	May 29, 1998	University of Washington
Lawrence Funderburke	1998	2005	F	6-9	230	December 15, 1970	Ohio State University
Terry Furlow	1977	1980	G-F	6-4	190	October 18, 1954	Michigan State University
Bill Gabor	1950	1955	G-F	5-11	170	May 13, 1922	Syracuse University
Dan Gadzuric	2003	2012	C	6-11	240	February 2, 1978	University of California, Los Angeles
Deng Gai	2006	2006	F	6-9	250	March 22, 1982	Fairfield University
Elmer Gainer	1948	1950	F-C	6-6	195	November 22, 1918	DePaul University
Bill Gaines	1969	1969	G	6-4	185	March 10, 1946	East Texas State University
Corey Gaines	1989	1995	G	6-3	195	June 1, 1965	Loyola Marymount University
David Gaines	1968	1968	G	6-1	170	February 27, 1942	LeMoyne-Owen College
Reece Gaines	2004	2006	G	6-6	205	January 7, 1981	University of Louisville
Sundiata Gaines	2010	2012	G	6-1	185	April 18, 1986	University of Georgia
Mike Gale	1972	1982	G	6-4	185	July 18, 1950	Elizabeth City State University
Chad Gallagher	1994	1994	C	6-10	255	May 30, 1969	Creighton University
Harry Gallatin	1949	1958	F-C	6-6	210	April 26, 1927	Truman State University
Danilo Gallinari	2009	2018	F	6-10	225	August 8, 1988	\N
Langston Galloway	2015	2018	G	6-2	200	December 9, 1991	Saint Joseph's University
Dave Gambee	1959	1970	F	6-6	215	April 16, 1937	Oregon State University
Kevin Gamble	1988	1997	F-G	6-5	210	November 13, 1965	University of Iowa
Bob Gantt	1947	1947	F-C	6-4	205	June 22, 1922	Duke University
Jorge Garbajosa	2007	2008	F	6-9	245	December 19, 1977	\N
Ruben Garces	2001	2001	F	6-9	245	October 17, 1973	Providence College
Alex Garcia	2004	2005	G	6-3	220	March 4, 1980	\N
Francisco Garcia	2006	2015	F-G	6-7	195	December 31, 1981	University of Louisville
Chuck Gardner	1968	1968	F	6-8	205	September 30, 1944	University of Colorado
Earl Gardner	1949	1949	F	6-3	195	September 18, 1923	DePauw University
Kenneth Gardner	1976	1976	F	6-5	205	September 27, 1949	University of Utah
Thomas Gardner	2008	2009	G	6-5	225	February 8, 1985	University of Missouri
Vern Gardner	1950	1952	F-C	6-5	200	May 14, 1925	University of Utah
Jack Garfinkel	1947	1949	G	6-0	190	June 13, 1918	St. John's University
Patricio Garino	2017	2017	G-F	6-6	210	May 17, 1993	George Washington University
Gary Garland	1980	1980	G	6-4	180	October 12, 1957	DePaul University
Winston Garland	1988	1995	G	6-2	170	December 19, 1964	Missouri State University
Dick Garmaker	1956	1961	G-F	6-3	200	October 29, 1932	University of Minnesota
Bill Garner	1968	1968	C	6-10	220	June 17, 1940	University of Portland
Chris Garner	1998	2001	G	5-10	156	February 2, 1975	University of Memphis
Bill Garnett	1983	1986	F	6-9	225	April 22, 1960	University of Wyoming
Kevin Garnett	1996	2016	F-C	6-11	240	May 19, 1976	\N
Marlon Garnett	1999	1999	G	6-2	186	July 3, 1975	Santa Clara University
Calvin Garrett	1981	1984	F	6-7	190	July 11, 1956	Oral Roberts University
Dean Garrett	1997	2002	C	6-10	225	November 27, 1966	Indiana University
Diante Garrett	2013	2014	G	6-4	190	November 3, 1988	Iowa State University
Dick Garrett	1970	1974	G	6-3	185	January 31, 1947	Southern Illinois University
Rowland Garrett	1973	1977	F	6-6	210	July 16, 1950	Florida State University
Tom Garrick	1989	1992	G	6-2	185	July 7, 1966	University of Rhode Island
John Garris	1984	1984	F	6-8	205	June 6, 1959	Boston College
Kiwane Garris	1998	2000	G	6-2	183	September 24, 1974	University of Illinois at Urbana-Champaign
Pat Garrity	1999	2008	F	6-9	238	August 23, 1976	University of Notre Dame
Jim Garvin	1974	1974	F	6-7	200	February 5, 1950	Boston University
Marc Gasol	2009	2018	C	7-1	255	January 29, 1985	\N
Pau Gasol	2002	2018	F-C	7-0	250	July 6, 1980	\N
Frank Gates	1950	1950	G	6-0	160	April 12, 1920	Sam Houston State University
Chris Gatling	1992	2002	F-C	6-10	220	September 3, 1967	Old Dominion University
Kenny Gattison	1987	1996	F-C	6-8	225	May 23, 1964	Old Dominion University
Rudy Gay	2007	2018	F	6-8	230	August 17, 1986	University of Connecticut
Ed Gayda	1951	1951	G-F	6-4	210	May 11, 1927	Washington State University
Andrew Gaze	1994	1999	G	6-7	205	July 24, 1965	Seton Hall University
Michael Gbinije	2017	2017	G	6-7	200	June 5, 1992	Syracuse University
Reggie Geary	1997	1998	G	6-2	187	August 31, 1973	University of Arizona
Alonzo Gee	2010	2017	G	6-6	225	May 29, 1987	University of Alabama
Matt Geiger	1993	2002	C	7-0	243	September 10, 1969	Georgia Institute of Technology
Mickael Gelabale	2007	2013	F	6-7	215	May 22, 1983	\N
Devean George	2000	2010	G-F	6-8	220	August 29, 1977	Augsburg College
Jack George	1954	1961	G	6-2	190	November 13, 1928	La Salle University
Paul George	2011	2018	F	6-9	220	May 2, 1990	California State University, Fresno
Tate George	1991	1995	G	6-5	190	May 29, 1968	University of Connecticut
Marcus Georges-Hunt	2017	2018	G	6-5	216	March 28, 1994	Georgia Institute of Technology
Gus Gerard	1975	1981	F-G	6-8	200	July 27, 1953	University of Virginia
Derrick Gervin	1990	1991	F	6-8	200	March 28, 1963	University of Texas at San Antonio
George Gervin	1973	1986	G-F	6-7	180	April 27, 1952	Eastern Michigan University
Gorham Getchell	1947	1947	C	6-4	205	August 14, 1920	Temple University
John Gianelli	1973	1980	C-F	6-10	220	June 10, 1950	University of the Pacific
Dick Gibbs	1972	1976	F-G	6-5	210	December 20, 1948	University of Texas at El Paso
Daniel Gibson	2007	2013	G	6-2	190	February 27, 1986	University of Texas at Austin
Dee Gibson	1950	1950	F-G	5-11	175	August 25, 1923	Western Kentucky University
Hoot Gibson	1950	1950	F-C	6-5	198	December 5, 1921	Creighton University
Jonathan Gibson	2017	2017	G	6-2	185	November 8, 1987	New Mexico State University
Mel Gibson	1964	1964	G	6-3	180	December 30, 1940	Western Carolina University
Mike Gibson	1984	1986	F	6-10	205	October 27, 1960	University of South Carolina Upstate
Taj Gibson	2010	2018	F	6-9	225	June 24, 1985	University of Southern California
J.R. Giddens	2009	2010	G	6-5	215	February 13, 1985	University of New Mexico
Trey Gilder	2010	2010	F	6-9	185	January 24, 1985	Northwestern State University
Eddie Gill	2001	2009	G	6-0	190	August 16, 1978	Weber State University
Kendall Gill	1991	2005	G	6-5	195	May 25, 1968	University of Illinois at Urbana-Champaign
Ben Gillery	1989	1989	C	7-0	235	September 19, 1965	Georgetown University
Jack Gillespie	1970	1970	F	6-6	215	October 1, 1947	Montana State University
Gene Gillette	1947	1947	F	6-2	205	\N	Saint Mary's College of California
Armen Gilliam	1988	2000	F-C	6-9	230	May 28, 1964	University of Nevada, Las Vegas
Herm Gilliam	1970	1977	G-F	6-3	190	May 5, 1946	Purdue University
Artis Gilmore	1972	1988	C	7-2	240	September 21, 1949	Jacksonville University
Walt Gilmore	1971	1971	F	6-6	225	February 27, 1947	Fort Valley State University
Chuck Gilmur	1947	1951	F-C	6-4	225	August 13, 1922	University of Washington
Manu Ginobili	2003	2018	G	6-6	205	July 28, 1977	\N
Gordan Giricek	2003	2008	G-F	6-6	210	June 20, 1977	\N
Jack Givens	1979	1980	F-G	6-5	205	September 21, 1956	University of Kentucky
Mickell Gladness	2012	2012	C	6-11	220	July 26, 1986	Alabama A&M University
George Glamack	1949	1949	C-F	6-6	225	June 7, 1918	University of North Carolina
Gerald Glass	1991	1996	G-F	6-5	221	November 12, 1967	University of Mississippi
Mike Glenn	1978	1987	G	6-2	175	September 10, 1955	Southern Illinois University
Normie Glick	1950	1950	F	6-7	190	November 10, 1927	Loyola Marymount University
Georgi Glouchkov	1986	1986	F	6-8	235	January 10, 1960	\N
Clarence Glover	1972	1972	F	6-8	210	November 1, 1947	Western Kentucky University
Dion Glover	2000	2005	G	6-5	228	October 22, 1978	Georgia Institute of Technology
Andreas Glyniadakis	2007	2007	C	7-1	280	August 21, 1981	\N
Mike Gminski	1981	1994	C	6-11	250	August 3, 1959	Duke University
Rudy Gobert	2014	2018	C	7-1	245	June 26, 1992	\N
Dan Godfread	1991	1992	C	6-10	250	June 14, 1967	University of Evansville
Tom Gola	1956	1966	G-F	6-6	205	January 13, 1933	La Salle University
Ben Goldfaden	1947	1947	F	6-1	185	September 6, 1913	George Washington University
Anthony Goldwire	1996	2006	G	6-1	182	September 6, 1971	University of Houston
Ryan Gomes	2006	2014	F	6-7	250	September 1, 1982	Providence College
Glen Gondrezick	1978	1983	F-G	6-6	218	August 30, 1955	University of Nevada, Las Vegas
Grant Gondrezick	1987	1989	G	6-5	205	January 19, 1963	Pepperdine University
Drew Gooden	2003	2016	F	6-10	250	September 24, 1981	University of Kansas
Gail Goodrich	1966	1979	G	6-1	170	April 23, 1943	University of California, Los Angeles
Steve Goodrich	2001	2002	F	6-10	220	March 18, 1976	Princeton University
Archie Goodwin	2014	2017	G	6-5	200	August 17, 1994	University of Kentucky
Pop Goodwin	1947	1948	F-C	6-2	203	December 22, 1920	\N
Aaron Gordon	2015	2018	F	6-9	220	September 16, 1995	University of Arizona
Ben Gordon	2005	2015	G	6-3	200	April 4, 1983	University of Connecticut
Drew Gordon	2015	2015	F	6-9	245	July 12, 1990	University of New Mexico
Eric Gordon	2009	2018	G	6-4	215	December 25, 1988	Indiana University
Lancaster Gordon	1985	1988	G	6-3	185	June 24, 1962	University of Louisville
Paul Gordon	1950	1950	F	6-3	185	April 8, 1927	University of Notre Dame
Marcin Gortat	2008	2018	C-F	6-11	240	February 17, 1984	\N
Leo Gottlieb	1947	1948	G	5-11	180	November 28, 1920	\N
Andrew Goudelock	2012	2016	G	6-3	200	December 7, 1988	College of Charleston
Gerald Govan	1968	1976	F-C	6-10	220	January 2, 1942	Saint Mary of the Plains College
Bato Govedarica	1954	1954	G	5-11	185	April 17, 1928	DePaul University
Ricky Grace	1994	1994	G	6-1	180	August 20, 1967	University of Oklahoma
Calvin Graham	1968	1968	G	6-2	195	June 7, 1944	Gannon University
Greg Graham	1994	1998	G	6-4	174	November 26, 1970	Indiana University
Joey Graham	2006	2011	F	6-7	225	June 11, 1982	Oklahoma State University
Mal Graham	1968	1969	G	6-1	185	February 23, 1945	New York University
Orlando Graham	1989	1989	F	6-8	220	May 5, 1965	Auburn University at Montgomery
Paul Graham	1992	1994	F-G	6-6	200	November 28, 1967	Ohio University
Stephen Graham	2006	2011	G	6-6	215	June 11, 1982	Oklahoma State University
Treveon Graham	2017	2018	G	6-6	220	October 29, 1993	Virginia Commonwealth University
Jim Grandholm	1991	1991	F-C	7-0	235	October 4, 1960	University of South Florida
Ron Grandison	1989	1996	F	6-6	215	July 9, 1964	University of New Orleans
Danny Granger	2006	2015	F	6-9	222	April 20, 1983	University of New Mexico
Stewart Granger	1984	1987	G	6-3	190	October 27, 1961	Villanova University
Brian Grant	1995	2006	F	6-9	254	March 5, 1972	Xavier University
Bud Grant	1950	1951	F	6-3	195	May 20, 1927	University of Minnesota
Gary Grant	1989	2001	G	6-3	185	April 21, 1965	University of Michigan
Greg Grant	1990	1996	G	5-7	140	August 29, 1966	Trenton State University
Harvey Grant	1989	1999	F	6-8	195	July 4, 1965	University of Oklahoma
Horace Grant	1988	2004	F-C	6-10	215	July 4, 1965	Clemson University
Jerami Grant	2015	2018	F	6-8	210	March 12, 1994	Syracuse University
Jerian Grant	2016	2018	G	6-4	195	October 9, 1992	University of Notre Dame
Josh Grant	1994	1994	F	6-9	223	August 7, 1967	University of Utah
Paul Grant	1999	2004	C	7-0	245	January 6, 1974	University of Wisconsin
Travis Grant	1973	1976	F	6-7	215	January 1, 1950	Kentucky State University
Don Grate	1950	1950	F-G	6-2	185	August 27, 1923	Ohio State University
Butch Graves	1985	1985	G	6-3	200	January 5, 1962	Yale University
Aaron Gray	2008	2014	C	7-0	270	December 7, 1984	University of Pittsburgh
Devin Gray	1997	2000	F	6-7	240	May 31, 1972	Clemson University
Ed Gray	1998	1999	G	6-3	210	September 27, 1975	University of California
Evric Gray	1997	1997	F	6-7	235	December 13, 1969	University of Nevada, Las Vegas
Gary Gray	1968	1968	G	6-1	185	February 23, 1945	Oklahoma City University
Leonard Gray	1975	1977	F	6-8	240	December 19, 1951	California State University, Long Beach
Stuart Gray	1985	1991	C-F	7-0	235	May 27, 1963	University of California, Los Angeles
Sylvester Gray	1989	1989	F	6-6	230	July 8, 1967	University of Memphis
Wyndol Gray	1947	1948	G-F	6-1	175	March 20, 1922	Harvard University
Jeff Grayer	1989	1998	F-G	6-5	200	December 17, 1965	Iowa State University
Bob Greacen	1970	1972	F	6-7	206	September 15, 1947	Rutgers University
A.C. Green	1986	2001	F-C	6-9	220	October 4, 1963	Oregon State University
Danny Green	2010	2018	G-F	6-6	215	June 22, 1987	University of North Carolina
Devin Green	2006	2006	G	6-7	210	October 25, 1982	Hampton University
Draymond Green	2013	2018	F	6-7	230	March 4, 1990	Michigan State University
Erick Green	2015	2016	G	6-4	185	May 9, 1991	Virginia Polytechnic Institute and State University
Gerald Green	2006	2017	G-F	6-7	205	January 26, 1986	\N
JaMychal Green	2015	2018	F	6-9	227	June 21, 1990	University of Alabama
Jeff Green	2008	2018	F	6-9	235	August 28, 1986	Georgetown University
Johnny Green	1960	1973	F-C	6-5	200	December 8, 1933	Michigan State University
Ken Green	1986	1986	F	6-8	215	September 19, 1959	University of Texas-Pan American
Kenny Green	1986	1987	F	6-6	210	October 11, 1964	Wake Forest University
Lamar Green	1970	1975	F-C	6-7	210	March 22, 1947	Morehead State University
Litterial Green	1993	1999	G	6-1	185	March 7, 1970	University of Georgia
Luther Green	1970	1973	F	6-7	190	November 13, 1946	Long Island University
Mike Green	1974	1980	C-F	6-10	200	August 6, 1951	Louisiana Tech University
Rickey Green	1978	1992	G	6-0	170	August 18, 1954	University of Michigan
Sean Green	1992	1994	G-F	6-5	210	February 2, 1970	Iona College
Si Green	1957	1966	G-F	6-2	185	August 20, 1933	Duquesne University
Sidney Green	1984	1993	F-C	6-9	220	January 4, 1961	University of Nevada, Las Vegas
Steve Green	1976	1979	F	6-7	220	October 4, 1953	Indiana University
Taurean Green	2008	2008	G	6-0	177	November 28, 1986	University of Florida
Tommie Green	1979	1979	G	6-2	185	April 8, 1956	Southern University and A&M College
Willie Green	2004	2015	G	6-4	200	July 28, 1981	University of Detroit Mercy
Donte Greene	2009	2012	F	6-11	226	February 21, 1988	Syracuse University
Orien Greene	2006	2011	G	6-4	208	February 4, 1982	University of Louisiana at Lafayette
Jerry Greenspan	1964	1965	F	6-5	195	November 22, 1941	University of Maryland
Dave Greenwood	1980	1991	F-C	6-9	222	May 27, 1957	University of California, Los Angeles
Hal Greer	1959	1973	G-F	6-2	175	June 26, 1936	Marshall University
Lynn Greer	2007	2007	G	6-2	175	October 23, 1979	Temple University
Gary Gregor	1969	1974	F-C	6-7	225	August 13, 1945	University of South Carolina
Claude Gregory	1986	1988	F	6-8	205	December 26, 1958	University of Wisconsin
John Greig	1983	1983	F	6-7	215	April 28, 1961	University of Oregon
Norm Grekin	1954	1954	F	6-5	180	June 22, 1930	La Salle University
Kevin Grevey	1976	1985	G-F	6-5	210	May 12, 1953	University of Kentucky
Dennis Grey	1969	1970	C-F	6-8	215	August 26, 1947	California Western Uiversity
Adrian Griffin	2000	2008	G-F	6-5	217	July 4, 1974	Seton Hall University
Blake Griffin	2011	2018	F	6-10	251	March 16, 1989	University of Oklahoma
Eddie Griffin	2002	2007	F-C	6-10	220	May 30, 1982	Seton Hall University
Greg Griffin	1978	1978	F	6-7	190	September 6, 1952	Idaho State University
Paul Griffin	1977	1983	F-C	6-9	205	January 20, 1954	Western Michigan University
Taylor Griffin	2010	2010	F	6-7	238	April 18, 1986	University of Oklahoma
Darrell Griffith	1981	1991	G	6-4	190	June 16, 1958	University of Louisville
Chuck Grigsby	1955	1955	G	6-5	190	August 15, 1928	University of Dayton
Derek Grimm	1998	1998	F	6-9	230	August 3, 1974	University of Missouri
Woody Grimshaw	1947	1947	G	6-1	185	September 24, 1919	Brown University
Dick Groat	1953	1953	G	5-11	180	November 4, 1930	Duke University
Bob Gross	1976	1983	F-G	6-6	200	August 3, 1953	California State University, Long Beach
Mike Grosso	1972	1972	C	6-9	230	September 7, 1947	University of Louisville
Jerry Grote	1965	1965	G	6-4	215	December 28, 1940	Loyola Marymount University
Alex Groza	1950	1951	C	6-7	218	October 7, 1926	University of Kentucky
Dick Grubar	1970	1970	G	6-4	184	July 26, 1947	University of North Carolina
Anthony Grundy	2006	2006	G	6-3	180	April 15, 1979	North Carolina State University
Ernie Grunfeld	1978	1986	G-F	6-6	210	April 24, 1955	University of Tennessee
Gene Guarilia	1960	1963	F	6-5	220	September 13, 1937	George Washington University
Petur Gudmundsson	1982	1989	C	7-2	260	October 30, 1958	University of Washington
Richie Guerin	1957	1970	G	6-4	195	May 29, 1932	Iona College
Tom Gugliotta	1993	2005	F	6-10	240	December 19, 1969	North Carolina State University
Andres Guibert	1994	1995	F-C	6-10	225	October 28, 1968	\N
Jay Guidinger	1993	1994	C	6-10	255	August 18, 1969	University of Minnesota Duluth
Coulby Gunther	1947	1949	F	6-4	190	February 5, 1923	Boston College
Dave Gunther	1963	1963	F	6-7	190	July 22, 1937	University of Iowa
Al Guokas	1950	1950	F-G	6-5	200	August 7, 1925	Saint Joseph's University
Matt Guokas	1947	1947	F	6-3	195	November 11, 1915	Saint Joseph's University
Matt Guokas	1967	1976	G-F	6-5	175	February 25, 1944	Saint Joseph's University
Jorge Gutierrez	2014	2016	G	6-3	191	December 27, 1988	University of California
A.J. Guyton	2001	2003	G	6-1	180	February 12, 1978	Indiana University
Rudy Hackett	1976	1977	F	6-9	210	May 10, 1953	Syracuse University
Hamed Haddadi	2009	2013	C	7-2	254	May 19, 1985	\N
Jim Hadnot	1968	1968	C-F	6-10	235	January 15, 1940	Providence College
Scott Haffner	1990	1991	G	6-3	180	February 2, 1966	University of Evansville
Cliff Hagan	1957	1970	F-G	6-4	210	December 9, 1931	University of Kentucky
Glenn Hagan	1982	1982	G	6-0	170	June 25, 1955	St. Bonaventure University
Tom Hagan	1970	1971	G	6-3	185	January 29, 1947	Vanderbilt University
Robert Hahn	1950	1950	C	6-10	240	August 25, 1925	North Carolina State University
Al Hairston	1969	1970	G	6-1	170	December 11, 1945	Bowling Green State University
Happy Hairston	1965	1975	F	6-7	225	May 31, 1942	New York University
Lindsay Hairston	1976	1976	F-C	6-7	180	December 8, 1951	Michigan State University
Malik Hairston	2009	2010	G	6-6	220	February 23, 1987	University of Oregon
P.J. Hairston	2015	2016	G-F	6-6	230	December 24, 1992	University of North Carolina
Marcus Haislip	2003	2010	F	6-10	230	December 22, 1980	University of Tennessee
Chick Halbert	1947	1951	C	6-9	225	February 27, 1919	West Texas A&M University
Swede Halbrook	1961	1962	C	7-3	235	January 30, 1933	Oregon State University
Bruce Hale	1949	1951	G-F	6-1	170	August 30, 1918	Santa Clara University
Hal Hale	1968	1968	G	6-1	180	September 21, 1945	Utah State University
Jack Haley	1989	1998	C-F	6-10	240	January 27, 1964	University of California, Los Angeles
Shaler Halimon	1969	1973	G-F	6-5	199	March 30, 1945	Utah State University
Mike Hall	2007	2007	F	6-8	230	June 5, 1984	George Washington University
Jeff Halliburton	1972	1973	G	6-5	193	July 3, 1949	Drake University
Darvin Ham	1997	2005	F	6-7	220	July 23, 1973	Texas Tech University
Steve Hamer	1997	1997	C	7-0	245	November 13, 1973	University of Tennessee
Dale Hamilton	1950	1950	G-F	6-0	180	August 16, 1919	Franklin College
Daniel Hamilton	2018	2018	G-F	6-7	195	August 8, 1995	University of Connecticut
Dennis Hamilton	1968	1971	F	6-8	210	May 8, 1944	Arizona State University
Joe Hamilton	1971	1976	G	5-10	160	July 5, 1948	University of North Texas
Jordan Hamilton	2012	2016	G-F	6-7	220	October 6, 1990	University of Texas at Austin
Justin Hamilton	2014	2017	C	7-0	260	April 1, 1990	Louisiana State University
Ralph Hamilton	1949	1949	G-F	6-1	188	June 10, 1921	Indiana University
Richard Hamilton	2000	2013	G-F	6-6	185	February 14, 1978	University of Connecticut
Roy Hamilton	1980	1981	G	6-2	180	July 20, 1957	University of California, Los Angeles
Steve Hamilton	1959	1960	F-C	6-6	190	November 30, 1935	Morehead State University
Tang Hamilton	2002	2002	F	6-8	220	May 26, 1978	Mississippi State University
Thomas Hamilton	1996	2000	C	7-2	330	April 3, 1975	University of Pittsburgh
Zendon Hamilton	2001	2006	C-F	6-11	250	April 27, 1975	St. John's University
Geert Hammink	1994	1996	C	7-0	262	July 12, 1969	Louisiana State University
Julian Hammond	1968	1972	F	6-5	205	May 27, 1943	University of Tulsa
Tom Hammonds	1990	2001	F	6-9	215	March 27, 1967	Georgia Institute of Technology
A.J. Hammons	2017	2017	C	7-0	260	August 27, 1992	Purdue University
Joe Hamood	1968	1968	G	6-0	180	September 7, 1943	University of Houston
Darrin Hancock	1995	1997	G-F	6-7	205	November 3, 1971	University of Kansas
Ben Handlogten	2004	2005	C	6-10	240	November 16, 1973	Western Michigan University
Cecil Hankins	1947	1948	G	6-1	175	January 6, 1922	Oklahoma State University
Phil Hankinson	1974	1975	F	6-8	195	July 26, 1951	University of Pennsylvania
Alex Hannum	1950	1957	F-C	6-7	210	July 19, 1923	University of Southern California
Don Hanrahan	1953	1953	F	6-7	200	February 6, 1929	Loyola University of Chicago
Rollen Hans	1954	1955	G	6-2	210	April 13, 1931	Long Island University
Ben Hansbrough	2013	2013	G	6-3	203	December 23, 1987	University of Notre Dame
Tyler Hansbrough	2010	2016	F	6-9	250	November 3, 1985	University of North Carolina
Bob Hansen	1984	1992	G	6-6	190	January 18, 1961	University of Iowa
Glenn Hansen	1976	1978	G	6-4	205	April 21, 1952	Louisiana State University
Lars Hansen	1979	1979	C	6-10	225	September 14, 1954	University of Washington
Travis Hansen	2004	2004	G	6-6	205	April 15, 1978	Brigham Young University
Reggie Hanson	1998	1998	F	6-8	195	October 6, 1968	University of Kentucky
Bill Hanzlik	1981	1990	G-F	6-7	185	December 6, 1957	University of Notre Dame
Luke Harangody	2011	2012	F	6-8	246	January 2, 1988	University of Notre Dame
Anfernee Hardaway	1994	2008	G-F	6-7	195	July 18, 1971	University of Memphis
Tim Hardaway	1990	2003	G	6-0	175	September 1, 1966	University of Texas at El Paso
Tim Hardaway	2014	2018	G	6-6	205	March 16, 1992	University of Michigan
James Harden	2010	2018	G	6-5	220	August 26, 1989	Arizona State University
Reggie Harding	1964	1968	C	7-0	249	May 4, 1942	\N
Charlie Hardnett	1963	1965	F-C	6-8	225	September 13, 1938	Grambling State University
Alan Hardy	1981	1982	F	6-7	195	May 25, 1957	University of Michigan
Darrell Hardy	1968	1968	F	6-7	220	\N	Baylor University
James Hardy	1979	1982	F-C	6-8	220	December 1, 1956	University of San Francisco
Ira Harge	1968	1973	C	6-9	225	March 14, 1941	University of New Mexico
John Hargis	1950	1951	G-F	6-2	180	August 20, 1920	University of Texas at Austin
Maurice Harkless	2013	2018	F-G	6-9	215	May 11, 1993	St. John's University
Jerry Harkness	1964	1969	G	6-2	175	May 7, 1940	Loyola University of Chicago
Skip Harlicka	1969	1969	G	6-1	185	October 14, 1946	University of South Carolina
Jerome Harmon	1995	1995	G	6-4	190	February 6, 1969	University of Louisville
Derek Harper	1984	1999	G	6-4	185	October 13, 1961	University of Illinois at Urbana-Champaign
Justin Harper	2012	2017	F	6-10	225	August 30, 1989	University of Richmond
Mike Harper	1981	1982	C-F	6-10	195	December 9, 1957	North Park University
Ron Harper	1987	2001	G-F	6-6	185	January 20, 1964	Miami University
Matt Harpring	1999	2009	F	6-7	231	May 31, 1976	Georgia Institute of Technology
Montrezl Harrell	2016	2018	F-C	6-8	240	January 26, 1994	University of Louisville
Josh Harrellson	2012	2014	C	6-10	275	February 12, 1989	University of Kentucky
Adam Harrington	2003	2003	G	6-5	200	July 5, 1980	Auburn University
Al Harrington	1999	2014	F	6-9	230	February 17, 1980	\N
Junior Harrington	2003	2007	G	6-4	180	October 2, 1980	Wingate University
Othella Harrington	1997	2008	F-C	6-9	235	January 31, 1974	Georgetown University
Art Harris	1969	1972	G	6-4	185	January 13, 1947	Stanford University
Bernie Harris	1975	1975	F	6-10	200	November 26, 1950	Virginia Commonwealth University
Billy Harris	1975	1975	G	6-2	185	November 12, 1951	Northern Illinois University
Bob Harris	1950	1954	F-C	6-7	195	March 16, 1927	Oklahoma State University
Chris Harris	1956	1956	G	6-3	190	August 11, 1933	University of Dayton
Devin Harris	2005	2018	G	6-3	192	February 27, 1983	University of Wisconsin
Elias Harris	2014	2014	F	6-8	239	July 6, 1989	Gonzaga University
Gary Harris	2015	2018	G	6-4	210	September 14, 1994	Michigan State University
Joe Harris	2015	2018	G	6-6	219	September 6, 1991	University of Virginia
Lucious Harris	1994	2005	G	6-5	190	December 18, 1970	California State University, Long Beach
Manny Harris	2011	2017	G	6-5	185	September 21, 1989	University of Michigan
Mike Harris	2008	2014	F	6-6	240	June 15, 1983	Rice University
Steve Harris	1986	1990	G	6-5	195	October 15, 1963	University of Tulsa
Terrel Harris	2012	2013	G	6-5	190	August 10, 1987	Oklahoma State University
Tobias Harris	2012	2018	F	6-9	235	July 15, 1992	University of Tennessee
Tony Harris	1991	1995	G	6-3	190	May 13, 1967	University of New Orleans
Aaron Harrison	2016	2017	G	6-6	210	October 28, 1994	University of Kentucky
Andrew Harrison	2017	2018	G	6-6	213	October 28, 1994	University of Kentucky
Bob Harrison	1950	1958	G	6-1	190	August 12, 1927	University of Michigan
David Harrison	2005	2008	C	7-0	280	August 15, 1982	University of Colorado
Jason Hart	2001	2010	G	6-3	185	April 29, 1978	Syracuse University
Josh Hart	2018	2018	G	6-5	209	March 6, 1995	Villanova University
Antonio Harvey	1994	2003	F-C	6-11	225	July 6, 1970	Pfeiffer University
Donnell Harvey	2001	2005	F	6-8	220	August 26, 1980	University of Florida
Scott Haskin	1994	1994	C-F	6-11	250	September 19, 1970	Oregon State University
Clem Haskins	1968	1976	G	6-3	195	July 11, 1943	Western Kentucky University
Udonis Haslem	2004	2018	F-C	6-8	235	June 9, 1980	University of Florida
Trenton Hassell	2002	2010	G	6-5	200	March 4, 1979	Austin Peay State University
Billy Hassett	1950	1951	G	5-11	180	October 21, 1921	University of Notre Dame
Joe Hassett	1978	1983	G	6-5	180	September 11, 1955	Providence College
Scott Hastings	1983	1993	F-C	6-10	235	June 3, 1960	University of Arkansas
Kirk Haston	2002	2003	F	6-9	242	March 10, 1979	Indiana University
Vern Hatton	1959	1962	G	6-3	195	January 13, 1936	University of Kentucky
John Havlicek	1963	1978	F-G	6-5	203	April 8, 1940	Ohio State University
Spencer Hawes	2008	2017	C-F	7-1	245	April 28, 1988	University of Washington
Steve Hawes	1975	1984	C-F	6-9	220	May 26, 1950	University of Washington
Connie Hawkins	1968	1976	F-C	6-8	210	July 17, 1942	University of Iowa
Hersey Hawkins	1989	2001	G	6-3	190	September 29, 1966	Bradley University
Juaquin Hawkins	2003	2003	G-F	6-7	220	July 2, 1973	California State University, Long Beach
Marshall Hawkins	1950	1950	F	6-3	205	August 3, 1924	University of Tennessee
Michael Hawkins	1997	2001	G	6-0	178	October 28, 1972	Xavier University
Robert Hawkins	1976	1979	G	6-4	190	June 30, 1954	Illinois State University
Tom Hawkins	1960	1969	F	6-5	210	December 22, 1936	University of Notre Dame
Nate Hawthorne	1974	1976	G	6-4	190	January 15, 1950	Southern Illinois University
Chuck Hayes	2006	2016	F-C	6-6	240	June 11, 1983	University of Kentucky
Elvin Hayes	1969	1984	F-C	6-9	235	November 17, 1945	University of Houston
Jarvis Hayes	2004	2010	F	6-7	220	August 9, 1981	University of Georgia
Jim Hayes	1971	1971	G	6-3	200	February 18, 1948	Boston University
Steve Hayes	1982	1986	C	7-0	205	August 2, 1955	Idaho State University
Gordon Hayward	2011	2018	F-G	6-8	226	March 23, 1990	Butler University
Lazar Hayward	2011	2013	F	6-6	225	November 26, 1986	Marquette University
Brendan Haywood	2002	2015	C	7-0	268	November 27, 1979	University of North Carolina
Spencer Haywood	1970	1983	F-C	6-8	225	April 22, 1949	University of Detroit Mercy
John Hazen	1949	1949	G	6-2	172	March 2, 1927	Indiana State University
Walt Hazzard	1965	1974	G	6-2	185	April 15, 1942	University of California, Los Angeles
Luther Head	2006	2011	G	6-3	185	November 26, 1982	University of Illinois at Urbana-Champaign
Shane Heal	1997	2004	G	6-0	180	September 6, 1970	\N
Brian Heaney	1970	1970	G	6-2	180	September 3, 1946	Acadia University
Gar Heard	1971	1981	F	6-6	219	May 3, 1948	University of Oklahoma
Herm Hedderick	1955	1955	G	6-5	170	January 10, 1930	Canisius College
Alvin Heggs	1996	1996	F	6-8	225	December 12, 1967	University of Texas at Austin
Tom Heinsohn	1957	1965	F-C	6-7	218	August 26, 1934	College of the Holy Cross
Dick Hemric	1956	1957	F	6-6	220	August 29, 1933	Wake Forest University
Alan Henderson	1996	2007	F	6-9	235	December 2, 1972	Indiana University
Cedric Henderson	1987	1987	F	6-8	210	October 3, 1965	University of Georgia
Cedric Henderson	1998	2002	F	6-7	215	March 11, 1975	University of Memphis
Dave Henderson	1988	1988	G	6-5	195	July 21, 1964	Duke University
Gerald Henderson	1980	1992	G	6-2	175	January 16, 1956	Virginia Commonwealth University
Gerald Henderson	2010	2017	G	6-5	215	December 9, 1987	Duke University
J.R. Henderson	1999	1999	F	6-8	226	October 30, 1976	University of California, Los Angeles
Jerome Henderson	1986	1987	C-F	6-11	230	October 5, 1959	University of New Mexico
Kevin Henderson	1987	1988	G	6-4	195	March 22, 1964	California State University, Fullerton
Tom Henderson	1975	1983	G	6-3	190	January 26, 1952	University of Hawaii
Mark Hendrickson	1997	2000	F	6-9	220	June 23, 1974	Washington State University
Larry Hennessy	1956	1957	G	6-3	185	May 20, 1929	Villanova University
Don Henriksen	1953	1955	F-C	6-7	225	October 10, 1929	University of California
Al Henry	1971	1972	C	6-9	190	February 9, 1949	University of Wisconsin
Bill Henry	1949	1950	C	6-9	215	December 27, 1924	Rice University
Carl Henry	1986	1986	G	6-6	205	August 16, 1960	University of Kansas
Conner Henry	1987	1988	G	6-7	195	July 21, 1963	University of California, Santa Barbara
Skeeter Henry	1994	1994	G	6-7	190	December 8, 1967	University of Oklahoma
Xavier Henry	2011	2015	G	6-6	220	March 15, 1991	University of Kansas
John Henson	2013	2018	C-F	6-11	229	December 28, 1990	University of North Carolina
Steve Henson	1991	1999	G	5-11	177	February 2, 1968	Kansas State University
Charles Hentz	1971	1971	F	6-5	210	September 13, 1947	University of Arkansas at Pine Bluff
Bill Herman	1950	1950	G	6-3	170	May 17, 1924	Mount Union College
Kleggie Hermsen	1947	1953	C-F	6-9	225	March 12, 1923	University of Minnesota
Juan Hernangomez	2017	2018	F	6-9	230	September 28, 1995	\N
Willy Hernangomez	2017	2018	C	6-11	240	May 27, 1994	\N
Chris Herren	2000	2001	G	6-2	197	September 27, 1975	California State University, Fresno
Carl Herrera	1992	1999	F	6-9	215	December 14, 1966	University of Houston
Walter Herrmann	2007	2009	F	6-9	225	June 26, 1979	\N
Keith Herron	1979	1982	G-F	6-6	195	June 14, 1956	Villanova University
Sonny Hertzberg	1947	1951	G	5-10	175	July 29, 1922	City College of New York
Dan Hester	1971	1971	F	6-8	210	November 8, 1948	Louisiana State University
Fred Hetzel	1966	1971	F-C	6-8	220	July 21, 1942	Davidson College
Bill Hewitt	1969	1975	F	6-7	210	August 8, 1944	University of Southern California
Jack Hewson	1948	1948	F-C	6-6	195	September 7, 1924	Temple University
Art Heyman	1964	1970	F-G	6-5	205	June 24, 1941	Duke University
Mario Hezonja	2016	2018	F-G	6-8	215	February 25, 1995	\N
Roy Hibbert	2009	2017	C	7-2	270	December 11, 1986	Georgetown University
Nat Hickey	1948	1948	G-F	5-11	180	January 30, 1902	\N
Phil Hicks	1977	1979	F	6-7	205	January 31, 1953	Tulane University
J.J. Hickson	2009	2016	F-C	6-9	242	September 4, 1988	North Carolina State University
Buddy Hield	2017	2018	G	6-4	214	December 17, 1993	University of Oklahoma
Bill Higgins	1975	1975	G	6-2	180	December 15, 1952	Ashland University
Cory Higgins	2012	2013	G	6-5	180	June 14, 1989	University of Colorado
Earle Higgins	1971	1971	F	6-8	195	December 30, 1946	Eastern Michigan University
Mike Higgins	1990	1991	F	6-9	220	February 17, 1967	University of Northern Colorado
Rod Higgins	1983	1995	F	6-7	200	January 31, 1960	California State University, Fresno
Sean Higgins	1991	1998	G-F	6-9	205	December 30, 1968	University of Michigan
Kenny Higgs	1979	1982	G	6-0	180	January 31, 1955	Louisiana State University
Johnny High	1980	1984	G	6-3	185	April 25, 1957	University of Nevada, Reno
Wayne Hightower	1963	1972	F-C	6-8	192	January 14, 1940	University of Kansas
Nene Hilario	2003	2018	F-C	6-11	250	September 13, 1982	\N
Armond Hill	1977	1984	G	6-4	190	March 31, 1953	Princeton University
Cleo Hill	1962	1962	G	6-1	185	May 24, 1938	Winston-Salem State University
Gary Hill	1964	1965	G	6-4	185	October 7, 1941	Oklahoma City University
Leo Klier	1949	1950	F-G	6-2	170	May 21, 1923	University of Notre Dame
George Hill	2009	2018	G	6-3	188	May 4, 1986	Indiana University-Purdue University Indianapolis
Grant Hill	1995	2013	F-G	6-8	225	October 5, 1972	Duke University
Jordan Hill	2010	2017	C-F	6-10	235	July 27, 1987	University of Arizona
Simmie Hill	1970	1974	F	6-7	233	November 14, 1946	West Texas A&M University
Solomon Hill	2014	2017	F	6-7	225	March 18, 1991	University of Arizona
Steven Hill	2009	2009	C	7-0	248	November 14, 1985	University of Arkansas
Tyrone Hill	1991	2004	F	6-9	240	March 19, 1968	Xavier University
Art Hillhouse	1947	1948	C	6-7	220	June 12, 1916	Long Island University
Darrun Hilliard	2016	2018	G	6-6	205	April 13, 1993	Villanova University
Darnell Hillman	1972	1980	F-C	6-9	215	August 29, 1949	San Jose State University
Fred Hilton	1972	1973	G-F	6-3	185	January 15, 1948	Grambling State University
Kirk Hinrich	2004	2016	G	6-4	190	January 2, 1981	University of Kansas
Roy Hinson	1984	1991	F-C	6-9	210	May 2, 1961	Rutgers University
Mel Hirsch	1947	1947	G	5-6	165	July 31, 1921	Brooklyn College
Lew Hitch	1952	1957	F-C	6-8	200	July 16, 1929	Kansas State University
Robert Hite	2007	2007	G	6-2	184	January 12, 1984	University of Miami
Darington Hobson	2012	2012	G	6-7	210	September 29, 1987	University of New Mexico
Donald Hodge	1992	1996	C	7-0	230	February 25, 1969	Temple University
Julius Hodge	2006	2007	G	6-7	210	November 18, 1983	North Carolina State University
Craig Hodges	1983	1992	G	6-2	190	June 27, 1960	California State University, Long Beach
Charlie Hoefer	1947	1948	G	5-9	158	September 16, 1921	Queens College
Paul Hoffman	1948	1955	G-F	6-2	195	April 12, 1925	Purdue University
Bob Hogsett	1967	1968	F	6-7	230	January 29, 1941	University of Tennessee
Paul Hogue	1963	1964	C	6-9	240	April 28, 1940	University of Cincinnati
Fred Hoiberg	1996	2005	G	6-4	203	October 15, 1972	Iowa State University
Doug Holcomb	1949	1949	F	6-4	200	February 9, 1925	University of Wisconsin
Randy Holcomb	2006	2006	F	6-9	225	August 8, 1979	San Diego State University
Jrue Holiday	2010	2018	G	6-4	205	June 12, 1990	University of California, Los Angeles
Justin Holiday	2013	2018	G	6-6	185	April 5, 1989	University of Washington
Brad Holland	1980	1982	G	6-3	180	December 6, 1956	University of California, Los Angeles
Joe Holland	1950	1952	F	6-4	185	September 26, 1925	University of Kentucky
John Holland	2018	2018	G-F	6-5	205	November 6, 1988	Boston University
Wilbur Holland	1976	1979	G	6-0	175	November 8, 1951	University of New Orleans
Lionel Hollins	1976	1985	G	6-3	185	October 19, 1953	Arizona State University
Ryan Hollins	2007	2016	C	7-0	240	October 10, 1984	University of California, Los Angeles
Essie Hollis	1979	1979	F	6-6	195	May 16, 1955	St. Bonaventure University
Rondae Hollis-Jefferson	2016	2018	F	6-7	220	January 3, 1995	University of Arizona
Dennis Holman	1968	1968	G	6-3	175	October 8, 1945	Southern Methodist University
Richaun Holmes	2016	2018	F-C	6-10	245	October 15, 1993	Bowling Green State University
Jim Holstein	1953	1956	F-G	6-3	180	September 24, 1930	University of Cincinnati
A.W. Holt	1971	1971	F	6-7	210	August 26, 1946	Jackson State University
Mike Holton	1985	1990	G	6-4	185	August 4, 1961	University of California, Los Angeles
Dick Holub	1948	1948	C	6-6	205	October 29, 1921	Long Island University
Joe Holup	1957	1959	F	6-6	215	February 26, 1934	George Washington University
Red Holzman	1949	1954	G	5-10	175	August 10, 1920	City College of New York
Jerald Honeycutt	1998	1999	F-G	6-9	245	October 20, 1974	Tulane University
Tyler Honeycutt	2012	2013	F	6-8	188	July 15, 1990	University of California, Los Angeles
Derek Hood	2000	2000	F	6-8	222	December 22, 1976	University of Arkansas
Rodney Hood	2015	2018	G-F	6-8	206	October 20, 1992	Duke University
Bobby Hooper	1969	1969	G	6-0	180	December 22, 1946	University of Dayton
Carroll Hooser	1968	1968	F	6-7	230	March 5, 1944	Southern Methodist University
Tom Hoover	1964	1969	C	6-9	230	January 23, 1941	Villanova University
Bob Hopkins	1957	1960	C-F	6-8	205	November 3, 1934	Grambling State University
Dave Hoppen	1988	1993	C-F	6-11	235	March 13, 1964	University of Nebraska
Dennis Hopson	1988	1992	G-F	6-5	200	April 22, 1965	Ohio State University
Scotty Hopson	2014	2014	G	6-7	204	August 8, 1989	University of Tennessee
Johnny Horan	1956	1956	F	6-8	190	November 24, 1932	University of Dayton
Cedrick Hordges	1981	1982	F-C	6-8	220	January 8, 1957	University of South Carolina
Al Horford	2008	2018	C-F	6-10	245	June 3, 1986	University of Florida
Tito Horford	1989	1994	C	7-1	245	January 19, 1966	University of Miami
Ron Horn	1962	1968	F	6-7	220	May 24, 1938	Indiana University
Jeff Hornacek	1987	2000	G	6-3	190	May 3, 1963	Iowa State University
Dennis Horner	2012	2012	F	6-9	230	February 5, 1988	North Carolina State University
Robert Horry	1993	2008	F	6-9	220	August 25, 1970	University of Alabama
Ed Horton	1990	1990	F	6-8	230	December 17, 1967	University of Iowa
Bill Hosket	1969	1972	F-C	6-8	225	December 20, 1946	Ohio State University
Bob Houbregs	1954	1958	C-F	6-7	210	March 12, 1932	University of Washington
Danuel House	2017	2018	G	6-7	207	June 7, 1993	Texas A&M University
Eddie House	2001	2011	G	6-1	180	May 14, 1978	Arizona State University
Allan Houston	1994	2005	G	6-6	200	April 20, 1971	University of Tennessee
Byron Houston	1993	1996	F	6-5	250	November 22, 1969	Oklahoma State University
Tom Hovasse	1995	1995	F	6-8	205	January 31, 1967	Pennsylvania State University
Brian Howard	1992	1993	F	6-6	204	October 19, 1967	North Carolina State University
Dwight Howard	2005	2018	C	6-11	265	December 8, 1985	\N
Greg Howard	1971	1972	F-C	6-9	215	January 8, 1948	University of New Mexico
Josh Howard	2004	2013	F-G	6-7	210	April 28, 1980	Wake Forest University
Juwan Howard	1995	2013	F	6-9	240	February 7, 1973	University of Michigan
Mo Howard	1977	1977	G	6-2	170	August 25, 1954	University of Maryland
Otis Howard	1979	1979	F	6-7	220	November 5, 1956	Austin Peay State University
Stephen Howard	1993	1998	F	6-9	225	July 15, 1970	DePaul University
Bailey Howell	1960	1971	F	6-7	210	January 20, 1937	Mississippi State University
Bob Hubbard	1948	1949	C-F	6-6	215	December 27, 1922	Springfield College
Phil Hubbard	1980	1989	F-C	6-8	215	December 13, 1956	University of Michigan
Lester Hudson	2010	2015	G	6-3	190	August 7, 1984	University of Tennessee at Martin
Lou Hudson	1967	1979	F-G	6-5	210	July 11, 1944	University of Minnesota
Troy Hudson	1998	2008	G	6-1	170	March 13, 1976	Southern Illinois University
Marcelo Huertas	2016	2017	G	6-3	200	May 25, 1983	\N
Josh Huestis	2016	2018	F	6-7	230	December 19, 1991	Stanford University
Nate Huffman	2003	2003	C	7-1	245	April 2, 1975	Central Michigan University
Alfredrick Hughes	1986	1986	F-G	6-5	215	July 19, 1962	Loyola University of Chicago
Eddie Hughes	1988	1990	G	5-10	165	May 26, 1960	Colorado State University
Kim Hughes	1976	1981	C	6-11	220	June 4, 1952	University of Wisconsin
Larry Hughes	1999	2012	G	6-5	184	January 23, 1979	Saint Louis University
Rick Hughes	2000	2000	F	6-9	235	August 22, 1973	Thomas More College
Robbie Hummel	2014	2015	F	6-8	215	March 8, 1989	Purdue University
John Hummer	1971	1976	F-C	6-9	230	May 4, 1948	Princeton University
Ryan Humphrey	2003	2005	F	6-8	235	July 24, 1979	University of Notre Dame
Jay Humphries	1985	1995	G	6-3	185	October 17, 1962	University of Colorado
Kris Humphries	2005	2017	F-C	6-9	235	February 6, 1985	University of Minnesota
Hot Rod Hundley	1958	1963	G	6-4	185	October 26, 1934	West Virginia University
Brandon Hunter	2004	2005	F	6-7	260	November 24, 1980	Ohio University
Cedric Hunter	1992	1992	G	6-0	180	January 16, 1965	University of Kansas
Chris Hunter	2010	2010	F	6-11	240	July 7, 1984	University of Michigan
Les Hunter	1965	1973	F-C	6-7	210	August 16, 1942	Loyola University of Chicago
Lindsey Hunter	1994	2010	G	6-2	170	December 3, 1970	Jackson State University
Othello Hunter	2009	2010	F	6-8	225	May 28, 1986	Ohio State University
R.J. Hunter	2016	2017	G	6-5	185	October 24, 1993	Georgia State University
Steven Hunter	2002	2010	C	7-0	220	October 31, 1981	DePaul University
Vince Hunter	2018	2018	F	6-8	208	August 5, 1994	University of Texas at El Paso
Bobby Hurley	1994	1998	G	6-0	165	June 28, 1971	Duke University
Roy Hurley	1947	1947	F-G	6-2	170	August 12, 1922	Murray State University
Geoff Huston	1980	1987	G	6-2	175	November 8, 1957	Texas Tech University
Paul Huston	1948	1948	F	6-3	175	June 2, 1925	Ohio State University
Mel Hutchins	1952	1958	F-C	6-6	200	November 22, 1928	Brigham Young University
Joe Hutton	1951	1952	G	6-1	170	October 6, 1928	Hamline University
Greg Hyder	1971	1971	F	6-6	215	June 21, 1948	Eastern New Mexico University
Marc Iavaroni	1983	1989	F	6-8	210	September 15, 1956	University of Virginia
Serge Ibaka	2010	2018	F-C	6-10	235	September 18, 1989	\N
Andre Iguodala	2005	2018	G-F	6-6	215	January 28, 1984	University of Arizona
Zydrunas Ilgauskas	1998	2011	C	7-3	238	June 5, 1975	\N
Mile Ilic	2007	2007	C	7-1	230	June 2, 1984	\N
Didier Ilunga-Mbenga	2005	2011	C	7-0	245	December 30, 1980	\N
Ersan Ilyasova	2007	2018	F	6-10	235	May 15, 1987	\N
Darrall Imhoff	1961	1972	C	6-10	220	October 11, 1938	University of California
Tom Ingelsby	1974	1976	G	6-3	180	February 12, 1951	Villanova University
Joe Ingles	2015	2018	F-G	6-8	226	October 2, 1987	\N
Damien Inglis	2016	2016	F	6-8	246	May 20, 1995	\N
Brandon Ingram	2017	2018	F	6-9	190	September 2, 1997	Duke University
McCoy Ingram	1958	1958	F	6-8	210	August 31, 1931	Jackson State University
Ervin Inniger	1968	1969	G	6-4	190	January 16, 1945	Indiana University
Byron Irvin	1990	1993	G	6-5	190	December 2, 1966	University of Missouri
George Irvine	1971	1976	F-G	6-6	200	February 1, 1948	University of Washington
Kyrie Irving	2012	2018	G	6-3	193	March 23, 1992	Duke University
Jonathan Isaac	2018	2018	F	6-10	210	October 3, 1997	Florida State University
Dan Issel	1971	1985	C-F	6-9	235	October 25, 1948	University of Kentucky
Mike Iuzzolino	1992	1993	G	5-10	175	January 22, 1968	Saint Francis University
Allen Iverson	1997	2010	G	6-0	165	June 7, 1975	Georgetown University
Willie Iverson	1969	1969	G	6-0	180	October 8, 1945	Central Michigan University
Royal Ivey	2005	2014	G	6-3	200	December 20, 1981	University of Texas at Austin
Elvin Ivory	1969	1969	F	6-8	210	July 2, 1948	University of Louisiana at Lafayette
Wesley Iwundu	2018	2018	F	6-7	193	December 20, 1994	Kansas State University
Warren Jabali	1969	1975	G-F	6-2	200	August 29, 1946	Wichita State University
Jarrett Jack	2006	2018	G	6-3	200	October 28, 1983	Georgia Institute of Technology
Al Jackson	1968	1968	G	6-1	185	July 29, 1943	Wilberforce University
Bobby Jackson	1998	2009	G	6-1	185	March 13, 1973	University of Minnesota
Cedric Jackson	2010	2010	G	6-3	191	March 5, 1986	Cleveland State University
Darnell Jackson	2009	2011	F	6-9	253	November 7, 1985	University of Kansas
Demetrius Jackson	2017	2018	G	6-1	201	September 7, 1994	University of Notre Dame
Greg Jackson	1975	1975	G	6-0	180	August 2, 1952	Guilford College
Jaren Jackson	1990	2002	G-F	6-4	190	October 27, 1967	Georgetown University
Jermaine Jackson	2000	2006	G	6-4	204	June 7, 1976	University of Detroit Mercy
Jim Jackson	1993	2006	G	6-6	220	October 14, 1970	Ohio State University
Josh Jackson	2018	2018	F-G	6-8	207	February 10, 1997	University of Kansas
Justin Jackson	2018	2018	G-F	6-8	200	March 28, 1995	University of North Carolina
Luke Jackson	1965	1972	F-C	6-9	240	October 31, 1941	University of Texas-Pan American
Luke Jackson	2005	2008	F	6-7	215	November 6, 1981	University of Oregon
Marc Jackson	2001	2007	C	6-10	270	January 16, 1975	Temple University
Mark Jackson	1988	2004	G	6-1	180	April 1, 1965	St. John's University
Mervin Jackson	1969	1973	G	6-3	175	August 15, 1946	University of Utah
Michael Jackson	1988	1990	G	6-2	183	July 13, 1964	Georgetown University
Mike Jackson	1973	1976	F	6-7	215	July 31, 1949	California State University, Los Angeles
Myron Jackson	1987	1987	G	6-3	185	May 6, 1964	University of Arkansas at Little Rock
Phil Jackson	1968	1980	F-C	6-8	220	September 17, 1945	University of North Dakota
Pierre Jackson	2017	2017	G	5-10	180	August 29, 1991	Baylor University
Ralph Jackson	1985	1985	G	6-2	190	October 26, 1962	University of California, Los Angeles
Randell Jackson	1999	2000	F	6-11	215	January 16, 1976	Florida State University
Reggie Jackson	2012	2018	G	6-3	208	April 16, 1990	Boston College
Stanley Jackson	1994	1994	G	6-3	185	October 10, 1970	University of Alabama at Birmingham
Stephen Jackson	2001	2014	F-G	6-8	218	April 5, 1978	Butler County Community College
Tony Jackson	1968	1969	F-G	6-4	200	November 7, 1942	St. John's University
Tony Jackson	1981	1981	G	6-0	170	January 17, 1958	Florida State University
Tracy Jackson	1982	1984	G-F	6-6	205	April 21, 1959	University of Notre Dame
Wardell Jackson	1975	1975	F	6-7	200	July 18, 1951	Ohio State University
Fred Jacobs	1947	1947	F	6-3	175	December 2, 1922	University of Denver
Casey Jacobsen	2003	2008	G-F	6-6	215	March 19, 1981	Stanford University
Sam Jacobson	1999	2001	G-F	6-4	215	July 22, 1975	University of Minnesota
Dave Jamerson	1991	1994	G-F	6-5	190	August 13, 1967	Ohio University
Aaron James	1975	1979	F	6-8	210	October 5, 1952	Grambling State University
Bernard James	2013	2015	C	6-10	240	February 7, 1985	Florida State University
Billy James	1974	1974	G	6-3	185	February 11, 1950	Marshall University
Damion James	2011	2014	G-F	6-7	225	October 7, 1987	University of Texas at Austin
Gene James	1949	1951	F	6-4	180	February 15, 1925	Marshall University
Henry James	1991	1998	F	6-8	220	July 29, 1965	St. Mary's University
Jerome James	1999	2009	C	7-0	300	November 17, 1975	Florida Agricultural and Mechanical University
LeBron James	2004	2018	F-G	6-8	250	December 30, 1984	\N
Mike James	2002	2014	G	6-2	188	June 23, 1975	Duquesne University
Mike James	2018	2018	G	6-1	189	August 18, 1990	Lamar University
Tim James	2000	2002	F	6-7	212	December 26, 1976	University of Miami
Antawn Jamison	1999	2014	F	6-8	223	June 12, 1976	University of North Carolina
Harold Jamison	2000	2002	F	6-8	260	November 20, 1976	Clemson University
John Janisch	1947	1948	F-G	6-3	200	March 15, 1920	Valparaiso University
Howie Janotta	1950	1950	F	6-3	185	October 19, 1924	Seton Hall University
Marko Jaric	2003	2009	G	6-7	198	October 12, 1978	\N
Tony Jaros	1947	1951	F-G	6-3	185	February 22, 1920	University of Minnesota
Jim Jarvis	1968	1969	G	6-1	175	March 3, 1943	Oregon State University
Sarunas Jasikevicius	2006	2007	G	6-4	195	March 5, 1976	University of Maryland
Nathan Jawai	2009	2010	C-F	6-10	280	October 10, 1986	Midland College
Buddy Jeannette	1948	1950	G	5-11	175	September 15, 1917	Washington & Jefferson College
Abdul Jeelani	1980	1981	F-C	6-8	210	February 10, 1954	University of Wisconsin-Parkside
Chris Jefferies	2003	2004	G-F	6-8	225	February 13, 1980	California State University, Fresno
Othyus Jeffers	2010	2014	G	6-5	200	August 5, 1985	Robert Morris University (IL)
Al Jefferson	2005	2018	C-F	6-10	289	January 4, 1985	\N
Cory Jefferson	2015	2016	F	6-9	218	December 26, 1990	Baylor University
Dontell Jefferson	2009	2009	G	6-5	195	December 15, 1983	University of Arkansas
Richard Jefferson	2002	2018	F	6-7	233	June 21, 1980	University of Arizona
Jared Jeffries	2003	2013	F	6-11	230	November 25, 1981	Indiana University
Charles Jenkins	2012	2013	G	6-3	220	February 28, 1989	Hofstra University
Horace Jenkins	2005	2005	G	6-1	180	October 14, 1974	William Paterson University
John Jenkins	2013	2017	G	6-4	215	March 6, 1991	Vanderbilt University
Brandon Jennings	2010	2017	G	6-1	170	September 23, 1989	\N
Keith Jennings	1993	1995	G	5-7	160	November 2, 1968	East Tennessee State University
Chris Jent	1994	1997	F	6-7	220	January 11, 1970	Ohio State University
Les Jepsen	1991	1992	C	7-0	237	June 24, 1967	University of Iowa
Jonas Jerebko	2010	2018	F	6-10	231	March 2, 1987	\N
Grant Jerrett	2015	2015	F	6-10	235	July 8, 1993	University of Arizona
Eugene Jeter	2011	2011	G	5-11	175	December 2, 1983	University of Portland
Hal Jeter	1970	1970	G	6-3	190	May 17, 1945	Drake University
Yi Jianlian	2008	2012	F	7-0	240	October 27, 1987	\N
Britton Johnsen	2004	2005	F	6-10	210	July 8, 1979	University of Utah
Alexander Johnson	2007	2008	F	6-9	240	February 8, 1983	Florida State University
Amir Johnson	2006	2018	F-C	6-9	240	May 1, 1987	\N
Andy Johnson	1959	1962	F-G	6-5	215	November 8, 1932	University of Portland
Anthony Johnson	1998	2010	G	6-3	190	October 2, 1974	College of Charleston
Armon Johnson	2011	2012	G	6-3	195	February 23, 1989	University of Nevada, Reno
Arnie Johnson	1949	1953	F-C	6-5	236	May 16, 1920	Bemidji State University
Avery Johnson	1989	2004	G	5-10	175	March 25, 1965	Southern University and A&M College
Brice Johnson	2017	2018	F	6-10	230	June 27, 1994	University of North Carolina
Buck Johnson	1987	1993	F	6-7	190	January 3, 1964	University of Alabama
Carldell Johnson	2012	2012	G	5-10	180	January 28, 1983	University of Alabama at Birmingham
Charles Johnson	1973	1979	G	6-0	170	March 31, 1949	University of California
Herm Klotz	1948	1948	G	5-7	150	October 21, 1921	Villanova University
Cheese Johnson	1980	1980	F-G	6-6	195	September 7, 1957	Wichita State University
Chris Johnson	2011	2013	C	6-11	210	July 15, 1985	Louisiana State University
Chris Johnson	2013	2016	F-G	6-6	206	April 29, 1990	University of Dayton
Clay Johnson	1982	1984	G	6-4	175	July 18, 1956	University of Missouri
Clemon Johnson	1979	1988	C-F	6-10	240	September 12, 1956	Florida Agricultural and Mechanical University
Dakari Johnson	2018	2018	C	7-0	255	September 22, 1995	University of Kentucky
Darryl Johnson	1996	1996	G	6-1	170	October 26, 1965	Michigan State University
Dave Johnson	1993	1994	G-F	6-7	210	November 16, 1970	Syracuse University
DeMarco Johnson	2000	2000	F	6-9	245	October 6, 1975	University of North Carolina at Charlotte
Dennis Johnson	1977	1990	G	6-4	185	September 18, 1954	Pepperdine University
DerMarr Johnson	2001	2008	F	6-9	201	May 5, 1980	University of Cincinnati
Ed Johnson	1969	1971	C	6-8	205	June 17, 1944	Tennessee State University
Eddie Johnson	1978	1987	G	6-2	180	February 24, 1955	Auburn University
Eddie Johnson	1982	1999	F-G	6-7	215	May 1, 1959	University of Illinois at Urbana-Champaign
Eric Johnson	1990	1990	G	6-2	205	February 7, 1966	University of Nebraska
Ervin Johnson	1994	2006	C	6-11	245	December 21, 1967	University of New Orleans
Frank Johnson	1982	1994	G	6-1	185	November 23, 1958	Wake Forest University
George Johnson	1971	1974	C	6-11	245	June 19, 1947	Stephen F. Austin State University
George Johnson	1973	1986	C-F	6-11	205	December 18, 1948	Dillard University
George Johnson	1979	1986	F-C	6-7	210	December 8, 1956	St. John's University
Gus Johnson	1964	1973	F-C	6-6	230	December 13, 1938	University of Idaho
Harold Johnson	1947	1947	C	6-6	240	January 30, 1920	Indiana State University
Ivan Johnson	2012	2013	F	6-8	230	April 10, 1984	University of Oregon
JaJuan Johnson	2012	2012	F	6-10	221	February 8, 1989	Purdue University
James Johnson	2010	2018	F	6-9	250	February 20, 1987	Wake Forest University
Joe Johnson	2002	2018	G-F	6-7	240	June 29, 1981	University of Arkansas
John Johnson	1971	1982	F	6-7	200	October 18, 1947	University of Iowa
Kannard Johnson	1988	1988	F	6-9	220	June 24, 1965	Western Kentucky University
Ken Johnson	1986	1986	F	6-8	240	November 7, 1962	Michigan State University
Ken Johnson	2003	2003	F-C	6-11	240	February 1, 1978	Ohio State University
Kevin Johnson	1988	2000	G	6-1	180	March 4, 1966	University of California
Larry Johnson	1978	1978	G	6-3	205	November 28, 1954	University of Kentucky
Larry Johnson	1992	2001	F	6-6	250	March 14, 1969	University of Nevada, Las Vegas
Lee Johnson	1981	1981	F	6-11	205	June 16, 1957	East Texas State University
Linton Johnson	2004	2009	F	6-8	205	June 13, 1980	Tulane University
Magic Johnson	1980	1996	G-F	6-9	215	August 14, 1959	Michigan State University
Marques Johnson	1978	1990	F-G	6-7	218	February 8, 1956	University of California, Los Angeles
Mickey Johnson	1975	1986	F	6-10	190	August 31, 1952	Aurora University
Neil Johnson	1967	1973	F-C	6-7	220	April 17, 1943	Creighton University
Nick Johnson	2015	2015	G	6-3	202	December 22, 1992	University of Arizona
Ollie Johnson	1973	1982	F	6-6	200	May 11, 1949	Temple University
Orlando Johnson	2013	2016	G	6-5	220	March 11, 1989	University of California, Santa Barbara
Ralph Johnson	1950	1953	G	5-11	170	December 6, 1921	Huntington University
Reggie Johnson	1981	1984	F-C	6-9	205	June 25, 1957	University of Tennessee
Rich Johnson	1969	1971	C	6-7	210	December 18, 1946	Grambling State University
Ron Johnson	1961	1961	F	6-8	215	July 20, 1938	University of Minnesota
Stanley Johnson	2016	2018	F	6-7	245	May 29, 1996	University of Arizona
Steffond Johnson	1987	1987	F	6-8	240	November 4, 1962	San Diego State University
Steve Johnson	1982	1991	C-F	6-10	235	November 3, 1957	Oregon State University
Stew Johnson	1968	1976	F-C	6-8	220	August 19, 1944	Murray State University
Trey Johnson	2009	2012	G	6-5	218	August 30, 1984	Jackson State University
Tyler Johnson	2015	2018	G	6-4	186	May 7, 1992	California State University, Fresno
Vinnie Johnson	1980	1992	G	6-2	200	September 1, 1956	Baylor University
Wesley Johnson	2011	2018	F-G	6-7	215	July 11, 1987	Syracuse University
Darius Johnson-Odom	2013	2014	G	6-2	215	September 28, 1989	Marquette University
Nate Johnston	1990	1990	F	6-8	210	December 18, 1966	University of Tampa
Neil Johnston	1952	1959	C	6-8	210	February 4, 1929	Ohio State University
Jim Johnstone	1983	1983	C-F	6-11	245	September 20, 1960	Wake Forest University
Nikola Jokic	2016	2018	C-F	6-10	250	February 19, 1995	\N
Howie Jolliff	1961	1963	F-C	6-7	218	July 20, 1938	Ohio University
Alvin Jones	2002	2002	C	6-11	265	September 9, 1978	Georgia Institute of Technology
Anthony Jones	1987	1990	G-F	6-6	195	September 13, 1962	University of Nevada, Las Vegas
Askia Jones	1995	1995	G	6-5	200	December 3, 1971	Kansas State University
Bill Jones	1989	1989	F	6-7	175	March 18, 1966	University of Iowa
Bobby Jones	1975	1986	F	6-9	210	December 18, 1951	University of North Carolina
Bobby Jones	2007	2008	F	6-7	215	January 9, 1984	University of Washington
Caldwell Jones	1974	1990	C-F	6-11	217	August 4, 1950	Albany State University
Charles Jones	1984	1998	F-C	6-9	215	April 3, 1957	Albany State University
Charles Jones	1985	1989	F	6-8	215	January 12, 1962	University of Louisville
Charles Jones	1999	2000	G	6-3	180	July 17, 1975	Long Island University
Collis Jones	1972	1975	F	6-7	203	July 3, 1949	University of Notre Dame
Dahntay Jones	2004	2017	G-F	6-6	225	December 27, 1980	Duke University
Damian Jones	2017	2018	F-C	7-0	245	June 30, 1995	Vanderbilt University
Damon Jones	1999	2009	G	6-3	185	August 25, 1976	University of Houston
DeQuan Jones	2013	2013	F	6-8	221	June 20, 1990	University of Miami
Derrick Jones	2017	2018	F	6-7	190	February 15, 1997	University of Nevada, Las Vegas
Dominique Jones	2011	2013	G	6-4	215	October 15, 1988	University of South Florida
Dontae' Jones	1998	1998	F	6-8	220	June 2, 1975	Mississippi State University
Dwayne Jones	2006	2010	F-C	6-11	250	June 9, 1983	Saint Joseph's University
Dwight Jones	1974	1983	F-C	6-10	210	February 27, 1952	University of Houston
Earl Jones	1985	1986	C	7-0	210	January 13, 1961	University of the District of Columbia
Eddie Jones	1995	2008	G-F	6-6	190	October 20, 1971	Temple University
Edgar Jones	1981	1986	F-C	6-10	225	June 17, 1956	University of Nevada, Reno
Fred Jones	2003	2009	G-F	6-4	210	March 11, 1979	University of Oregon
Hutch Jones	1983	1984	F	6-8	190	September 1, 1959	Vanderbilt University
Jake Jones	1972	1972	G	6-3	180	May 9, 1949	Assumption College
Jalen Jones	2018	2018	G	6-7	223	May 27, 1993	Texas A&M University
James Jones	2004	2017	F-G	6-8	218	October 4, 1980	University of Miami
Jimmy Jones	1968	1977	G	6-4	188	January 1, 1945	Grambling State University
Johnny Jones	1968	1969	F	6-7	205	March 12, 1943	California State University, Los Angeles
Jumaine Jones	2000	2007	F	6-8	218	February 10, 1979	University of Georgia
K.C. Jones	1959	1967	G	6-1	200	May 25, 1932	University of San Francisco
Kevin Jones	2013	2013	F	6-8	251	August 25, 1989	West Virginia University
Larry Jones	1965	1974	G-F	6-2	180	September 22, 1942	University of Toledo
Major Jones	1980	1985	F	6-9	225	July 9, 1953	Albany State University
Mark Jones	1984	1984	G	6-1	175	April 10, 1961	St. Bonaventure University
Mark Jones	2005	2005	G	6-6	215	May 25, 1975	University of Central Florida
Nick Jones	1968	1973	G	6-2	190	March 28, 1945	University of Oregon
Ozell Jones	1985	1986	C-F	6-11	235	November 20, 1960	California State University, Fullerton
Perry Jones	2013	2015	F	6-11	235	September 24, 1991	Baylor University
Popeye Jones	1994	2004	F	6-8	250	June 17, 1970	Murray State University
Rich Jones	1970	1977	F-C	6-6	220	December 27, 1946	University of Memphis
Robin Jones	1977	1978	F-C	6-9	225	February 2, 1954	Saint Louis University
Sam Jones	1958	1969	G-F	6-4	198	June 24, 1933	North Carolina Central University
Shelton Jones	1989	1989	F	6-9	210	April 6, 1966	St. John's University
Solomon Jones	2007	2014	F	6-10	230	July 16, 1984	University of South Florida
Steve Jones	1968	1976	G-F	6-5	205	October 17, 1942	University of Oregon
Terrence Jones	2013	2017	F	6-9	252	January 9, 1992	University of Kentucky
Tyus Jones	2016	2018	G	6-2	195	May 10, 1996	Duke University
Wah Wah Jones	1950	1952	F	6-4	225	July 14, 1926	University of Kentucky
Wali Jones	1965	1976	G	6-2	180	February 14, 1942	Villanova University
Wil Jones	1970	1978	F	6-8	205	February 27, 1947	Albany State University
Willie Jones	1961	1965	G	6-3	185	June 29, 1936	Northwestern University
Adonis Jordan	1994	1999	G	5-11	170	August 21, 1970	University of Kansas
Charles Jordan	1976	1976	F	6-8	220	January 31, 1954	Canisius College
DeAndre Jordan	2009	2018	C	6-11	265	July 21, 1988	Texas A&M University
Eddie Jordan	1978	1984	G	6-1	170	January 29, 1955	Rutgers University
Jerome Jordan	2012	2015	C	7-0	253	September 29, 1986	University of Tulsa
Michael Jordan	1985	2003	G-F	6-6	195	February 17, 1963	University of North Carolina
Reggie Jordan	1994	2000	G	6-4	195	January 26, 1968	New Mexico State University
Thomas Jordan	1993	1993	F-C	6-10	220	May 23, 1968	Oklahoma State University
Walter Jordan	1981	1981	F	6-7	198	February 19, 1956	Purdue University
Phil Jordon	1957	1963	C-F	6-10	205	September 12, 1933	Whitworth
Johnny Jorgensen	1948	1949	G-F	6-2	185	December 28, 1921	DePaul University
Noble Jorgensen	1947	1953	C	6-9	228	May 18, 1925	University of Iowa
Roger Jorgensen	1947	1947	C-F	6-5	200	September 2, 1920	Ohio State University
Cory Joseph	2012	2018	G	6-3	193	August 20, 1991	University of Texas at Austin
Garth Joseph	2001	2001	C	7-2	315	August 8, 1973	College of Saint Rose
Kris Joseph	2013	2013	F	6-7	210	December 17, 1988	Syracuse University
Yvon Joseph	1986	1986	C	6-11	245	October 31, 1957	Georgia Institute of Technology
Kevin Joyce	1974	1976	G	6-3	190	June 27, 1951	University of South Carolina
Butch Joyner	1969	1969	F	6-5	200	April 26, 1945	Indiana University
Jeff Judkins	1979	1983	G-F	6-6	185	March 23, 1956	University of Utah
Whitey Kachan	1949	1949	G	6-2	175	September 15, 1925	DePaul University
George Kaftan	1949	1953	F	6-3	190	February 22, 1928	College of the Holy Cross
Ed Kalafat	1955	1957	C-F	6-6	245	October 13, 1932	University of Minnesota
Chris Kaman	2004	2016	C	7-0	265	April 28, 1982	Central Michigan University
Frank Kaminsky	2016	2018	F-C	7-0	242	April 4, 1993	University of Wisconsin
Enes Kanter	2012	2018	C	6-11	245	May 20, 1992	\N
Ralph Kaplowitz	1947	1948	G-F	6-2	170	May 18, 1919	New York University
Jason Kapono	2004	2012	F	6-8	213	February 4, 1981	University of California, Los Angeles
Tony Kappen	1947	1947	G	5-10	165	April 13, 1919	\N
Sergey Karasev	2014	2016	G-F	6-7	208	October 26, 1993	\N
Coby Karl	2008	2010	G	6-5	215	March 6, 1983	Boise State University
George Karl	1974	1978	\N	\N	\N	May 12, 1952	University of North Carolina
Ed Kasid	1947	1947	G	5-11	185	August 13, 1923	\N
Mario Kasun	2005	2006	C	7-1	260	April 5, 1980	\N
Leo Katkaveck	1949	1950	G	6-0	185	April 17, 1923	North Carolina State University
Bob Kauffman	1969	1975	F-C	6-8	240	July 13, 1946	Guilford College
Sasha Kaun	2016	2016	C	6-11	260	May 8, 1985	University of Kansas
Wilbert Kautz	1947	1947	G-F	6-0	180	September 7, 1915	Loyola University of Chicago
Clarence Kea	1981	1982	F	6-6	218	February 2, 1959	Lamar University
Mike Kearns	1955	1955	G	6-2	178	June 18, 1929	Princeton University
Tommy Kearns	1959	1959	G	5-11	185	October 6, 1936	University of North Carolina
Adam Keefe	1993	2001	F	6-9	230	February 22, 1970	Stanford University
Harold Keeling	1986	1986	G	6-4	185	September 18, 1963	Santa Clara University
Bill Keller	1970	1976	G	5-10	177	August 30, 1947	Purdue University
Gary Keller	1968	1969	F-C	6-9	220	June 13, 1944	University of Florida
Ken Keller	1947	1947	G	6-1	180	August 16, 1922	St. John's University
Rich Kelley	1976	1986	C-F	7-0	235	March 23, 1953	Stanford University
Clark Kellogg	1983	1987	F	6-7	225	July 2, 1961	Ohio State University
Arvesta Kelly	1968	1972	G	6-2	175	November 20, 1945	Lincoln University of Missouri
Jerry Kelly	1947	1948	F	6-2	172	June 14, 1918	Marshall University
Ryan Kelly	2014	2017	F	6-11	230	April 9, 1991	Duke University
Tom Kelly	1949	1949	G	6-0	170	March 5, 1924	New York University
Greg Kelser	1980	1985	F	6-7	190	September 17, 1957	Michigan State University
Ben Kelso	1974	1974	G	6-3	195	April 11, 1949	Central Michigan University
Shawn Kemp	1990	2003	F-C	6-10	230	November 26, 1969	Trinity Valley Community College
Tim Kempton	1987	1998	F-C	6-10	245	January 25, 1964	University of Notre Dame
Frank Kendrick	1975	1975	F	6-6	198	September 11, 1950	Purdue University
Luke Kennard	2018	2018	G	6-6	206	June 24, 1996	Duke University
D.J. Kennedy	2012	2012	F	6-6	215	November 5, 1989	St. John's University
Goo Kennedy	1972	1977	F-C	6-5	205	August 23, 1949	Texas Christian University
Joe Kennedy	1969	1971	F	6-6	210	January 12, 1947	Duke University
Pickles Kennedy	1961	1961	G	5-11	180	May 17, 1938	Temple University
Larry Kenon	1974	1983	F	6-9	205	December 13, 1952	University of Memphis
Billy Kenville	1954	1960	G-F	6-2	187	December 1, 1930	St. Bonaventure University
Jonathan Kerner	1999	1999	C	6-11	245	June 6, 1974	East Carolina University
Red Kerr	1955	1966	C-F	6-9	230	July 17, 1932	University of Illinois at Urbana-Champaign
Steve Kerr	1989	2003	G	6-3	175	September 27, 1965	University of Arizona
Jack Kerris	1950	1953	F-C	6-6	215	January 30, 1925	Loyola University of Chicago
Jerome Kersey	1985	2001	F	6-7	215	June 26, 1962	Longwood University
Tom Kerwin	1968	1968	F	6-7	210	July 7, 1944	Centenary College of Louisiana
Alec Kessler	1991	1994	F-C	6-11	230	January 13, 1967	University of Georgia
Lari Ketner	2000	2001	F-C	6-9	277	February 1, 1977	University of Massachusetts Amherst
Julius Keye	1970	1975	F-C	6-10	200	September 5, 1946	Alcorn State University
Randolph Keys	1989	1996	F-G	6-7	195	April 19, 1966	University of Southern Mississippi
Viktor Khryapa	2005	2008	F	6-9	210	August 3, 1982	\N
Jason Kidd	1995	2013	G	6-4	205	March 23, 1973	University of California
Warren Kidd	1994	1994	F	6-9	235	September 9, 1970	Middle Tennessee State University
Michael Kidd-Gilchrist	2013	2018	F	6-7	232	September 26, 1993	University of Kentucky
Irv Kiffin	1980	1980	F	6-9	225	August 8, 1951	Oklahoma Baptist University
Jack Kiley	1952	1953	G	6-1	170	January 5, 1929	Syracuse University
Earnie Killum	1971	1971	G	6-3	180	June 11, 1948	Stetson University
Carl Kilpatrick	1980	1980	C	6-10	230	May 16, 1956	University of Louisiana at Monroe
Sean Kilpatrick	2015	2018	G	6-4	210	January 6, 1990	University of Cincinnati
Toby Kimball	1967	1975	F-C	6-6	220	September 7, 1942	University of Connecticut
Bo Kimble	1991	1993	G	6-4	190	April 9, 1966	Loyola Marymount University
Stan Kimbrough	1990	1993	G	5-11	153	April 24, 1966	Xavier University
Chad Kinch	1981	1981	G	6-4	190	May 22, 1958	University of North Carolina at Charlotte
Albert King	1982	1992	F-G	6-6	190	December 17, 1959	University of Maryland
Bernard King	1978	1993	F	6-7	205	December 4, 1956	University of Tennessee
Chris King	1994	1999	F	6-8	215	July 24, 1969	Wake Forest University
Dan King	1955	1955	F	6-6	220	January 7, 1931	Western Kentucky University
Frankie King	1996	1997	G	6-1	185	June 6, 1972	Western Carolina University
George King	1952	1958	G	6-0	175	August 16, 1928	University of Charleston
Gerard King	1999	2001	F	6-9	230	November 25, 1972	Nicholls State University
Jim King	1964	1973	G	6-2	175	February 7, 1941	University of Tulsa
Jimmy King	1996	1997	G	6-5	210	August 9, 1973	University of Michigan
Loyd King	1972	1973	G	6-2	180	May 29, 1949	Virginia Polytechnic Institute and State University
Maury King	1960	1963	G	6-2	195	March 12, 1935	University of Kansas
Reggie King	1980	1985	F	6-6	225	February 14, 1957	University of Alabama
Rich King	1992	1995	C	7-2	260	April 4, 1969	University of Nebraska
Ron King	1974	1974	G	6-4	185	July 11, 1951	Florida State University
Stacey King	1990	1997	F-C	6-11	230	January 29, 1967	University of Oklahoma
Tom King	1947	1947	G	6-0	165	March 9, 1924	University of Michigan
Bob Kinney	1949	1950	C-F	6-6	215	September 16, 1920	Rice University
Tarence Kinsey	2007	2009	G	6-6	185	March 21, 1984	University of South Carolina
Andrei Kirilenko	2002	2015	F	6-9	220	February 18, 1981	\N
Alex Kirk	2015	2015	C	7-0	245	November 14, 1991	University of New Mexico
Walt Kirk	1949	1952	G-F	6-3	173	September 3, 1924	University of Illinois at Urbana-Champaign
Wilber Kirkland	1970	1970	F	6-7	190	\N	Cheyney University of Pennsylvania
Jim Kissane	1969	1969	F	6-7	210	August 17, 1946	Boston College
Doug Kistler	1962	1962	F	6-9	210	March 21, 1938	Duke University
Curtis Kitchen	1987	1987	F	6-9	235	January 30, 1964	University of South Florida
Greg Kite	1984	1995	C	6-11	250	August 5, 1961	Brigham Young University
Kerry Kittles	1997	2005	G	6-5	179	June 12, 1974	Villanova University
Maxi Kleber	2018	2018	F	6-10	220	January 29, 1992	\N
Joe Kleine	1986	2000	C	6-11	255	January 4, 1962	University of Arkansas
Linas Kleiza	2006	2013	F	6-8	245	January 3, 1985	University of Missouri
Duane Klueh	1950	1951	G	6-3	175	January 6, 1926	Indiana State University
Lonnie Kluttz	1971	1971	F	6-7	220	September 17, 1945	North Carolina Agricultural and Technical State University
Billy Knight	1975	1985	G-F	6-6	195	June 9, 1952	University of Pittsburgh
Bob Knight	1955	1955	G-F	6-2	185	April 30, 1929	\N
Brandin Knight	2005	2005	G	6-0	180	December 16, 1981	University of Pittsburgh
Brandon Knight	2012	2017	G	6-3	189	December 2, 1991	University of Kentucky
Brevin Knight	1998	2009	G	5-10	173	November 8, 1975	Stanford University
Negele Knight	1991	1999	G	6-1	175	March 6, 1967	University of Dayton
Ron Knight	1971	1972	F	6-7	215	August 4, 1947	California State University, Los Angeles
Toby Knight	1978	1982	F	6-9	210	May 3, 1955	University of Notre Dame
Travis Knight	1997	2003	C	7-0	235	September 13, 1974	University of Connecticut
Lee Knorek	1947	1950	C	6-7	215	July 15, 1921	University of Detroit Mercy
Dick Knostman	1954	1954	C	6-6	215	August 9, 1931	Kansas State University
Rod Knowles	1969	1969	F-C	6-9	215	February 27, 1946	Davidson College
Bart Kofoed	1988	1993	G	6-4	210	March 24, 1964	University of Nebraska at Kearney
Don Kojis	1964	1975	F	6-5	215	January 15, 1939	Marquette University
Milo Komenich	1950	1950	F-C	6-7	212	June 22, 1920	University of Wyoming
Howard Komives	1965	1974	G	6-1	185	May 9, 1941	Bowling Green State University
Jon Koncak	1986	1996	C-F	7-0	250	May 17, 1963	Southern Methodist University
Tom Kondla	1969	1969	C	6-8	225	November 30, 1946	University of Minnesota
Bud Koper	1965	1965	G	6-6	210	August 9, 1942	Oklahoma City University
Joe Kopicki	1983	1985	F	6-9	240	June 12, 1960	University of Detroit Mercy
Furkan Korkmaz	2018	2018	G	6-7	185	July 24, 1997	\N
Frank Kornet	1990	1991	F	6-9	225	January 27, 1967	Vanderbilt University
Yaroslav Korolev	2006	2007	F	6-9	203	May 7, 1987	\N
Kyle Korver	2004	2018	G-F	6-7	212	March 17, 1981	Creighton University
Tony Koski	1969	1969	F	6-8	215	June 26, 1946	Providence College
Len Kosmalski	1975	1976	C	7-0	245	November 29, 1951	University of Tennessee
Andy Kostecka	1949	1949	F	6-3	203	February 10, 1921	Georgetown University
Harold Kottman	1947	1947	C	6-8	220	August 22, 1922	Culver-Stockton College
Kosta Koufos	2009	2018	C	7-0	265	February 24, 1989	Ohio State University
Tom Kozelko	1974	1976	F	6-8	220	July 1, 1951	University of Toledo
Ronald Kozlicki	1968	1968	F	6-7	215	December 12, 1944	Northwestern University
Arvid Kramer	1980	1980	C	6-9	220	October 2, 1956	Augustana College (SD)
Barry Kramer	1965	1970	F-G	6-4	200	November 10, 1942	New York University
Joel Kramer	1979	1983	F-C	6-7	203	November 30, 1955	San Diego State University
Steven Kramer	1968	1970	G-F	6-5	200	January 1, 1945	Brigham Young University
Dan Kraus	1949	1949	G	6-0	195	February 13, 1923	Georgetown University
Herb Krautblatt	1949	1949	G	6-1	190	November 19, 1926	Rider University
Viacheslav Kravtsov	2013	2014	C	7-0	260	August 25, 1987	\N
Jim Krebs	1958	1964	C-F	6-8	230	September 8, 1935	Southern Methodist University
Wayne Kreklow	1981	1981	G	6-4	175	January 4, 1957	Drake University
Tommy Kron	1967	1970	G	6-5	200	February 28, 1943	University of Kentucky
Tom Kropp	1976	1977	G	6-3	205	February 12, 1953	University of Nebraska at Kearney
Nenad Krstic	2005	2011	C	7-0	240	July 25, 1983	\N
Larry Krystkowiak	1987	1997	F-C	6-9	220	September 23, 1964	University of Montana
Steve Kuberski	1970	1978	F-C	6-8	215	November 6, 1947	Bradley University
Leo Kubiak	1950	1950	G	5-11	160	December 25, 1927	Bowling Green State University
Bruce Kuczenski	1984	1984	F	6-10	230	February 3, 1961	University of Connecticut
Frank Kudelka	1950	1953	G-F	6-2	193	June 25, 1925	Saint Mary's College of California
John Kuester	1978	1980	G	6-2	180	February 6, 1955	University of North Carolina
Ray Kuka	1948	1949	F	6-3	200	February 17, 1922	University of Notre Dame
Toni Kukoc	1994	2006	F	6-10	192	September 18, 1968	\N
Kevin Kunnert	1974	1982	C-F	7-0	230	November 11, 1951	University of Iowa
Terry Kunze	1968	1968	G-F	6-4	210	March 11, 1943	University of Minnesota
Mitch Kupchak	1977	1986	F-C	6-9	230	May 24, 1954	University of North Carolina
C.J. Kupec	1976	1978	F-C	6-6	220	January 16, 1953	University of Michigan
Rob Kurz	2009	2009	F	6-9	232	March 5, 1985	University of Notre Dame
Ibo Kutluay	2005	2005	G	6-6	200	July 1, 1974	\N
Kyle Kuzma	2018	2018	F	6-9	220	July 24, 1995	University of Utah
Ognjen Kuzmic	2014	2015	C	7-1	251	May 16, 1990	\N
Mindaugas Kuzminskas	2017	2018	F	6-9	215	October 19, 1989	\N
Skal Labissiere	2017	2018	F	6-11	225	March 18, 1996	University of Kentucky
Reggie Lacefield	1969	1969	G-F	6-5	230	April 10, 1945	Western Michigan University
Edgar Lacey	1969	1969	F	6-6	190	August 2, 1944	University of California, Los Angeles
Sam Lacey	1971	1983	C	6-10	235	March 28, 1948	New Mexico State University
Bob Lackey	1973	1974	G-F	6-5	200	April 4, 1949	Marquette University
Fred LaCour	1961	1963	G-F	6-5	210	February 7, 1938	University of San Francisco
Wendell Ladner	1971	1975	F	6-5	220	October 6, 1948	University of Southern Mississippi
Christian Laettner	1993	2005	F-C	6-11	235	August 17, 1969	Duke University
Oliver Lafayette	2010	2010	G	6-2	190	May 6, 1984	University of Houston
Raef LaFrentz	1999	2008	F-C	6-11	240	May 29, 1976	University of Kansas
Tom LaGarde	1978	1985	C-F	6-10	220	February 10, 1955	University of North Carolina
Bill Laimbeer	1981	1994	C	6-11	245	May 19, 1957	University of Notre Dame
Pete Lalich	1947	1947	F	6-2	190	June 23, 1920	Ohio University
Bo Lamar	1974	1977	G	6-1	180	April 7, 1951	University of Louisiana at Lafayette
Doron Lamb	2013	2014	G	6-4	210	November 6, 1991	University of Kentucky
Jeremy Lamb	2013	2018	G-F	6-5	185	May 30, 1992	University of Connecticut
John Lambert	1976	1982	C-F	6-10	225	January 14, 1953	University of Southern California
Jeff Lamp	1982	1989	F-G	6-6	195	March 9, 1959	University of Virginia
Maciej Lampe	2004	2006	C	6-11	275	February 5, 1985	\N
Jim Lampley	1987	1987	C	6-10	230	July 2, 1960	University of Arkansas at Little Rock
Sean Lampley	2003	2004	F	6-7	227	September 3, 1979	University of California
Carl Landry	2008	2016	F	6-9	248	September 19, 1983	Purdue University
Marcus Landry	2010	2010	F	6-7	230	November 1, 1985	University of Wisconsin
Mark Landsberger	1978	1984	F-C	6-8	215	May 21, 1955	Arizona State University
Jerome Lane	1989	1993	F	6-6	230	December 4, 1966	University of Pittsburgh
Andrew Lang	1989	2000	C	6-11	245	June 28, 1966	University of Arkansas
Antonio Lang	1995	2000	F-G	6-8	205	May 15, 1972	Duke University
James Lang	2007	2007	C	6-10	285	October 17, 1983	\N
Trajan Langdon	2000	2002	G	6-3	197	May 13, 1976	Duke University
Keith Langford	2008	2008	G	6-4	215	September 15, 1983	University of Kansas
Dan Langhi	2001	2004	F	6-11	220	November 28, 1977	Vanderbilt University
Bob Lanier	1971	1984	C	6-11	250	September 10, 1948	St. Bonaventure University
Stu Lantz	1969	1976	G	6-3	175	July 13, 1946	University of Nebraska
Nicolas Laprovittola	2017	2017	G	6-4	180	January 31, 1990	\N
York Larese	1962	1962	G	6-4	183	July 18, 1938	University of North Carolina
Shane Larkin	2014	2018	G	5-11	175	October 2, 1992	University of Miami
Rusty LaRue	1998	2004	G	6-2	210	December 10, 1973	Wake Forest University
Rudy LaRusso	1960	1969	F-C	6-7	220	November 11, 1937	Dartmouth College
John Laskowski	1976	1977	G	6-6	185	June 7, 1953	Indiana University
Stephane Lasme	2008	2008	F	6-8	215	December 17, 1982	University of Massachusetts Amherst
Dave Lattin	1968	1973	F-C	6-6	225	December 23, 1943	University of Texas at El Paso
Priest Lauderdale	1997	1998	C	7-4	325	August 31, 1973	Central State University
Rich Laurel	1978	1978	G	6-6	190	July 11, 1954	Hofstra University
Harry Laurie	1971	1971	G	6-1	178	November 2, 1944	Saint Peter's College
Walt Lautenbach	1950	1950	G-F	6-2	185	November 17, 1922	University of Wisconsin
Joffrey Lauvergne	2015	2018	C-F	6-11	220	September 30, 1991	\N
Tony Lavelli	1950	1951	F	6-3	185	July 11, 1926	Yale University
Zach LaVine	2015	2017	G	6-5	189	March 10, 1995	University of California, Los Angeles
Bob Lavoy	1951	1954	F-C	6-7	185	June 29, 1926	Western Kentucky University
Acie Law	2008	2011	G	6-3	195	January 25, 1985	Texas A&M University
Gani Lawal	2011	2011	F	6-9	234	November 7, 1988	Georgia Institute of Technology
Edmund Lawrence	1981	1981	C	7-0	228	December 8, 1952	McNeese State University
Jason Lawson	1998	1998	C	6-11	240	September 2, 1974	Villanova University
Ty Lawson	2010	2017	G	5-11	195	November 3, 1987	University of North Carolina
Jake Layman	2017	2018	F	6-9	210	March 7, 1994	University of Maryland
Mo Layton	1972	1978	G	6-1	180	December 24, 1948	University of Southern California
T.J. Leaf	2018	2018	F	6-10	222	April 30, 1997	University of California, Los Angeles
Manny Leaks	1969	1974	C-F	6-8	225	November 27, 1945	Niagara University
Hal Lear	1957	1957	G	6-0	163	January 31, 1935	Temple University
Allen Leavell	1980	1989	G	6-1	170	May 27, 1957	Oklahoma City University
Jeff Lebo	1990	1990	G	6-2	180	October 5, 1966	University of North Carolina
Eric Leckner	1989	1997	C-F	6-11	265	May 27, 1966	University of Wyoming
Ricky Ledo	2014	2015	G	6-7	195	September 10, 1992	\N
Butch Lee	1979	1980	G	6-0	185	December 5, 1956	Marquette University
Clyde Lee	1967	1976	F-C	6-10	205	March 14, 1944	Vanderbilt University
Courtney Lee	2009	2018	G	6-5	200	October 3, 1985	Western Kentucky University
David Lee	1968	1969	F	6-7	225	March 31, 1942	University of San Francisco
David Lee	2006	2017	F	6-9	245	April 29, 1983	University of Florida
Dick Lee	1968	1968	F	6-6	\N	\N	University of Washington
Doug Lee	1992	1995	G-F	6-5	200	October 24, 1964	Purdue University
George Lee	1961	1968	F-G	6-4	200	November 23, 1936	University of Michigan
Greg Lee	1975	1976	G	6-3	190	December 12, 1951	University of California, Los Angeles
Keith Lee	1986	1989	F-C	6-10	215	December 28, 1962	University of Memphis
Kurk Lee	1991	1991	G	6-3	190	June 3, 1967	Towson University
Malcolm Lee	2012	2015	G	6-5	200	May 22, 1990	University of California, Los Angeles
Rock Lee	1982	1982	C	6-10	220	May 1, 1955	San Diego State University
Ron Lee	1977	1982	G	6-4	193	November 2, 1952	University of Oregon
Russ Lee	1973	1975	G-F	6-5	185	January 27, 1950	Marshall University
Ed Leede	1950	1951	F-G	6-3	185	July 17, 1927	Dartmouth College
Hank Lefkowitz	1947	1947	F	6-2	190	August 31, 1923	Case Western Reserve University
Tim Legler	1990	2000	G	6-4	200	December 26, 1966	La Salle University
George Lehmann	1968	1974	G	6-0	180	May 1, 1942	Campbell University
Alex Len	2014	2018	C	7-1	260	June 16, 1993	University of Maryland
Voshon Lenard	1996	2006	G	6-4	205	May 14, 1973	University of Minnesota
Leary Lentz	1968	1969	F	6-6	200	February 23, 1945	University of Houston
Gary Leonard	1990	1992	C	7-1	250	February 16, 1967	University of Missouri
Kawhi Leonard	2012	2018	F	6-7	230	June 29, 1991	San Diego State University
Meyers Leonard	2013	2018	C-F	7-1	245	February 27, 1992	University of Illinois at Urbana-Champaign
Slick Leonard	1957	1963	G	6-3	185	July 17, 1932	Indiana University
Jim Les	1989	1995	G	5-11	165	August 18, 1963	Bradley University
Travis Leslie	2012	2012	G	6-4	205	March 29, 1990	University of Georgia
Ronnie Lester	1981	1986	G	6-2	175	January 1, 1959	University of Iowa
Clifford Lett	1990	1991	G	6-3	170	December 23, 1965	University of Florida
Jon Leuer	2012	2018	F	6-10	228	May 14, 1989	University of Wisconsin
Andrew Levane	1949	1953	F-G	6-2	190	April 11, 1920	St. John's University
Fat Lever	1983	1994	G	6-3	170	August 18, 1960	Arizona State University
Caris LeVert	2017	2018	G-F	6-7	203	August 25, 1994	University of Michigan
Cliff Levingston	1983	1995	F	6-8	210	January 4, 1961	Wichita State University
Bobby Lewis	1968	1971	G	6-3	175	March 20, 1945	University of North Carolina
Cedric Lewis	1996	1996	F-C	6-10	235	September 24, 1969	University of Maryland
Freddie Lewis	1949	1950	F-G	6-2	195	January 6, 1921	Eastern Kentucky University
Freddie Lewis	1967	1977	G	6-0	175	July 1, 1943	Arizona State University
Grady Lewis	1947	1949	F-C	6-7	215	March 25, 1917	University of Oklahoma
Martin Lewis	1996	1997	F	6-5	210	April 28, 1975	Seward County Community College
Mike Lewis	1969	1974	C-F	6-8	225	March 18, 1946	Duke University
Quincy Lewis	2000	2004	F	6-7	215	June 26, 1977	University of Minnesota
Ralph Lewis	1988	1990	G	6-6	200	March 28, 1963	La Salle University
Rashard Lewis	1999	2014	F	6-10	215	August 8, 1979	\N
Reggie Lewis	1988	1993	G-F	6-7	195	November 21, 1965	Northeastern University
Marcus Liberty	1991	1994	F	6-8	205	October 27, 1968	University of Illinois at Urbana-Champaign
Todd Lichti	1990	1994	G-F	6-4	205	January 8, 1967	Stanford University
Barry Liebowitz	1968	1968	G	6-2	180	September 10, 1945	Long Island University
DeAndre Liggins	2012	2018	G	6-6	209	March 31, 1988	University of Kentucky
Bill Ligon	1975	1975	G	6-4	180	May 29, 1952	Vanderbilt University
Goose Ligon	1968	1974	F-C	6-7	210	February 22, 1944	\N
Damian Lillard	2013	2018	G	6-3	195	July 15, 1990	Weber State University
Jeremy Lin	2011	2018	G	6-3	200	August 23, 1988	Harvard University
Steve Lingenfelter	1983	1984	F	6-9	225	June 10, 1958	South Dakota State University
Alton Lister	1982	1998	C-F	7-0	240	October 1, 1958	Arizona State University
Samuel Little	1970	1970	G	6-0	180	March 29, 1946	Delta State University
Gene Littles	1970	1975	G	6-0	160	June 29, 1943	High Point University
Randy Livingston	1997	2007	G	6-4	209	April 2, 1975	Louisiana State University
Shaun Livingston	2005	2018	G	6-7	192	September 11, 1985	\N
Ron Livingstone	1950	1951	C	6-10	220	October 9, 1925	University of Wyoming
Horacio Llamas Grey	1997	1998	C	6-11	285	July 17, 1973	Grand Canyon University
Bobby Lloyd	1968	1969	G	6-2	184	January 3, 1946	Rutgers University
Chuck Lloyd	1971	1971	C-F	6-8	220	May 22, 1947	Yankton College
Earl Lloyd	1951	1960	F-C	6-5	200	April 3, 1928	West Virginia State University
Lewis Lloyd	1982	1990	G-F	6-6	205	February 22, 1959	Drake University
Scott Lloyd	1977	1983	C-F	6-10	230	December 19, 1952	Arizona State University
Riney Lochmann	1968	1970	F	6-6	215	May 26, 1944	University of Kansas
Bob Lochmueller	1953	1953	F	6-5	185	June 5, 1927	University of Louisville
Rob Lock	1989	1989	F	6-9	225	May 22, 1966	University of Kentucky
Darrell Lockhart	1984	1984	C	6-9	245	September 14, 1960	Auburn University
Ian Lockhart	1991	1991	F	6-8	240	June 25, 1967	University of Tennessee
Kevin Loder	1982	1984	F-G	6-6	205	March 15, 1959	Alabama State University
Don Lofgran	1951	1954	F-C	6-5	200	November 8, 1929	University of San Francisco
Henry Logan	1969	1970	G	6-0	180	March 14, 1946	Western Carolina University
John Logan	1947	1951	G	6-2	175	January 1, 1921	Indiana University
Brad Lohaus	1988	1998	F-C	6-11	230	September 29, 1964	University of Iowa
Art Long	2001	2003	F	6-9	250	October 1, 1972	University of Cincinnati
Grant Long	1989	2003	F	6-8	225	March 12, 1966	Eastern Michigan University
John Long	1979	1997	G-F	6-5	195	August 28, 1956	University of Detroit Mercy
Paul Long	1968	1971	G	6-2	180	February 8, 1944	Wake Forest University
Shawn Long	2017	2017	C-F	6-9	255	January 29, 1993	University of Louisiana at Lafayette
Willie Long	1972	1974	F-C	6-8	225	March 1, 1950	University of New Mexico
Luc Longley	1992	2001	C	7-2	265	January 19, 1969	University of New Mexico
Kevon Looney	2016	2018	F-C	6-9	220	February 6, 1996	University of California, Los Angeles
Brook Lopez	2009	2018	C	7-0	275	April 1, 1988	Stanford University
Felipe Lopez	1999	2002	G	6-5	199	December 19, 1974	St. John's University
Raul Lopez	2004	2005	G	6-1	170	April 15, 1980	\N
Robin Lopez	2009	2018	C	7-0	255	April 1, 1988	Stanford University
Ryan Lorthridge	1995	1995	G	6-4	190	July 27, 1972	Jackson State University
Jim Loscutoff	1956	1964	F	6-5	220	February 4, 1930	University of Oregon
Plummer Lott	1968	1969	F-G	6-5	210	December 11, 1945	Seattle University
Kevin Loughery	1963	1973	G	6-3	190	March 28, 1940	St. John's University
Bob Love	1967	1977	F	6-8	215	December 8, 1942	Southern University and A&M College
Kevin Love	2009	2018	F	6-10	251	September 7, 1988	University of California, Los Angeles
Stan Love	1972	1975	F	6-9	215	April 9, 1949	University of Oregon
Clyde Lovellette	1954	1964	C-F	6-9	234	September 7, 1929	University of Kansas
Sidney Lowe	1984	1990	G	6-0	195	January 21, 1960	North Carolina State University
Charlie Lowery	1972	1972	G	6-3	185	November 12, 1949	University of Puget Sound
Kyle Lowry	2007	2018	G	6-0	205	March 25, 1986	Villanova University
Al Lucas	1949	1949	F-G	6-3	195	July 4, 1922	Fordham University
Jerry Lucas	1964	1974	F-C	6-8	230	March 30, 1940	Ohio State University
John Lucas	1977	1990	G	6-3	175	October 31, 1953	University of Maryland
Kalin Lucas	2015	2015	G	6-1	195	May 24, 1989	Michigan State University
Maurice Lucas	1975	1988	F-C	6-9	215	February 18, 1952	Marquette University
John Lucas III	2006	2017	G	5-11	166	November 21, 1982	Oklahoma State University
Ted Luckenbill	1962	1963	F	6-6	205	July 27, 1939	University of Houston
Tyronn Lue	1999	2009	G	6-0	175	May 3, 1977	University of Nebraska
Jim Luisi	1954	1954	G	6-2	180	November 2, 1928	St. Francis College
Al Lujack	1947	1947	F	6-3	220	October 5, 1920	Georgetown University
Phil Lumpkin	1975	1976	G	6-0	165	December 20, 1951	Miami University
Ray Lumpp	1949	1953	G	6-1	178	July 11, 1923	New York University
Timothe Luwawu-Cabarrot	2017	2018	F	6-6	205	May 9, 1995	\N
Tyler Lydon	2018	2018	F	6-10	215	April 9, 1996	Syracuse University
Trey Lyles	2016	2018	F	6-10	234	November 5, 1995	University of Kentucky
R.B. Lynam	1968	1968	G	6-1	190	\N	Oklahoma Baptist University
George Lynch	1994	2005	F	6-8	218	September 3, 1970	University of North Carolina
Kevin Lynch	1992	1993	G-F	6-5	195	December 24, 1968	University of Minnesota
Lonnie Lynn	1970	1970	F	6-7	215	May 24, 1943	Wilberforce University
Mike Lynn	1970	1971	F	6-7	215	November 25, 1945	University of California, Los Angeles
Sheldon Mac	2017	2017	G	6-5	200	December 21, 1992	University of Miami
Mike Macaluso	1974	1974	F	6-5	210	July 20, 1951	Canisius College
Ed Macauley	1950	1959	C-F	6-8	185	March 22, 1928	Saint Louis University
Todd MacCulloch	2000	2003	C	7-0	280	January 27, 1976	University of Washington
Ronnie MacGilvray	1955	1955	G	6-2	185	July 20, 1930	St. John's University
Scott Machado	2013	2013	G	6-1	205	June 8, 1990	Iona College
Arvydas Macijauskas	2006	2006	G	6-4	214	January 19, 1980	\N
Ollie Mack	1980	1982	G	6-3	185	June 6, 1957	East Carolina University
Sam Mack	1993	2002	F-G	6-7	220	May 26, 1970	University of Houston
Shelvin Mack	2012	2018	G	6-3	203	April 22, 1990	Butler University
Malcolm Mackey	1994	1994	F-C	6-9	248	July 11, 1970	Georgia Institute of Technology
Rudy Macklin	1982	1984	F-G	6-7	205	February 19, 1958	Louisiana State University
Vernon Macklin	2012	2012	F	6-10	227	September 20, 1986	University of Florida
Johnny Macknowsky	1950	1951	G-F	6-0	180	January 7, 1923	Seton Hall University
Don MacLean	1993	2001	F	6-10	235	January 16, 1970	University of California, Los Angeles
Mark Macon	1992	1999	G	6-5	185	April 14, 1969	Temple University
Kyle Macy	1981	1987	G	6-3	175	April 9, 1957	University of Kentucky
Jack Maddox	1949	1949	F-G	6-3	185	December 10, 1919	West Texas A&M University
Tito Maddox	2003	2003	G	6-4	190	June 7, 1981	California State University, Fresno
Gerald Madkins	1994	1998	G	6-4	200	April 18, 1969	University of California, Los Angeles
Mark Madsen	2001	2009	F	6-9	240	January 28, 1976	Stanford University
Norm Mager	1951	1951	F	6-5	185	March 23, 1926	City College of New York
Josh Magette	2018	2018	G	6-1	160	November 28, 1989	Alabama - Huntsville
Corey Maggette	2000	2013	F	6-6	218	November 12, 1979	Duke University
Dave Magley	1983	1983	F	6-8	202	November 24, 1959	University of Kansas
Jamaal Magloire	2001	2012	C	6-11	259	May 21, 1978	University of Kentucky
Randolph Mahaffey	1968	1971	F	6-7	210	September 28, 1945	Clemson University
Ian Mahinmi	2008	2018	C	6-11	250	November 5, 1986	\N
John Mahnken	1947	1953	C	6-8	220	June 16, 1922	Georgetown University
Brian Mahoney	1973	1973	G	6-3	175	December 17, 1948	Manhattan College
Mo Mahoney	1953	1954	F	6-2	205	November 20, 1927	Brown University
Rick Mahorn	1981	1999	C-F	6-10	240	September 21, 1958	Hampton University
Dan Majerle	1989	2002	G-F	6-6	215	September 9, 1965	Central Michigan University
Renaldo Major	2007	2007	F	6-7	200	May 7, 1982	California State University, Fresno
Thon Maker	2017	2018	F-C	7-1	216	February 25, 1997	\N
Lionel Malamed	1949	1949	G	5-9	150	November 15, 1924	City College of New York
Jeff Malone	1984	1996	G	6-4	205	June 28, 1961	Mississippi State University
Karl Malone	1986	2004	F	6-9	250	July 24, 1963	Louisiana Tech University
Moses Malone	1975	1995	C-F	6-10	215	March 23, 1955	\N
Matt Maloney	1997	2003	G	6-3	192	December 6, 1971	University of Pennsylvania
Steve Malovic	1980	1980	F	6-10	230	July 21, 1956	San Diego State University
Mike Maloy	1971	1973	F	6-7	215	May 10, 1949	Davidson College
Ted Manakas	1974	1974	G	6-2	180	February 22, 1951	Princeton University
John Mandic	1949	1950	F-C	6-4	205	October 3, 1919	Oregon State University
Frank Mangiapane	1947	1947	G	5-10	195	August 5, 1925	New York University
Danny Manning	1989	2003	F-C	6-10	230	May 17, 1966	University of Kansas
Ed Manning	1968	1976	F	6-7	210	January 2, 1944	Jackson State University
Guy Manning	1968	1969	F	6-6	195	February 4, 1944	Prairie View A&M University
Rich Manning	1996	1997	C	6-11	253	June 23, 1970	University of Washington
Pace Mannion	1984	1989	G	6-7	190	September 22, 1960	University of Utah
Nick Mantis	1960	1963	G	6-3	190	December 7, 1935	Northwestern University
Pete Maravich	1971	1980	G	6-5	197	June 22, 1947	Louisiana State University
Press Maravich	1947	1947	G	6-0	185	August 20, 1920	Davis & Elkins College
Devyn Marble	2015	2016	G-F	6-6	200	September 21, 1992	University of Iowa
Roy Marble	1990	1994	G-F	6-6	190	December 13, 1966	University of Iowa
Stephon Marbury	1997	2009	G	6-2	180	February 20, 1977	Georgia Institute of Technology
Sarunas Marciulionis	1990	1997	G	6-5	200	June 13, 1964	\N
Saul Mariaschin	1948	1948	G	5-11	165	September 1, 1924	Harvard University
Jack Marin	1967	1977	F-G	6-7	200	October 12, 1944	Duke University
Shawn Marion	2000	2015	F	6-7	220	May 7, 1978	University of Nevada, Las Vegas
Boban Marjanovic	2016	2018	C	7-3	290	August 15, 1988	\N
Lauri Markkanen	2018	2018	F	7-0	230	May 22, 1997	University of Arizona
Damir Markota	2007	2007	C	6-10	225	December 26, 1985	\N
Sean Marks	1999	2011	F-C	6-10	250	August 23, 1975	University of California
Harvey Marlatt	1971	1973	G	6-3	185	August 26, 1948	Eastern Michigan University
Jim Marsh	1972	1972	F	6-7	215	April 26, 1946	University of Southern California
Ricky Marsh	1978	1978	G	6-3	200	March 10, 1954	Manhattan College
Donny Marshall	1996	2003	F	6-7	230	July 17, 1972	University of Connecticut
Donyell Marshall	1995	2009	F	6-9	218	May 18, 1973	University of Connecticut
Kendall Marshall	2013	2016	G	6-4	200	August 19, 1991	University of North Carolina
Rawle Marshall	2006	2007	G-F	6-9	190	February 20, 1982	Oakland University
Tom Marshall	1955	1959	F-G	6-4	215	January 6, 1931	Western Kentucky University
Vester Marshall	1974	1974	F	6-7	200	December 22, 1948	University of Oklahoma
Bill Martin	1986	1988	F	6-7	205	August 16, 1962	Georgetown University
Bob Martin	1994	1995	C	7-0	250	October 7, 1969	University of Minnesota
Brian Martin	1986	1986	F	6-9	212	August 18, 1962	University of Kansas
Cartier Martin	2009	2015	F	6-7	220	November 20, 1984	Kansas State University
Cuonzo Martin	1996	1997	G-F	6-5	213	September 23, 1971	Purdue University
Darrick Martin	1995	2008	G	5-11	170	March 6, 1971	University of California, Los Angeles
Dino Martin	1947	1948	G	5-8	160	May 25, 1920	Georgetown University
Don Martin	1947	1949	C-F	6-7	210	February 7, 1920	Central Missouri State University
Fernando Martin	1987	1987	C	6-9	220	March 25, 1962	\N
Jarell Martin	2016	2018	F	6-10	239	May 24, 1994	Louisiana State University
Jeff Martin	1990	1991	G	6-5	195	January 14, 1967	Murray State University
Kenyon Martin	2001	2015	F	6-9	234	December 30, 1977	University of Cincinnati
Kevin Martin	2005	2016	G	6-7	199	February 1, 1983	Western Carolina University
LaRue Martin	1973	1976	C	6-11	208	March 30, 1950	Loyola University of Chicago
Maurice Martin	1987	1988	F-G	6-6	200	July 2, 1964	Saint Joseph's University
Phil Martin	1955	1955	G	6-3	190	April 2, 1928	University of Toledo
Slater Martin	1950	1960	G	5-10	170	October 22, 1925	University of Texas at Austin
Whitey Martin	1962	1962	G	6-2	185	April 11, 1939	St. Bonaventure University
Jamal Mashburn	1994	2004	F	6-8	240	November 29, 1972	University of Kentucky
Al Masino	1953	1954	G	5-10	174	February 5, 1928	Canisius College
Anthony Mason	1990	2003	F	6-7	250	December 14, 1966	Tennessee State University
Desmond Mason	2001	2010	F	6-7	224	October 11, 1977	Oklahoma State University
Frank Mason	2018	2018	G	6-0	189	April 3, 1994	University of Kansas
Roger Mason	2003	2014	G	6-5	200	September 10, 1980	University of Virginia
Tony Massenburg	1991	2005	F	6-9	220	July 31, 1967	University of Maryland
Eddie Mast	1971	1973	F-C	6-9	220	October 3, 1948	Temple University
Mangok Mathiang	2018	2018	C-F	6-10	230	October 8, 1992	University of Louisville
Johnny Mathis	1968	1968	F	6-6	220	July 14, 1943	Savannah State University
Wes Matthews	1981	1990	G	6-1	170	August 24, 1959	University of Wisconsin
Wesley Matthews	2010	2018	G	6-5	220	October 14, 1986	Marquette University
Ariel Maughan	1947	1951	F	6-4	190	February 23, 1923	Utah State University
Marlon Maxey	1993	1994	F	6-8	250	February 19, 1969	University of Texas at El Paso
Jason Maxiell	2006	2015	F	6-7	260	February 18, 1983	University of Cincinnati
Cedric Maxwell	1978	1988	F	6-8	205	November 21, 1955	University of North Carolina at Charlotte
Vernon Maxwell	1989	2001	G	6-4	180	September 12, 1965	University of Florida
Don May	1969	1975	F	6-4	200	January 3, 1946	University of Dayton
Scott May	1977	1983	F	6-7	215	March 19, 1954	Indiana University
Sean May	2006	2010	F	6-9	266	April 4, 1984	University of North Carolina
Lee Mayberry	1993	1999	G	6-1	172	June 12, 1970	University of Arkansas
Clyde Mayes	1976	1977	F	6-8	225	March 17, 1953	Furman University
Tharon Mayes	1992	1992	G	6-3	175	September 9, 1968	Florida State University
Bill Mayfield	1981	1981	F	6-7	205	October 17, 1957	University of Iowa
Ken Mayfield	1976	1976	G	6-2	185	May 11, 1948	Tuskegee University
Eric Maynor	2010	2014	G	6-3	175	June 11, 1987	Virginia Commonwealth University
O.J. Mayo	2009	2016	G	6-5	210	November 5, 1987	University of Southern California
Travis Mays	1991	1993	G	6-2	190	June 19, 1968	University of Texas at Austin
Matt Mazza	1950	1950	F	6-3	210	September 23, 1923	Michigan State University
Luc Mbah a Moute	2009	2018	F	6-8	230	September 9, 1986	University of California, Los Angeles
Bob McAdoo	1973	1986	C-F	6-9	210	September 25, 1951	University of North Carolina
James Michael McAdoo	2015	2018	F	6-9	230	January 4, 1993	University of North Carolina
Ken McBride	1955	1955	G-F	6-3	190	\N	University of Maryland Eastern Shore
Ray McCallum	2014	2016	G	6-3	190	June 12, 1991	University of Detroit Mercy
Bob McCann	1990	1998	F	6-6	244	April 22, 1964	Morehead State University
Brendan McCann	1958	1960	G	6-2	178	July 5, 1935	St. Bonaventure University
Mel McCants	1990	1990	F	6-8	240	August 19, 1967	Purdue University
Rashad McCants	2006	2009	G	6-4	207	September 25, 1984	University of North Carolina
Mike McCarron	1947	1950	G	5-11	180	March 2, 1922	Seton Hall University
Andre McCarter	1977	1981	G	6-3	190	August 25, 1953	University of California, Los Angeles
Willie McCarter	1970	1972	G	6-3	175	July 26, 1946	Drake University
Johnny McCarthy	1957	1964	G	6-1	185	April 25, 1934	Canisius College
Howie McCarty	1947	1947	F-G	6-2	190	\N	Wayne State University
Kelly McCarty	1999	1999	G-F	6-7	200	August 24, 1975	University of Southern Mississippi
Walter McCarty	1997	2006	F	6-10	230	February 1, 1974	University of Kentucky
Amal McCaskill	1997	2004	F-C	6-11	235	October 28, 1973	Marquette University
Patrick McCaw	2017	2018	G	6-7	185	October 25, 1995	University of Nevada, Las Vegas
Dwayne McClain	1986	1986	G	6-6	185	February 7, 1963	Villanova University
Ted McClain	1972	1979	G	6-1	180	August 30, 1946	Tennessee State University
Dan McClintock	2001	2001	C	7-0	270	April 19, 1977	Northern Arizona University
Jack McCloskey	1953	1953	G	6-2	190	September 19, 1925	University of Pennsylvania
George McCloud	1990	2002	G-F	6-6	205	May 27, 1967	Florida State University
C.J. McCollum	2014	2018	G	6-3	190	September 19, 1991	Lehigh University
John McConathy	1952	1952	F	6-5	195	April 9, 1930	Northwestern State University
Bucky McConnell	1953	1953	G	5-10	170	July 1, 1928	Marshall University
T.J. McConnell	2016	2018	G	6-2	200	March 25, 1992	University of Arizona
Keith McCord	1981	1981	G	6-7	210	June 22, 1957	University of Alabama at Birmingham
Tim McCormick	1985	1992	C	6-11	240	March 10, 1962	University of Michigan
Jelani McCoy	1999	2008	C	6-10	245	December 6, 1977	University of California, Los Angeles
Paul McCracken	1973	1977	G	6-4	180	September 11, 1950	California State University, Northridge
Chris McCray	2007	2007	G	6-5	192	May 27, 1984	University of Maryland
Rodney McCray	1984	1993	F-G	6-7	220	August 29, 1961	University of Louisville
Scooter McCray	1984	1987	F-G	6-9	215	February 8, 1960	University of Louisville
Chris McCullough	2016	2018	F	6-11	200	February 5, 1995	Syracuse University
John McCullough	1982	1982	G	6-4	190	October 5, 1956	University of Oklahoma
Clint McDaniel	1996	1996	G	6-4	180	February 26, 1972	University of Arkansas
Xavier McDaniel	1986	1998	F	6-7	205	June 4, 1963	Wichita State University
Jim McDaniels	1972	1978	C-F	6-11	228	April 2, 1948	Western Kentucky University
K.J. McDaniels	2015	2017	G-F	6-6	205	February 9, 1993	Clemson University
Doug McDermott	2015	2018	F	6-8	225	January 3, 1992	Creighton University
Ben McDonald	1986	1989	F	6-8	210	July 20, 1962	University of California, Irvine
Glenn McDonald	1975	1977	F-G	6-6	190	March 18, 1952	California State University, Long Beach
Michael McDonald	1998	1998	C	6-10	232	February 13, 1969	University of New Orleans
Roderick McDonald	1971	1973	F	6-6	205	April 9, 1945	Whitworth
Hank McDowell	1982	1987	F-C	6-9	215	November 13, 1959	University of Memphis
Antonio McDyess	1996	2011	F-C	6-9	220	September 7, 1974	University of Alabama
Jim McElroy	1976	1982	G	6-3	190	October 4, 1953	Central Michigan University
Patrick McFarland	1974	1976	F-G	6-5	185	December 7, 1951	Saint Joseph's University
Ivan McFarlin	2007	2007	F	6-8	240	April 26, 1982	Oklahoma State University
Mel McGaha	1949	1949	G	6-1	190	September 26, 1926	University of Arkansas
Mitch McGary	2015	2016	F-C	6-10	255	June 6, 1992	University of Michigan
JaVale McGee	2009	2018	C	7-0	270	January 19, 1988	University of Nevada, Reno
Mike McGee	1982	1990	G-F	6-5	190	July 29, 1959	University of Michigan
Bill McGill	1963	1970	C-F	6-9	225	September 16, 1939	University of Utah
George McGinnis	1972	1982	F-C	6-8	235	August 12, 1950	Indiana University
Jon McGlocklin	1966	1976	G-F	6-5	205	June 10, 1943	Indiana University
Tracy McGrady	1998	2012	F-G	6-8	210	May 24, 1979	\N
Gil McGregor	1972	1972	F	6-8	240	June 14, 1949	Wake Forest University
Elton McGriff	1968	1969	C	6-9	225	August 21, 1942	Creighton University
Rodney McGruder	2017	2017	G	6-4	205	July 29, 1991	Kansas State University
Alfred McGuire	1952	1955	G-F	6-2	180	September 7, 1928	St. John's University
Allie McGuire	1974	1974	G	6-3	175	July 10, 1951	Marquette University
Dick McGuire	1950	1960	G	6-0	180	January 25, 1926	St. John's University
Dominic McGuire	2008	2013	F	6-9	220	October 20, 1985	California State University, Fresno
Kevin McHale	1981	1993	F-C	6-10	210	December 19, 1957	University of Minnesota
Maurice McHartley	1968	1970	G-F	6-3	185	August 1, 1942	North Carolina Agricultural and Technical State University
Jim McIlvaine	1995	2001	C	7-1	240	July 30, 1972	Marquette University
Jeff McInnis	1997	2008	G	6-4	190	October 22, 1974	University of North Carolina
Kenny McIntosh	1972	1975	F	6-7	225	January 21, 1949	Eastern Michigan University
Bob McIntyre	1968	1970	F	6-6	215	January 23, 1944	St. John's University
Jerry McKee	1970	1970	G	6-3	190	August 4, 1946	Ohio University
Kevin McKenna	1982	1988	G-F	6-5	195	January 8, 1959	Creighton University
Forrest McKenzie	1987	1987	F	6-7	200	February 16, 1963	Loyola Marymount University
Stan McKenzie	1968	1974	F-G	6-5	195	October 6, 1944	New York University
Derrick McKey	1988	2002	F-C	6-9	205	October 10, 1966	University of Alabama
Aaron McKie	1995	2007	G	6-5	209	October 2, 1972	Temple University
Billy McKinney	1979	1986	G	6-0	160	June 5, 1955	Northwestern University
Bones McKinney	1947	1952	F-C	6-6	185	January 1, 1919	University of North Carolina
Carlton McKinney	1990	1992	G	6-4	190	October 21, 1964	Southern Methodist University
Alfonzo McKinnie	2018	2018	F	6-8	215	September 17, 1992	University of Wisconsin-Green Bay
Ben McLemore	2014	2018	G	6-5	195	February 11, 1993	University of Kansas
McCoy McLemore	1965	1972	F-C	6-7	230	April 3, 1942	Drake University
George McLeod	1953	1953	F	6-5	200	January 3, 1931	Texas Christian University
Keith McLeod	2004	2007	G	6-2	188	November 5, 1979	Bowling Green State University
Roshown McLeod	1999	2001	F	6-8	221	November 17, 1975	Duke University
Jack McMahon	1953	1960	G	6-1	185	December 3, 1928	St. John's University
Nate McMillan	1987	1998	G-F	6-5	195	August 3, 1964	North Carolina State University
Tom McMillen	1976	1986	F-C	6-11	215	May 26, 1952	University of Maryland
Jim McMillian	1971	1979	F	6-5	215	March 11, 1948	Columbia University
Shellie McMillon	1959	1962	F	6-5	205	March 11, 1936	Bradley University
Mal McMullen	1950	1951	F-C	6-5	210	August 23, 1927	Xavier University
Chet McNabb	1948	1948	F	6-2	200	September 19, 1920	Arizona State University
Mark McNamara	1983	1991	C-F	6-11	235	June 8, 1959	University of California
Joe McNamee	1951	1952	F-C	6-6	210	September 24, 1926	University of San Francisco
Jerel McNeal	2015	2015	G	6-3	200	June 1, 1987	Marquette University
Chris McNealy	1986	1988	F	6-7	210	July 15, 1961	San Jose State University
Bob McNeill	1961	1962	G	6-1	170	October 22, 1938	Saint Joseph's University
Larry McNeill	1974	1979	F-C	6-9	195	January 31, 1951	Marquette University
Carl McNulty	1955	1955	G	6-3	185	February 14, 1930	Purdue University
Paul McPherson	2001	2001	G	6-4	210	July 3, 1978	DePaul University
Roy McPipe	1975	1975	G	6-3	205	May 5, 1950	Montana State University, Billings
Cozell McQueen	1987	1987	F	6-11	235	January 18, 1962	North Carolina State University
Jordan McRae	2016	2017	G	6-6	185	March 28, 1991	University of Tennessee
Thales McReynolds	1966	1966	G	6-3	185	June 8, 1943	Miles College
Josh McRoberts	2008	2017	F	6-10	240	February 28, 1987	Duke University
Eric McWilliams	1973	1973	F	6-8	200	April 18, 1950	California State University, Long Beach
George Mearns	1947	1948	F	6-3	175	April 18, 1922	University of Rhode Island
Stanislav Medvedenko	2001	2007	F	6-10	250	April 4, 1979	\N
Darnell Mee	1994	1995	G	6-5	175	February 11, 1971	Western Kentucky University
Jodie Meeks	2010	2018	G	6-4	210	August 21, 1987	University of Kentucky
Cliff Meely	1972	1976	F-C	6-8	215	July 10, 1947	University of Colorado
Scott Meents	1990	1991	F	6-10	225	January 4, 1964	University of Illinois at Urbana-Champaign
Dick Mehen	1950	1952	F-C	6-5	195	May 20, 1922	University of Tennessee
Monk Meineke	1953	1958	F-C	6-7	208	October 30, 1930	University of Dayton
Carl Meinhold	1948	1949	G-F	6-2	185	March 29, 1926	Long Island University
Salah Mejri	2016	2018	C	7-1	245	June 15, 1986	\N
Gal Mekel	2014	2015	G	6-3	191	March 4, 1988	Wichita State University
Bill Melchionni	1967	1976	G	6-1	165	October 19, 1944	Villanova University
Gary Melchionni	1974	1975	G	6-2	185	January 19, 1951	Duke University
Fab Melo	2013	2013	C	7-0	255	June 20, 1990	Syracuse University
Ed Melvin	1947	1947	G	5-9	170	February 13, 1916	Duquesne University
Dean Meminger	1972	1977	G	6-0	175	May 13, 1948	Marquette University
Chuck Mencel	1956	1957	G	6-0	168	April 21, 1933	University of Minnesota
John Mengelt	1972	1981	G	6-2	195	October 16, 1949	Auburn University
Ken Menke	1950	1950	G	6-0	168	October 2, 1922	University of Illinois at Urbana-Champaign
Pops Mensah-Bonsu	2007	2011	F	6-9	240	September 7, 1983	George Washington University
Dewitt Menyard	1968	1968	C	6-10	210	May 24, 1944	University of Utah
Ron Mercer	1998	2005	G-F	6-7	210	May 18, 1976	University of Kentucky
Joe Meriweather	1976	1985	C-F	6-10	215	October 26, 1953	Southern Illinois University
Porter Meriwether	1963	1963	G	6-2	180	March 16, 1940	Tennessee State University
Tom Meschery	1962	1971	F	6-6	215	October 26, 1938	Saint Mary's College of California
Bill Meyer	1968	1968	G	6-3	195	August 30, 1943	Hiram College
Loren Meyer	1996	1999	C	6-10	257	December 30, 1972	Iowa State University
Dave Meyers	1976	1980	F-C	6-8	215	April 21, 1953	University of California, Los Angeles
Stan Miasek	1947	1953	C-F	6-5	210	September 19, 1923	\N
Larry Micheaux	1984	1985	F	6-9	220	March 24, 1960	University of Houston
Jordan Mickey	2016	2018	F	6-8	235	July 9, 1994	Louisiana State University
Khris Middleton	2013	2018	F-G	6-8	234	August 12, 1991	Texas A&M University
Red Mihalik	1947	1947	G	6-0	180	September 22, 1916	\N
Chris Mihm	2001	2009	C	7-0	265	July 16, 1979	University of Texas at Austin
Ed Mikan	1949	1954	C-F	6-8	230	October 20, 1925	DePaul University
George Mikan	1949	1956	C	6-10	245	June 18, 1924	DePaul University
Larry Mikan	1971	1971	F	6-7	210	April 8, 1948	University of Minnesota
Vern Mikkelsen	1950	1959	F-C	6-7	230	October 21, 1928	Hamline University
Al Miksis	1950	1950	C	6-7	210	February 2, 1928	Western Illinois University
Aaron Miles	2006	2006	G	6-1	175	April 13, 1983	University of Kansas
C.J. Miles	2006	2018	G-F	6-6	225	April 18, 1987	\N
Darius Miles	2001	2009	F	6-9	210	October 9, 1981	\N
Eddie Miles	1964	1972	G-F	6-4	195	July 5, 1940	Seattle University
Marko Milic	1998	1999	G-F	6-6	235	May 7, 1977	\N
Darko Milicic	2004	2013	F-C	7-0	250	June 20, 1985	\N
Nat Militzok	1947	1947	F	6-3	195	May 3, 1923	Cornell University
Andre Miller	2000	2016	G	6-3	200	March 19, 1976	University of Utah
Anthony Miller	1995	2005	F	6-9	225	October 22, 1971	Michigan State University
Bill Miller	1949	1949	F	6-3	190	November 24, 1924	University of North Carolina
Bob Miller	1984	1984	F	6-10	230	July 9, 1956	University of Cincinnati
Brad Miller	1999	2012	C	6-11	244	April 12, 1976	Purdue University
Darius Miller	2013	2018	F	6-8	235	March 21, 1990	University of Kentucky
Dick Miller	1981	1981	F	6-6	215	April 26, 1958	University of Toledo
Eddie Miller	1953	1954	C-F	6-8	225	June 18, 1931	Syracuse University
Harry Miller	1947	1947	C-F	6-4	230	July 28, 1923	University of North Carolina
Jay Miller	1968	1971	F	6-5	205	July 19, 1943	University of Notre Dame
Larry Miller	1969	1975	G-F	6-4	190	April 4, 1946	University of North Carolina
Malcolm Miller	2018	2018	F	6-7	210	March 6, 1993	College of the Holy Cross
Mike Miller	2001	2017	F-G	6-8	218	February 19, 1980	University of Florida
Oliver Miller	1993	2004	C	6-9	280	April 6, 1970	University of Arkansas
Quincy Miller	2013	2015	F	6-9	210	November 18, 1992	Baylor University
Reggie Miller	1988	2005	G-F	6-7	185	August 24, 1965	University of California, Los Angeles
Walt Miller	1947	1947	F	6-2	190	July 30, 1915	Duquesne University
Chris Mills	1994	2003	F	6-6	215	January 25, 1970	University of Arizona
John Mills	1947	1947	C-F	6-8	203	September 7, 1919	Western Kentucky University
Patty Mills	2010	2018	G	6-0	185	August 11, 1988	Saint Mary's College of California
Terry Mills	1991	2001	F	6-10	230	December 21, 1967	University of Michigan
Elijah Millsap	2015	2017	G-F	6-6	225	August 12, 1987	University of Alabama at Birmingham
Paul Millsap	2007	2018	F	6-8	246	February 10, 1985	Louisiana Tech University
Harold Miner	1993	1996	G	6-5	210	May 5, 1971	University of Southern California
Yao Ming	2003	2011	C	7-6	310	September 12, 1980	\N
Dirk Minniefield	1986	1988	G	6-3	180	January 17, 1961	University of Kentucky
Dave Minor	1952	1953	G-F	6-2	185	February 23, 1922	University of California, Los Angeles
Greg Minor	1995	1999	G-F	6-6	210	September 18, 1971	University of Louisville
Mark Minor	1973	1973	F	6-6	215	May 14, 1950	Ohio State University
Nikola Mirotic	2015	2018	F	6-10	220	February 11, 1991	\N
Wat Misaka	1948	1948	G	5-7	150	December 21, 1923	University of Utah
Jason Miskiri	2000	2000	G	6-2	175	August 19, 1975	George Mason University
Donovan Mitchell	2018	2018	G	6-3	211	September 7, 1996	University of Louisville
Leland Mitchell	1968	1968	G	6-4	210	February 22, 1941	Mississippi State University
Mike Mitchell	1979	1988	F	6-7	215	January 1, 1956	Auburn University
Murray Mitchell	1950	1950	C	6-6	\N	March 19, 1923	Sam Houston State University
Sam Mitchell	1990	2002	F	6-6	210	September 2, 1963	Mercer University
Todd Mitchell	1989	1989	F	6-7	205	July 26, 1966	Purdue University
Tony Mitchell	2014	2014	F	6-6	216	August 7, 1989	University of Alabama
Tony Mitchell	2014	2014	F	6-8	235	April 7, 1992	University of North Texas
Steve Mix	1970	1983	F	6-7	215	December 30, 1947	University of Toledo
Bill Mlkvy	1953	1953	F	6-4	190	January 19, 1931	Temple University
Cuttino Mobley	1999	2009	G	6-4	190	September 1, 1975	University of Rhode Island
Eric Mobley	1995	1997	C	6-11	235	February 1, 1970	University of Pittsburgh
Doug Moe	1968	1972	F-G	6-5	215	September 21, 1938	University of North Carolina
Larry Moffett	1978	1978	F	6-8	210	November 5, 1954	University of Nevada, Las Vegas
Leo Mogus	1947	1951	F-C	6-4	190	April 13, 1921	Youngstown State University
Nazr Mohammed	1999	2016	C	6-10	221	September 5, 1977	University of Kentucky
Jerome Moiso	2001	2005	F-C	6-10	235	June 15, 1978	University of California, Los Angeles
Paul Mokeski	1980	1991	C-F	7-0	250	January 3, 1957	University of Kansas
Jack Molinas	1954	1954	F	6-6	200	October 31, 1931	Columbia University
Wayne Molis	1967	1968	F	6-8	230	April 17, 1943	Lewis University
Sidney Moncrief	1980	1991	G	6-3	180	September 21, 1957	University of Arkansas
Eric Money	1975	1980	G	6-0	170	February 6, 1955	University of Arizona
Sergei Monia	2006	2006	F	6-8	220	April 15, 1983	\N
Malik Monk	2018	2018	G	6-3	200	February 4, 1998	University of Kentucky
Earl Monroe	1968	1980	G	6-3	185	November 21, 1944	Winston-Salem State University
Greg Monroe	2011	2018	C-F	6-11	265	June 4, 1990	Georgetown University
Rodney Monroe	1992	1992	G	6-3	185	April 16, 1968	North Carolina State University
Luis Montero	2016	2016	G	6-7	185	April 6, 1993	Westchester CC
Howie Montgomery	1963	1963	F	6-5	220	August 22, 1940	University of Texas-Pan American
Eric Montross	1995	2002	C	7-0	270	September 23, 1971	University of North Carolina
Jamario Moon	2008	2012	F	6-8	205	June 13, 1980	Meridian Community College
Jim Mooney	1953	1953	F	6-5	215	July 8, 1930	Villanova University
Andre Moore	1988	1988	F	6-9	215	July 2, 1964	Loyola University of Chicago
E'Twaun Moore	2012	2018	G	6-4	191	February 28, 1989	Purdue University
Gene Moore	1969	1975	C-F	6-9	225	July 29, 1945	Saint Louis University
Jackie Moore	1955	1957	F	6-5	180	September 24, 1932	La Salle University
Johnny Moore	1981	1990	G	6-1	175	March 3, 1958	University of Texas at Austin
Larry Moore	1968	1968	F	6-7	215	\N	\N
Lowes Moore	1981	1983	G	6-1	170	May 5, 1957	West Virginia University
Mikki Moore	1999	2012	C	6-11	225	November 4, 1975	University of Nebraska
Otto Moore	1969	1977	C-F	6-11	205	August 27, 1946	University of Texas-Pan American
Richard Moore	1968	1968	G	6-2	190	\N	Hiram Scott College
Ron Moore	1988	1988	C	7-0	260	January 16, 1962	West Virginia State University
Tracy Moore	1992	1997	G-F	6-4	200	December 28, 1965	University of Tulsa
Eric Moreland	2015	2018	F-C	6-10	238	December 24, 1991	Oregon State University
Jackie Moreland	1961	1970	F-G	6-7	215	March 11, 1938	Louisiana Tech University
Guy Morgan	1983	1983	G	6-8	205	August 23, 1960	Wake Forest University
Rex Morgan	1971	1972	G	6-5	190	October 27, 1948	Jacksonville University
Elmore Morgenthaler	1947	1949	C	6-9	230	August 3, 1922	New Mexico Institute of Mining and Technology
Darren Morningstar	1994	1994	C	6-10	235	April 22, 1969	University of Pittsburgh
Chris Morris	1989	1999	F	6-8	210	January 20, 1966	Auburn University
Darius Morris	2012	2015	G	6-4	190	January 3, 1991	University of Michigan
Isaiah Morris	1993	1993	F	6-8	229	April 2, 1969	University of Arkansas
Marcus Morris	2012	2018	F	6-9	235	September 2, 1989	University of Kansas
Markieff Morris	2012	2018	F	6-10	245	September 2, 1989	University of Kansas
Max Morris	1950	1950	F-C	6-2	195	March 14, 1925	Northwestern University
Monte Morris	2018	2018	G	6-3	175	June 27, 1995	Iowa State University
Randolph Morris	2007	2010	C	6-10	266	January 2, 1986	University of Kentucky
Terence Morris	2002	2006	F	6-9	221	January 11, 1979	University of Maryland
Adam Morrison	2007	2010	F	6-8	205	July 19, 1984	Gonzaga University
John Morrison	1968	1968	G	6-2	190	May 2, 1945	Canisius College
Mike Morrison	1990	1990	G	6-4	195	August 16, 1967	Loyola College in Maryland
Red Morrison	1955	1958	F-C	6-8	220	April 26, 1932	University of Idaho
Anthony Morrow	2009	2017	G	6-5	210	September 27, 1985	Georgia Institute of Technology
Dwayne Morton	1995	1995	F	6-7	195	August 8, 1971	University of Louisville
John Morton	1990	1992	G	6-3	180	May 18, 1967	Seton Hall University
Richard Morton	1989	1989	G	6-3	190	February 2, 1966	California State University, Fullerton
Glenn Mosley	1978	1979	F	6-8	195	December 26, 1955	Seton Hall University
Perry Moss	1986	1987	G	6-2	185	November 11, 1958	Northeastern University
Lawrence Moten	1996	1998	G	6-5	185	March 25, 1972	Syracuse University
Donatas Motiejunas	2013	2017	F-C	7-0	222	September 20, 1990	\N
Johnathan Motley	2018	2018	F	6-9	238	May 4, 1995	Baylor University
Hanno Mottola	2001	2002	C	6-11	247	September 9, 1976	University of Utah
Arnett Moultrie	2013	2014	F	6-11	249	November 18, 1990	Mississippi State University
Rick Mount	1971	1975	G	6-3	175	January 5, 1947	Purdue University
Alonzo Mourning	1993	2008	C	6-10	240	February 8, 1970	Georgetown University
Timofey Mozgov	2011	2018	C	7-1	275	July 16, 1986	\N
Chuck Mrazovich	1951	1951	F	6-5	185	February 26, 1924	Eastern Kentucky University
Emmanuel Mudiay	2016	2018	G	6-5	200	March 5, 1996	\N
Erwin Mueller	1967	1974	C-F	6-8	230	March 12, 1944	University of San Francisco
Shabazz Muhammad	2014	2018	F-G	6-6	223	November 13, 1992	University of California, Los Angeles
Joe Mullaney	1950	1950	G	6-0	165	November 17, 1924	College of the Holy Cross
Bob Mullens	1947	1947	G	6-1	175	November 1, 1922	Fordham University
Byron Mullens	2010	2014	C	7-0	275	February 14, 1989	Ohio State University
Chris Mullin	1986	2001	F-G	6-6	200	July 30, 1963	St. John's University
Jeff Mullins	1965	1976	G-F	6-4	190	March 18, 1942	Duke University
Todd Mundt	1996	1996	C	7-0	250	May 17, 1970	Delta State University
Xavier Munford	2016	2016	G	6-2	180	June 1, 1992	University of Rhode Island
Chris Munk	1991	1991	F	6-9	225	August 5, 1967	University of Southern California
George Munroe	1947	1948	G	5-11	170	January 5, 1922	Dartmouth College
Eric Murdock	1992	2000	G	6-1	190	June 14, 1968	Providence College
Gheorghe Muresan	1994	2000	C	7-7	303	February 14, 1971	\N
Allen Murphy	1976	1977	G	6-5	190	July 15, 1952	University of Louisville
Calvin Murphy	1971	1983	G	5-9	165	May 9, 1948	Niagara University
Dick Murphy	1947	1947	G	6-1	175	March 10, 1921	Manhattan College
Erik Murphy	2014	2014	F	6-10	230	October 26, 1990	University of Florida
Jay Murphy	1985	1988	F	6-9	220	June 26, 1962	Boston College
John Murphy	1947	1947	F	6-2	175	September 13, 1924	\N
Kevin Murphy	2013	2013	G	6-5	185	March 6, 1990	Tennessee Technological University
Ronnie Murphy	1988	1988	F	6-5	225	July 29, 1964	Jacksonville University
Tod Murphy	1988	1994	C-F	6-9	220	December 24, 1963	University of California, Irvine
Troy Murphy	2002	2013	F-C	6-11	245	May 2, 1980	University of Notre Dame
Dejounte Murray	2017	2018	G	6-5	170	September 19, 1996	University of Washington
Jamal Murray	2017	2018	G	6-4	207	February 23, 1997	University of Kentucky
Ken Murray	1951	1955	G-F	6-2	190	April 20, 1928	St. Bonaventure University
Lamond Murray	1995	2006	F	6-7	236	April 20, 1973	University of California
Ronald Murray	2003	2010	G	6-4	190	July 29, 1979	Shaw University
Tracy Murray	1993	2004	F	6-7	225	July 25, 1971	University of California, Los Angeles
Willie Murrell	1968	1970	F	6-6	225	September 13, 1941	Kansas State University
Dorie Murrey	1967	1972	F-C	6-8	215	September 7, 1943	University of Detroit Mercy
Toure' Murry	2014	2015	G-F	6-5	195	November 8, 1989	Wichita State University
Mike Muscala	2014	2018	F-C	6-11	240	July 1, 1991	Bucknell University
Angelo Musi	1947	1949	G	5-9	145	July 25, 1918	Temple University
Jerrod Mustaf	1991	1994	F-C	6-10	238	October 28, 1969	University of Maryland
Dikembe Mutombo	1992	2009	C	7-2	245	June 25, 1966	Georgetown University
Martin Muursepp	1997	1998	F	6-9	235	September 26, 1974	\N
Pete Myers	1987	1998	G-F	6-6	180	September 15, 1963	University of Arkansas at Little Rock
Hamady N'Diaye	2011	2014	C	7-0	235	January 12, 1987	Rutgers University
Makhtar N'Diaye	1999	1999	F	6-8	245	December 12, 1973	University of North Carolina
Mamadou N'Diaye	2001	2005	C	7-0	255	June 16, 1975	Auburn University
Boniface N'Dong	2006	2006	C	7-0	198	March 9, 1977	\N
Bob Naber	1953	1953	F	6-3	185	September 3, 1929	University of Louisville
Boris Nachamkin	1955	1955	F	6-6	210	December 6, 1933	New York University
Bostjan Nachbar	2003	2008	F	6-9	221	July 3, 1980	\N
Abdel Nader	2018	2018	F	6-6	230	September 25, 1993	Iowa State University
Jerry Nagel	1950	1950	G	6-0	190	May 18, 1928	Loyola University of Chicago
Fritz Nagy	1949	1949	G-F	6-2	185	January 3, 1924	University of Akron
Lee Nailon	2001	2006	F	6-9	238	February 22, 1975	Texas Christian University
Eduardo Najera	2001	2012	F	6-8	240	July 11, 1976	University of Oklahoma
Larry Nance	1982	1994	F-C	6-10	205	February 12, 1959	Clemson University
Larry Nance	2016	2018	F	6-9	230	January 1, 1993	University of Wyoming
Shabazz Napier	2015	2018	G	6-1	175	July 14, 1991	University of Connecticut
Paul Napolitano	1949	1949	F-G	6-2	185	February 3, 1923	University of San Francisco
Bob Nash	1973	1979	F	6-8	195	August 24, 1950	University of Hawaii
Cotton Nash	1965	1968	F	6-5	215	July 24, 1942	University of Kentucky
Steve Nash	1997	2014	G	6-3	195	February 7, 1974	Santa Clara University
Swen Nater	1974	1984	C	6-11	240	January 14, 1950	University of California, Los Angeles
Howard Nathan	1996	1996	G	5-11	175	January 21, 1972	University of Louisiana at Monroe
Calvin Natt	1980	1990	F	6-6	220	January 8, 1957	University of Louisiana at Monroe
Kenny Natt	1981	1985	G	6-3	185	October 5, 1958	University of Louisiana at Monroe
Willie Naulls	1957	1966	F-C	6-6	225	October 7, 1934	University of California, Los Angeles
Juan Carlos Navarro	2008	2008	G	6-3	170	June 13, 1980	\N
Maurice Ndour	2017	2017	F	6-9	200	June 18, 1992	Ohio University
Craig Neal	1989	1991	G	6-5	165	February 16, 1964	Georgia Institute of Technology
Gary Neal	2011	2017	G	6-4	210	October 3, 1984	Towson University
Jim Neal	1954	1955	C	6-11	235	May 21, 1930	Wofford College
Lloyd Neal	1973	1979	C-F	6-7	225	December 10, 1950	Tennessee State University
Ed Nealy	1983	1993	F	6-7	238	February 19, 1960	Kansas State University
Nemanja Nedovic	2014	2014	G	6-3	192	June 16, 1991	\N
Al Negratti	1947	1947	F-C	6-3	200	June 12, 1921	Seton Hall University
Barry Nelson	1972	1972	C	6-10	230	September 19, 1949	Duquesne University
DeMarcus Nelson	2009	2009	G	6-4	200	November 2, 1985	Duke University
Don Nelson	1963	1976	F	6-6	210	May 15, 1940	University of Iowa
Jameer Nelson	2005	2018	G	6-0	190	February 9, 1982	Saint Joseph's University
Louie Nelson	1974	1978	G	6-3	190	May 28, 1951	University of Washington
Ron Nelson	1971	1971	G	6-2	175	October 7, 1946	University of New Mexico
Ruben Nembhard	1997	1997	G	6-3	208	February 20, 1972	Weber State University
Dick Nemelka	1971	1971	G	6-0	175	October 1, 1943	Brigham Young University
Tyrone Nesby	1999	2002	F	6-6	225	January 31, 1976	University of Nevada, Las Vegas
Martin Nessley	1988	1988	C	7-2	260	February 16, 1965	Duke University
Rasho Nesterovic	1999	2010	C	7-0	248	May 30, 1976	\N
Raul Neto	2016	2018	G	6-1	179	May 19, 1992	\N
Bob Netolicky	1968	1976	F-C	6-9	220	August 2, 1942	Drake University
Johnny Neumann	1972	1978	G-F	6-6	200	September 11, 1951	University of Mississippi
Paul Neumann	1962	1967	G	6-1	175	January 30, 1938	Stanford University
Chuck Nevitt	1983	1994	C	7-5	217	June 13, 1959	North Carolina State University
Melvin Newbern	1993	1993	G	6-4	200	June 11, 1967	University of Minnesota
Ivano Newbill	1995	1998	F	6-9	245	December 12, 1970	Georgia Institute of Technology
Ira Newble	2001	2008	F	6-7	220	January 20, 1975	Miami University
Mike Newlin	1972	1982	G-F	6-4	200	January 2, 1949	University of Utah
Johnny Newman	1987	2002	F-G	6-7	190	November 28, 1963	University of Richmond
Dave Newmark	1969	1971	C	7-0	240	September 11, 1946	Columbia University
Bill Newton	1973	1974	C	6-9	220	December 22, 1950	Louisiana State University
Georges Niang	2017	2017	F	6-8	230	June 17, 1993	Iowa State University
Demetris Nichols	2008	2009	F	6-8	216	September 4, 1984	Syracuse University
Jack Nichols	1949	1958	C-F	6-7	222	April 9, 1926	University of Washington
Andrew Nicholson	2013	2017	F	6-9	250	December 8, 1989	St. Bonaventure University
Gaylon Nickerson	1997	1997	G	6-3	190	February 5, 1969	Northwestern Oklahoma State University
Carl Nicks	1981	1983	G	6-1	175	October 6, 1958	Indiana State University
Rich Niemann	1969	1972	C	7-0	245	July 2, 1946	Saint Louis University
Richie Niemiera	1949	1950	G-F	6-1	165	May 26, 1921	University of Notre Dame
Mike Niles	1981	1981	F	6-6	225	March 31, 1955	California State University, Fullerton
Kurt Nimphius	1982	1990	C-F	6-10	218	March 13, 1958	Arizona State University
Dyron Nix	1990	1990	F	6-7	210	February 11, 1967	University of Tennessee
Norm Nixon	1978	1989	G	6-2	170	October 11, 1955	Duquesne University
Joakim Noah	2008	2018	C	6-11	230	February 25, 1985	University of Florida
Chuck Noble	1956	1962	G	6-4	190	July 24, 1931	University of Louisville
Andres Nocioni	2005	2012	F	6-7	225	November 30, 1979	\N
David Noel	2007	2007	F	6-6	230	February 27, 1984	University of North Carolina
Nerlens Noel	2015	2018	C-F	6-11	228	April 10, 1994	University of Kentucky
Paul Noel	1948	1952	F	6-4	185	August 17, 1924	University of Kentucky
Lucas Nogueira	2015	2018	C	7-0	241	July 26, 1992	\N
Jim Nolan	1950	1950	C	6-8	210	June 9, 1927	Georgia Institute of Technology
Paul Nolen	1954	1954	C	6-10	\N	September 3, 1929	Texas Tech University
Jeff Nordgaard	1998	1998	F	6-7	225	February 23, 1973	University of Wisconsin-Green Bay
Bevo Nordmann	1962	1965	C	6-10	225	December 11, 1939	Saint Louis University
Johnny Norlander	1947	1951	F	6-3	180	March 5, 1921	Hamline University
Connie Norman	1975	1979	G	6-3	175	September 24, 1953	University of Arizona
Ken Norman	1988	1997	F	6-8	215	September 5, 1964	University of Illinois at Urbana-Champaign
Audie Norris	1983	1985	C	6-9	230	December 18, 1960	Jackson State University
Moochie Norris	1997	2006	G	6-1	175	July 27, 1973	University of West Florida
Sylvester Norris	1980	1980	C	6-11	220	February 18, 1957	Jackson State University
Willie Norwood	1972	1978	F	6-7	220	August 8, 1947	Alcorn State University
George Nostrand	1947	1950	C-F	6-8	195	January 25, 1924	University of Wyoming
Stan Noszka	1947	1949	G	6-1	185	September 9, 1920	Duquesne University
Mike Novak	1949	1954	C-F	6-9	219	April 23, 1915	Loyola University of Chicago
Steve Novak	2007	2017	F	6-10	225	June 13, 1983	Marquette University
Mel Nowell	1963	1968	G	6-2	170	December 27, 1939	Ohio State University
Dirk Nowitzki	1999	2018	F	7-0	245	June 19, 1978	\N
Frank Ntilikina	2018	2018	G	6-5	190	July 28, 1998	\N
James Nunnally	2014	2014	F	6-7	205	July 14, 1990	University of California, Santa Barbara
Jusuf Nurkic	2015	2018	C	7-0	280	August 23, 1994	\N
Dennis Nutt	1987	1987	G	6-2	170	March 25, 1963	Texas Christian University
David Nwaba	2017	2018	G	6-4	209	January 14, 1993	California Polytechnic State University, San Luis Obispo
Julius Nwosu	1995	1995	C	6-10	255	May 1, 1971	Liberty University
Charles O'Bannon	1998	1999	G-F	6-5	209	February 22, 1975	University of California, Los Angeles
Ed O'Bannon	1996	1997	F	6-8	222	August 14, 1972	University of California, Los Angeles
John O'Boyle	1953	1953	G	6-2	185	March 7, 1928	Colorado State University
Bob O'Brien	1948	1949	F	6-4	190	January 26, 1927	Pepperdine University
J.J. O'Brien	2016	2016	F	6-7	228	April 8, 1992	San Diego State University
Jim O'Brien	1974	1975	F	6-7	200	November 7, 1951	University of Maryland
Jimmy O'Brien	1972	1975	G	6-1	170	April 9, 1950	Boston College
Ralph O'Brien	1952	1953	G	5-9	160	April 8, 1928	Butler University
Johnny O'Bryant	2015	2018	F-C	6-9	257	June 1, 1993	Louisiana State University
Patrick O'Bryant	2007	2010	C	7-0	260	June 20, 1986	Bradley University
Dermie O'Connell	1949	1950	G	6-0	174	April 13, 1928	College of the Holy Cross
Andy O'Donnell	1950	1950	G	6-1	180	March 10, 1925	Loyola College in Maryland
Buddy O'Grady	1947	1949	G	5-11	160	January 19, 1920	Georgetown University
Fran O'Hanlon	1971	1971	G	6-1	175	August 24, 1948	Villanova University
Dick O'Keefe	1948	1951	G-F	6-2	185	September 29, 1923	Santa Clara University
Tommy O'Keefe	1951	1951	G	6-2	185	June 3, 1928	Georgetown University
Mike O'Koren	1981	1988	F-G	6-7	207	February 7, 1958	University of North Carolina
Grady O'Malley	1970	1970	F	6-5	205	April 25, 1948	Manhattan College
Jermaine O'Neal	1997	2014	F-C	6-11	226	October 13, 1978	\N
Shaquille O'Neal	1993	2011	C	7-1	325	March 6, 1972	Louisiana State University
Royce O'Neale	2018	2018	F	6-6	215	June 5, 1993	Baylor University
Mike O'Neill	1953	1953	F	6-3	210	\N	University of California
Kyle O'Quinn	2013	2018	F-C	6-10	250	March 26, 1990	Norfolk State University
Kevin O'Shea	1951	1953	G	6-2	175	July 10, 1925	University of Notre Dame
Garland O'Shields	1947	1947	G-F	6-1	195	May 23, 1921	University of Tennessee
Dan O'Sullivan	1991	1996	C	6-10	250	March 3, 1968	Fordham University
Charles Oakley	1986	2004	F-C	6-8	225	December 18, 1963	Virginia Union University
Fabricio Oberto	2006	2011	C-F	6-10	245	March 21, 1975	\N
Daniel Ochefu	2017	2017	C	6-11	245	December 15, 1993	Villanova University
Greg Oden	2009	2014	C	7-0	250	January 22, 1988	Ohio State University
Lamar Odom	2000	2013	F	6-10	220	November 6, 1979	University of Rhode Island
Bud Ogden	1970	1971	F	6-6	215	December 29, 1946	Santa Clara University
Ralph Ogden	1971	1971	F	6-5	205	January 25, 1948	Santa Clara University
Alan Ogg	1991	1993	C	7-2	240	July 5, 1967	University of Alabama at Birmingham
Don Ohl	1961	1970	G	6-3	190	April 18, 1936	University of Illinois at Urbana-Champaign
Tim Ohlbrecht	2013	2013	C	6-11	255	August 30, 1988	\N
Semi Ojeleye	2018	2018	F	6-7	241	December 5, 1994	Southern Methodist University
Emeka Okafor	2005	2013	C-F	6-10	252	September 28, 1982	University of Connecticut
Jahlil Okafor	2016	2018	C-F	6-11	275	December 15, 1995	Duke University
Mehmet Okur	2003	2012	C-F	6-11	249	May 26, 1979	\N
Victor Oladipo	2014	2018	G	6-4	210	May 4, 1992	Indiana University
Hakeem Olajuwon	1985	2002	C	7-0	255	January 21, 1963	University of Houston
Mark Olberding	1976	1987	F	6-8	225	April 21, 1956	University of Minnesota
Jawann Oldham	1981	1991	C	7-0	215	July 4, 1957	Seattle University
John Oldham	1950	1951	G	6-3	175	June 22, 1923	Western Kentucky University
Frank Oleynick	1976	1977	G	6-2	185	February 20, 1955	Seattle University
John Olive	1979	1980	F	6-7	210	March 1, 1955	Villanova University
Brian Oliver	1991	1998	G	6-4	210	June 1, 1968	Georgia Institute of Technology
Dean Oliver	2002	2003	G	5-11	180	November 5, 1978	University of Iowa
Jimmy Oliver	1992	1999	G-F	6-5	205	July 12, 1969	Purdue University
Kevin Ollie	1998	2010	G	6-4	195	December 27, 1972	University of Connecticut
Gene Ollrich	1950	1950	G	5-11	160	June 30, 1922	Drake University
Michael Olowokandi	1999	2007	C	7-0	269	April 3, 1975	University of the Pacific
Bud Olsen	1963	1970	F-C	6-8	220	July 25, 1940	University of Louisville
Kelly Olynyk	2014	2018	C-F	7-0	238	April 19, 1991	Gonzaga University
Arinze Onuaku	2014	2017	C	6-9	255	July 13, 1987	Syracuse University
Chinanu Onuaku	2017	2017	F-C	6-10	245	November 1, 1996	University of Louisville
Barry Orms	1969	1970	G	6-3	190	May 1, 1946	Saint Louis University
Johnny Orr	1950	1950	F	6-3	195	June 10, 1927	Beloit College
Louis Orr	1981	1988	F	6-8	175	May 7, 1958	Syracuse University
Jose Ortiz	1989	1990	F	6-10	225	October 25, 1963	Oregon State University
Daniel Orton	2012	2014	C-F	6-10	255	August 6, 1990	University of Kentucky
Chuck Osborne	1962	1962	F	6-6	210	January 21, 1939	Western Kentucky University
Cedi Osman	2018	2018	F	6-8	210	April 8, 1995	\N
Wally Osterkorn	1952	1955	F-C	6-5	215	July 6, 1928	University of Illinois at Urbana-Champaign
Greg Ostertag	1996	2006	C	7-2	280	March 6, 1973	University of Kansas
Matt Othick	1993	1993	G	6-2	165	March 16, 1969	University of Arizona
Don Otten	1950	1953	C	6-10	240	April 18, 1921	Bowling Green State University
Mac Otten	1950	1950	F-C	6-7	220	December 16, 1925	Bowling Green State University
Kelly Oubre	2016	2018	F	6-7	205	December 9, 1995	University of Kansas
Bo Outlaw	1994	2008	F	6-8	210	April 13, 1971	University of Houston
Travis Outlaw	2004	2014	F	6-9	210	September 18, 1984	\N
Claude Overton	1953	1953	G	6-2	195	December 16, 1927	East Central University
Doug Overton	1993	2004	G	6-3	190	August 3, 1969	La Salle University
Andre Owens	2006	2008	G	6-4	200	October 31, 1980	University of Houston
Billy Owens	1992	2001	F-G	6-8	220	May 1, 1969	Syracuse University
Chris Owens	2003	2003	F	6-7	245	March 1, 1979	University of Texas at Austin
Eddie Owens	1978	1978	F	6-7	210	December 26, 1953	University of Nevada, Las Vegas
Jim Owens	1974	1975	F	6-5	200	May 1, 1950	Arizona State University
Keith Owens	1992	1992	F	6-7	225	May 31, 1969	University of California, Los Angeles
Larry Owens	2011	2012	F	6-7	210	January 8, 1983	Oral Roberts University
Red Owens	1950	1952	G-F	6-3	185	September 2, 1925	Baylor University
Tom Owens	1972	1983	C-F	6-10	215	June 28, 1949	University of South Carolina
Ray Owes	1997	1997	F	6-9	224	December 11, 1972	University of Arizona
Olumide Oyedeji	2001	2003	C	6-10	240	May 11, 1981	\N
Joe Pace	1977	1978	C	6-10	220	December 18, 1953	Coppin State University
Zaza Pachulia	2004	2018	C	6-11	270	February 10, 1984	\N
Robert Pack	1992	2004	G	6-2	180	February 3, 1969	University of Southern California
Wayne Pack	1975	1975	G	6-0	165	July 5, 1950	Tennessee Technological University
Gerald Paddio	1991	1994	F-G	6-7	205	April 21, 1965	University of Nevada, Las Vegas
Scott Padgett	2000	2007	F	6-9	240	April 19, 1976	University of Kentucky
Dana Pagett	1972	1972	G	6-2	180	March 29, 1949	University of Southern California
Marcus Paige	2018	2018	G	6-1	175	September 11, 1993	University of North Carolina
Fred Paine	1949	1949	F	6-5	210	December 7, 1925	Westminster College of Pennsylvania
Milt Palacio	2000	2006	G	6-3	195	February 7, 1978	Colorado State University
Togo Palazzi	1955	1960	F-G	6-4	205	August 8, 1932	College of the Holy Cross
Bud Palmer	1947	1949	F-C	6-4	180	September 14, 1921	Princeton University
Errol Palmer	1968	1968	F	6-5	195	\N	DePaul University
Jim Palmer	1959	1961	F-C	6-8	224	June 8, 1933	University of Dayton
Walter Palmer	1991	1993	C-F	7-1	215	October 23, 1968	Dartmouth College
Andy Panko	2001	2001	F	6-9	222	November 27, 1977	Lebanon Valley College
Georgios Papagiannis	2017	2018	C	7-1	240	July 3, 1997	\N
Kostas Papanikolaou	2015	2016	F	6-8	225	July 31, 1990	\N
Jannero Pargo	2003	2015	G	6-1	175	October 22, 1979	University of Arkansas
Jeremy Pargo	2012	2013	G	6-2	219	March 17, 1986	Gonzaga University
Easy Parham	1949	1951	F-G	6-3	200	December 27, 1921	Texas Wesleyan University
Robert Parish	1977	1997	C	7-0	230	August 30, 1953	Centenary College of Louisiana
Med Park	1956	1960	G-F	6-2	205	April 11, 1933	University of Missouri
Anthony Parker	1998	2012	G	6-6	215	June 19, 1975	Bradley University
Jabari Parker	2015	2017	F	6-8	250	March 15, 1995	Duke University
Smush Parker	2003	2008	G	6-4	190	June 1, 1981	Fordham University
Sonny Parker	1977	1982	F-G	6-6	200	March 22, 1955	Texas A&M University
Tony Parker	2002	2018	G	6-2	185	May 17, 1982	\N
Barry Parkhill	1974	1976	G	6-4	185	May 10, 1951	University of Virginia
Jack Parkinson	1950	1950	G	6-0	174	March 4, 1924	University of Kentucky
Charles Parks	1969	1969	F	6-5	210	\N	Idaho State University
Cherokee Parks	1996	2004	C-F	6-11	235	October 11, 1972	Duke University
Richard Parks	1968	1968	F	6-7	235	October 28, 1943	Saint Louis University
Jack Parr	1959	1959	C	6-9	220	March 13, 1936	Kansas State University
Doyle Parrack	1947	1947	F-G	6-0	165	December 6, 1921	Oklahoma State University
Charlie Parsley	1950	1950	G	6-2	175	October 13, 1925	Western Kentucky University
Chandler Parsons	2012	2018	F	6-10	230	October 25, 1988	University of Florida
Zarko Paspalj	1990	1990	F	6-9	215	March 27, 1966	\N
Marty Passaglia	1947	1949	G	6-1	170	April 22, 1919	Santa Clara University
George Pastushok	1947	1947	G	6-1	195	July 13, 1922	St. John's University
Myles Patrick	1981	1981	F	6-8	220	November 19, 1954	Auburn University
Stan Patrick	1950	1950	F-G	6-2	185	May 5, 1922	University of Illinois at Urbana-Champaign
Andrae Patterson	1999	2000	F	6-9	238	November 12, 1975	Indiana University
George Patterson	1968	1968	C-F	6-8	230	November 26, 1939	University of Toledo
Lamar Patterson	2016	2017	G-F	6-5	225	August 12, 1991	University of Pittsburgh
Patrick Patterson	2011	2018	F	6-9	230	March 14, 1989	University of Kentucky
Ruben Patterson	1999	2008	F	6-5	224	July 31, 1975	University of Cincinnati
Steve Patterson	1972	1976	C	6-9	225	June 24, 1948	University of California, Los Angeles
Tom Patterson	1973	1974	F	6-6	220	October 15, 1948	Ouachita Baptist University
Worthy Patterson	1958	1958	G	6-2	175	June 17, 1931	University of Connecticut
Brandon Paul	2018	2018	G	6-4	200	April 30, 1991	University of Illinois at Urbana-Champaign
Chris Paul	2006	2018	G	6-0	175	May 6, 1985	Wake Forest University
Charlie Paulk	1969	1972	F-C	6-8	219	June 14, 1946	Northeastern State University
Jerry Paulson	1958	1958	G	6-2	185	July 21, 1935	Manhattan College
Billy Paultz	1971	1985	C-F	6-11	235	July 30, 1948	St. John's University
Sasha Pavlovic	2004	2013	G-F	6-8	220	November 15, 1983	\N
Jim Paxson	1957	1958	F-G	6-6	200	December 19, 1932	University of Dayton
Jim Paxson	1980	1990	G-F	6-6	200	July 9, 1957	University of Dayton
John Paxson	1984	1994	G	6-2	185	September 29, 1960	University of Notre Dame
Johnny Payak	1950	1953	G-F	6-4	174	November 20, 1926	Bowling Green State University
Adreian Payne	2015	2018	F-C	6-10	237	February 19, 1991	Michigan State University
Cameron Payne	2016	2017	G	6-3	185	August 8, 1994	Murray State University
Kenny Payne	1990	1993	F-G	6-8	195	November 25, 1966	University of Louisville
Tom Payne	1972	1972	C	7-2	240	November 19, 1950	University of Kentucky
Elfrid Payton	2015	2018	G	6-4	185	February 22, 1994	University of Louisiana at Lafayette
Gary Payton	1991	2007	G	6-4	180	July 23, 1968	Oregon State University
Gary Payton	2017	2018	G	6-3	190	December 1, 1992	Oregon State University
Mel Payton	1952	1953	F-G	6-4	185	July 16, 1926	Tulane University
George Pearcy	1947	1947	G	6-1	165	July 2, 1919	Indiana State University
Henry Pearcy	1947	1947	G	6-1	170	July 21, 1922	Indiana State University
Oleksiy Pecherov	2008	2010	C	7-0	232	December 8, 1985	\N
Wiley Peck	1980	1980	G	6-7	220	September 15, 1957	Mississippi State University
Rich Peek	1968	1968	C	6-11	230	October 28, 1943	Louisiana Tech University
Anthony Peeler	1993	2005	G	6-4	208	November 25, 1969	University of Missouri
George Peeples	1968	1973	C-F	6-7	190	October 30, 1943	University of Iowa
Nikola Pekovic	2011	2016	C	6-11	307	January 3, 1986	\N
Jake Pelkington	1949	1949	C-F	6-6	220	January 3, 1916	Manhattan College
Sam Pellom	1980	1983	F-C	6-9	225	October 2, 1951	University at Buffalo, State University of New York
Mike Penberthy	2001	2002	G	6-3	185	November 29, 1974	Master's College
Jerry Pender	1974	1974	G	6-2	185	February 12, 1950	California State University, Fresno
Desmond Penigar	2004	2004	F	6-7	245	July 16, 1981	Utah State University
Kirk Penney	2004	2005	G	6-5	220	November 23, 1980	University of Wisconsin
Mike Peplowski	1994	1996	C	6-10	270	October 15, 1970	Michigan State University
Will Perdue	1989	2001	C	7-0	240	August 29, 1965	Vanderbilt University
Kendrick Perkins	2004	2016	C	6-10	270	November 10, 1984	\N
Sam Perkins	1985	2001	F-C	6-9	235	June 14, 1961	University of North Carolina
Warren Perkins	1950	1951	G-F	6-3	190	February 2, 1922	Tulane University
Kosta Perovic	2008	2008	C	7-2	240	February 19, 1985	\N
London Perrantes	2018	2018	G	6-2	200	October 3, 1994	University of Virginia
Aulcie Perry	1975	1975	C	6-10	210	July 3, 1950	Bethune-Cookman College
Curtis Perry	1971	1978	F	6-7	220	September 13, 1948	Missouri State University
Elliot Perry	1992	2002	G	6-0	150	March 28, 1969	University of Memphis
Ron Perry	1968	1970	G	6-3	190	December 29, 1943	Virginia Polytechnic Institute and State University
Tim Perry	1989	1996	F-C	6-9	200	June 4, 1965	Temple University
Chuck Person	1987	2000	F	6-8	220	June 27, 1964	Auburn University
Wesley Person	1995	2005	G	6-6	195	March 28, 1971	Auburn University
Alec Peters	2018	2018	F	6-9	232	April 13, 1995	Valparaiso University
Jim Petersen	1985	1992	F-C	6-10	235	February 22, 1962	University of Minnesota
Loy Petersen	1969	1970	G	6-5	205	July 26, 1945	Oregon State University
Bob Peterson	1954	1956	F	6-5	210	January 25, 1932	University of Oregon
Ed Peterson	1950	1951	C	6-9	220	June 27, 1924	Cornell University
Mel Peterson	1964	1970	G-F	6-4	185	March 23, 1938	Wheaton College
Morris Peterson	2001	2011	F	6-7	218	August 26, 1977	Michigan State University
Geoff Petrie	1971	1976	G	6-4	190	April 17, 1948	Princeton University
Johan Petro	2006	2013	C	7-0	247	January 27, 1986	\N
Drazen Petrovic	1990	1993	G	6-5	195	October 22, 1964	\N
Richard Petruska	1994	1994	C-F	6-10	260	January 25, 1969	University of California, Los Angeles
Bob Pettit	1955	1965	F-C	6-9	205	December 12, 1932	Louisiana State University
Jerry Pettway	1968	1969	G-F	6-3	185	February 13, 1944	Northwood Institute
Roger Phegley	1979	1984	G-F	6-6	205	October 16, 1956	Bradley University
Jack Phelan	1950	1950	F	6-5	195	November 6, 1925	DePaul University
James Phelan	1954	1954	G	6-1	175	March 19, 1929	La Salle University
Derrick Phelps	1995	1995	G	6-4	181	July 31, 1972	University of North Carolina
Michael Phelps	1986	1988	G	6-4	180	October 3, 1961	Alcorn State University
Andy Phillip	1948	1958	G-F	6-2	195	March 7, 1922	University of Illinois at Urbana-Champaign
Eddie Phillips	1983	1983	F	6-7	225	September 29, 1961	University of Alabama
Gary Phillips	1962	1966	G	6-3	189	December 7, 1939	University of Houston
Gene Phillips	1972	1973	G	6-4	175	October 25, 1948	Southern Methodist University
Bobby Phills	1992	2000	G	6-5	210	December 20, 1969	Southern University and A&M College
Eric Piatkowski	1995	2008	G-F	6-7	215	September 30, 1970	University of Nebraska
Walter Piatkowski	1969	1972	F	6-8	220	June 11, 1945	Bowling Green State University
Paul Pierce	1999	2017	F-G	6-7	235	October 13, 1977	University of Kansas
Ricky Pierce	1983	1998	G	6-4	205	August 19, 1959	Rice University
Stan Pietkiewicz	1979	1981	G-F	6-5	200	July 14, 1956	Auburn University
Mickael Pietrus	2004	2013	G-F	6-6	215	February 7, 1982	\N
John Pilch	1952	1952	F	6-3	185	July 11, 1925	University of Wyoming
Ed Pinckney	1986	1997	F	6-9	195	March 27, 1963	Villanova University
Kevinn Pinkney	2007	2007	F	6-10	245	October 20, 1983	University of Nevada, Reno
John Pinone	1984	1984	F	6-8	230	February 19, 1961	Villanova University
Dave Piontek	1957	1963	F-C	6-6	230	August 27, 1934	Xavier University
Tom Piotrowski	1984	1984	C	7-1	240	October 17, 1960	La Salle University
Scottie Pippen	1988	2004	F-G	6-8	210	September 25, 1965	University of Central Arkansas
Charles Pittman	1983	1986	F	6-8	220	March 23, 1958	University of Maryland
Dexter Pittman	2011	2014	C	6-11	308	March 2, 1988	University of Texas at Austin
Zoran Planinic	2004	2006	G	6-7	195	September 12, 1982	\N
Tibor Pleiss	2016	2016	C	7-3	256	November 2, 1989	\N
Marshall Plumlee	2017	2017	C	7-0	250	July 14, 1992	Duke University
Mason Plumlee	2014	2018	C-F	6-11	245	March 5, 1990	Duke University
Miles Plumlee	2013	2018	C-F	6-11	249	September 1, 1988	Duke University
Gary Plummer	1985	1993	F-C	6-9	215	February 21, 1962	Boston University
Pavel Podkolzin	2005	2006	C	7-5	260	January 15, 1985	\N
Jakob Poeltl	2017	2018	C	7-0	248	October 15, 1995	University of Utah
Dwayne Polee	1987	1987	G	6-5	180	March 2, 1963	Pepperdine University
Jim Pollard	1949	1955	F-C	6-4	185	July 9, 1922	Stanford University
Scot Pollard	1998	2008	C	6-11	265	February 12, 1975	University of Kansas
Ralph Polson	1953	1953	F-C	6-7	200	October 26, 1929	Whitworth
Olden Polynice	1988	2004	C-F	6-11	220	November 21, 1964	University of Virginia
Cliff Pondexter	1976	1978	F-C	6-9	233	September 15, 1954	California State University, Long Beach
Quincy Pondexter	2011	2018	G-F	6-7	220	March 10, 1988	University of Washington
David Pope	1985	1986	F	6-7	220	April 15, 1962	Norfolk State University
Mark Pope	1998	2005	F	6-10	235	September 11, 1972	University of Kentucky
Dave Popson	1989	1992	F-C	6-10	220	May 17, 1964	University of North Carolina
Ben Poquette	1978	1987	F-C	6-9	235	May 7, 1955	Central Michigan University
Chris Porter	2001	2001	F	6-7	218	May 9, 1978	Auburn University
Howard Porter	1972	1978	F-C	6-8	220	August 31, 1948	Villanova University
Kevin Porter	1973	1983	G	6-0	170	April 17, 1950	Saint Francis University
Otto Porter	2014	2018	F	6-8	198	June 3, 1993	Georgetown University
Terry Porter	1986	2002	G	6-3	195	April 8, 1963	University of Wisconsin-Stevens Point
Willie Porter	1968	1969	F	6-7	205	July 3, 1942	Tennessee State University
Bobby Portis	2016	2018	F	6-11	230	February 10, 1995	University of Arkansas
Bob Portman	1970	1973	F	6-5	200	March 22, 1947	Creighton University
Kristaps Porzingis	2016	2018	F-C	7-3	240	August 2, 1995	\N
James Posey	2000	2011	F-G	6-8	215	January 13, 1977	Xavier University
Lavor Postell	2001	2003	G	6-5	215	February 26, 1978	St. John's University
John Postley	1968	1968	F	6-5	220	May 30, 1940	Bethune-Cookman College
Vitaly Potapenko	1997	2007	C	6-10	280	March 21, 1975	Wright State University
Leon Powe	2007	2011	F	6-8	240	January 22, 1984	University of California
Cincinnatus Powell	1968	1975	F-C	6-7	220	February 25, 1942	University of Portland
Dwight Powell	2015	2018	F-C	6-11	240	July 20, 1991	Stanford University
Josh Powell	2006	2014	F	6-9	225	January 25, 1983	North Carolina State University
Kasib Powell	2008	2008	F	6-7	215	March 18, 1981	Texas Tech University
Norman Powell	2016	2018	G	6-4	215	May 25, 1993	University of California, Los Angeles
Roger Powell	2007	2007	F	6-6	235	January 15, 1983	University of Illinois at Urbana-Champaign
Alex Poythress	2017	2018	F	6-7	238	September 6, 1993	University of Kentucky
Marlbert Pradd	1968	1969	G	6-3	170	November 17, 1944	Dillard University
Mike Pratt	1971	1972	G-F	6-4	195	August 4, 1948	University of Kentucky
Paul Pressey	1983	1993	G-F	6-5	185	December 24, 1958	University of Tulsa
Phil Pressey	2014	2016	G	5-11	175	February 17, 1991	University of Missouri
Dominic Pressley	1989	1989	G	6-2	170	May 30, 1964	Boston College
Harold Pressley	1987	1990	F-G	6-7	210	July 14, 1963	Villanova University
Stephen Previs	1973	1973	G	6-3	183	February 9, 1950	University of North Carolina
A.J. Price	2010	2015	G	6-2	181	October 7, 1986	University of Connecticut
Brent Price	1993	2002	G	6-1	165	December 9, 1968	University of Oklahoma
Jim Price	1973	1979	G	6-3	195	November 27, 1949	University of Louisville
Mark Price	1987	1998	G	6-0	170	February 15, 1964	Georgia Institute of Technology
Mike Price	1971	1973	G	6-3	200	September 11, 1948	University of Illinois at Urbana-Champaign
Ronnie Price	2006	2017	G	6-2	190	June 21, 1983	Utah Valley State College
Tony Price	1981	1981	G	6-6	190	January 5, 1957	University of Pennsylvania
Bob Priddy	1953	1953	F	6-3	190	March 24, 1930	New Mexico State University
Pablo Prigioni	2013	2016	G	6-3	185	May 17, 1977	\N
Tayshaun Prince	2003	2016	F	6-9	212	February 28, 1980	University of Kentucky
John Pritchard	1950	1950	C	6-9	220	January 23, 1927	Drake University
Kevin Pritchard	1991	1996	G	6-3	180	July 17, 1967	University of Kansas
Laron Profit	2000	2006	G-F	6-5	204	August 5, 1977	University of Maryland
Gabe Pruitt	2008	2009	G	6-4	170	April 19, 1986	University of Southern California
Joel Przybilla	2001	2013	C	7-1	255	October 10, 1979	University of Minnesota
Les Pugh	1949	1950	C-F	6-7	190	September 18, 1922	Ohio State University
Roy Pugh	1949	1949	C-F	6-6	210	October 16, 1922	Southern Methodist University
Anthony Pullard	1993	1993	F	6-10	245	June 23, 1966	McNeese State University
Jacob Pullen	2018	2018	G	6-1	200	November 10, 1989	Kansas State University
Don Putman	1947	1950	G	6-1	170	November 13, 1922	University of Denver
Zhou Qi	2018	2018	F-C	7-1	210	January 16, 1996	\N
Tim Quarterman	2017	2017	G	6-6	195	October 27, 1994	Louisiana State University
Bob Quick	1969	1972	F-G	6-5	215	March 5, 1946	Xavier University
Chris Quinn	2007	2013	G	6-2	185	September 27, 1983	University of Notre Dame
Brian Quinnett	1990	1992	F	6-8	235	May 30, 1966	Washington State University
Ivan Rabb	2018	2018	F	6-10	220	February 4, 1997	University of California
Luther Rackley	1970	1974	C	6-10	220	June 11, 1946	Xavier University
Howie Rader	1949	1949	G-F	6-1	190	March 29, 1921	Long Island University
Mark Radford	1982	1983	G	6-4	190	July 5, 1959	Oregon State University
Wayne Radford	1979	1979	G	6-3	205	May 29, 1956	Indiana University
Dino Radja	1994	1997	F-C	6-11	225	April 24, 1967	\N
Vladimir Radmanovic	2002	2013	F	6-10	227	November 19, 1980	\N
Aleksandar Radojevic	2000	2005	C	7-3	250	August 8, 1976	Barton County Community College
Frank Radovich	1962	1962	F	6-8	235	March 3, 1938	Indiana University
Moe Radovich	1953	1953	G	6-0	160	May 5, 1929	University of Wyoming
Miroslav Raduljica	2014	2015	C	7-0	250	January 5, 1988	\N
Ray Radziszewski	1958	1958	F	6-5	210	March 1, 1935	Saint Joseph's University
Ray Ragelis	1952	1952	F	6-4	205	December 10, 1928	Northwestern University
Sherwin Raiken	1953	1953	G	6-2	185	October 29, 1928	Villanova University
Ed Rains	1982	1983	F	6-7	190	December 24, 1956	University of South Alabama
Igor Rakocevic	2003	2003	G	6-3	183	March 29, 1978	\N
Kurt Rambis	1982	1995	F	6-8	213	February 25, 1958	Santa Clara University
Peter John Ramos	2005	2005	C	7-3	275	May 13, 1985	\N
Cal Ramsey	1960	1961	F	6-4	200	July 13, 1937	New York University
Frank Ramsey	1955	1964	F-G	6-3	190	July 13, 1931	University of Kentucky
Ray Ramsey	1949	1949	G-F	6-2	165	July 18, 1921	Bradley University
Mark Randall	1992	1995	F	6-8	235	September 30, 1967	University of Kansas
Chasson Randle	2017	2017	G	6-2	185	February 5, 1993	Stanford University
Julius Randle	2015	2018	F-C	6-9	250	November 29, 1994	University of Kentucky
Anthony Randolph	2009	2014	F	6-10	205	July 15, 1989	Louisiana State University
Shavlik Randolph	2006	2015	F	6-10	240	November 24, 1983	Duke University
Zach Randolph	2002	2018	F-C	6-9	260	July 16, 1981	Michigan State University
Wally Rank	1981	1981	F-G	6-6	220	March 1, 1958	San Jose State University
Kelvin Ransey	1981	1986	G	6-1	170	May 3, 1958	Ohio State University
Sam Ranzino	1952	1952	G	6-1	185	June 23, 1928	North Carolina State University
Bobby Rascoe	1968	1970	G-F	6-4	205	July 22, 1940	Western Kentucky University
Blair Rasmussen	1986	1993	C	7-0	250	November 13, 1962	University of Oregon
George Ratkovicz	1950	1955	C-F	6-6	220	November 13, 1922	\N
Ed Ratleff	1974	1978	F-G	6-6	195	March 29, 1950	California State University, Long Beach
Mike Ratliff	1973	1974	C	6-10	230	June 7, 1951	University of Wisconsin-Eau Claire
Theo Ratliff	1996	2011	C-F	6-10	225	April 17, 1973	University of Wyoming
Andy Rautins	2011	2011	G	6-4	190	November 2, 1986	Syracuse University
Leo Rautins	1984	1985	F	6-8	215	March 20, 1960	Syracuse University
Allan Ray	2007	2007	G	6-2	190	June 17, 1984	Villanova University
Clifford Ray	1972	1981	C	6-9	230	January 21, 1949	University of Oklahoma
Don Ray	1950	1950	F-C	6-5	190	July 8, 1921	Western Kentucky University
James Ray	1981	1983	F	6-8	215	July 27, 1957	Jacksonville University
Jim Ray	1957	1960	G	6-1	180	January 12, 1934	University of Toledo
Jimmy Rayl	1968	1969	G	6-2	175	June 21, 1941	Indiana University
Craig Raymond	1969	1973	C	6-11	235	April 5, 1945	Brigham Young University
Connie Rea	1954	1954	G-F	6-3	175	January 27, 1935	Centenary College of Louisiana
Joe Reaves	1974	1974	F	6-5	210	May 27, 1950	Bethel College
Zeljko Rebraca	2002	2006	C	7-0	257	April 9, 1972	\N
Eldridge Recasner	1995	2002	G	6-3	190	December 14, 1967	University of Washington
Michael Redd	2001	2012	G	6-6	220	August 24, 1979	Ohio State University
Frank Reddout	1954	1954	F	6-5	195	\N	Syracuse University
J.J. Redick	2007	2018	G	6-4	190	June 24, 1984	Duke University
Marlon Redmond	1979	1980	G	6-6	188	April 15, 1955	University of San Francisco
Hub Reed	1959	1965	C-F	6-9	215	October 4, 1936	Oklahoma City University
Justin Reed	2005	2007	F	6-8	240	January 16, 1982	University of Mississippi
Ron Reed	1966	1967	F	6-5	205	November 2, 1942	University of Notre Dame
Willie Reed	2016	2018	F-C	6-10	220	May 16, 1990	Saint Louis University
Willis Reed	1965	1974	C-F	6-9	235	June 25, 1942	Grambling State University
Bryant Reeves	1996	2001	C	7-0	275	June 8, 1973	Oklahoma State University
Khalid Reeves	1995	2000	G	6-3	199	July 15, 1972	University of Arizona
Richie Regan	1956	1958	G	6-2	180	November 30, 1930	Seton Hall University
Don Rehfeldt	1951	1952	F	6-7	210	January 7, 1927	University of Wisconsin
Billy Reid	1981	1981	G	6-5	190	September 10, 1957	University of San Francisco
Don Reid	1996	2003	F	6-8	250	December 30, 1973	Georgetown University
J.R. Reid	1990	2001	F	6-9	247	March 31, 1968	University of North Carolina
Jim Reid	1968	1968	F	6-6	210	August 3, 1945	Winston-Salem State University
Robert Reid	1978	1991	F-G	6-8	205	August 30, 1955	St. Mary's University
Ryan Reid	2012	2012	F	6-8	232	October 30, 1986	Florida State University
Jared Reiner	2005	2007	C	6-11	255	April 8, 1982	University of Iowa
Chick Reiser	1948	1950	G-F	5-11	165	December 17, 1914	New York University
Richard Rellford	1988	1988	F	6-6	230	February 16, 1964	University of Michigan
Terrence Rencher	1996	1996	G	6-3	185	February 19, 1973	University of Texas at Austin
John Rennicke	1952	1952	G	6-2	185	August 11, 1929	Drake University
Bob Rensberger	1947	1947	F	6-2	170	March 7, 1921	University of Notre Dame
Efthimi Rentzias	2003	2003	C	6-11	250	January 11, 1976	\N
Shawn Respert	1996	1999	G	6-1	195	February 6, 1972	Michigan State University
Kevin Restani	1975	1982	F-C	6-9	225	December 23, 1951	University of San Francisco
George Reynolds	1970	1970	G	6-4	195	November 23, 1947	University of Houston
Jerry Reynolds	1986	1996	G-F	6-8	200	December 23, 1962	Louisiana State University
Kendall Rhine	1968	1969	C	6-10	230	February 13, 1943	Rice University
Gene Rhodes	1953	1953	G	6-1	170	September 2, 1927	Western Kentucky University
Rodrick Rhodes	1998	2000	G-F	6-6	225	September 24, 1973	University of Southern California
Glen Rice	1990	2004	F	6-7	215	May 28, 1967	University of Michigan
Glen Rice	2014	2015	G	6-6	206	January 1, 1991	Georgia Institute of Technology
Chris Richard	2008	2010	F	6-9	270	December 25, 1984	University of Florida
Clint Richardson	1980	1987	G	6-3	195	August 7, 1956	Seattle University
Jason Richardson	2002	2015	G	6-6	220	January 20, 1981	Michigan State University
Jeremy Richardson	2007	2009	G-F	6-6	185	February 11, 1984	Delta State University
Josh Richardson	2016	2018	G	6-6	200	September 15, 1993	University of Tennessee
Malachi Richardson	2017	2018	G	6-6	205	January 5, 1996	Syracuse University
Micheal Ray Richardson	1979	1986	G-F	6-5	189	April 11, 1955	University of Montana
Norm Richardson	2002	2002	G	6-5	190	July 24, 1979	Hofstra University
Pooh Richardson	1990	1999	G	6-1	180	May 14, 1966	University of California, Los Angeles
Quentin Richardson	2001	2013	G	6-6	223	April 13, 1980	DePaul University
Mitch Richmond	1989	2002	G	6-5	215	June 30, 1965	Kansas State University
John Richter	1960	1960	F	6-9	225	March 12, 1937	North Carolina State University
Dick Ricketts	1956	1958	F-C	6-7	215	December 4, 1933	Duquesne University
Isaiah Rider	1994	2002	G	6-5	215	March 12, 1971	University of Nevada, Las Vegas
Jackie Ridgle	1972	1972	G	6-4	195	February 13, 1948	University of California
Luke Ridnour	2004	2015	G	6-2	175	February 13, 1981	University of Oregon
Mel Riebe	1947	1949	G-F	5-11	180	July 12, 1916	College of Wooster
Bob Riedy	1968	1968	F	6-6	215	August 26, 1945	Duke University
Jim Riffey	1951	1951	F	6-4	200	December 14, 1923	Tulane University
Antoine Rigaudeau	2003	2003	G	6-7	210	December 17, 1971	\N
Tom Riker	1973	1975	C-F	6-10	225	February 28, 1950	University of South Carolina
Bob Riley	1971	1971	F	6-9	235	July 6, 1948	Mount St. Mary's University
Eric Riley	1994	1999	C	7-0	245	June 2, 1970	University of Michigan
Pat Riley	1968	1976	G-F	6-4	205	March 20, 1945	University of Kentucky
Ron Riley	1973	1976	F	6-8	195	November 11, 1950	University of Southern California
Rich Rinaldi	1972	1974	G	6-3	195	August 3, 1949	Saint Peter's College
Mike Riordan	1969	1977	G-F	6-4	200	July 9, 1945	Providence College
Arnie Risen	1949	1958	C-F	6-9	200	October 9, 1924	Ohio State University
Tex Ritter	1949	1951	G-F	6-2	185	February 26, 1924	Eastern Kentucky University
Ramon Rivas	1989	1989	F-C	6-10	260	June 3, 1966	Temple University
Austin Rivers	2013	2018	G	6-4	200	August 1, 1992	Duke University
David Rivers	1989	1992	G	6-0	170	January 20, 1965	University of Notre Dame
Doc Rivers	1984	1996	G	6-4	185	October 13, 1961	Marquette University
Lee Robbins	1948	1949	F	6-3	175	February 11, 1922	University of Colorado
Red Robbins	1968	1975	F-C	6-8	190	September 30, 1944	University of Tennessee
Andre Roberson	2014	2018	G-F	6-7	210	December 4, 1991	University of Colorado
Anthony Roberson	2006	2009	G	6-2	180	February 14, 1983	University of Florida
Rick Roberson	1970	1976	C-F	6-9	231	July 7, 1947	University of Cincinnati
Terrance Roberson	2001	2001	F	6-7	215	December 30, 1976	California State University, Fresno
Anthony Roberts	1978	1984	F-G	6-5	185	April 15, 1955	Oral Roberts University
Bill Roberts	1949	1950	C	6-9	210	March 13, 1925	University of Wyoming
Brian Roberts	2013	2017	G	6-1	173	December 3, 1985	University of Dayton
Fred Roberts	1984	1997	F-C	6-10	218	August 14, 1960	Brigham Young University
Joe Roberts	1961	1968	F	6-6	214	May 18, 1936	Ohio State University
Lawrence Roberts	2006	2007	F	6-9	240	October 20, 1982	Mississippi State University
Marv Roberts	1972	1977	F-C	6-8	200	January 29, 1950	Utah State University
Stanley Roberts	1992	2000	C	7-0	285	February 7, 1970	Louisiana State University
Alvin Robertson	1985	1996	G	6-3	185	July 22, 1962	University of Arkansas
Oscar Robertson	1961	1974	G-F	6-5	205	November 24, 1938	University of Cincinnati
Ryan Robertson	2000	2000	G	6-5	190	October 2, 1976	University of Kansas
Tony Robertson	1978	1979	G	6-4	195	January 1, 1956	West Virginia University
Rick Robey	1979	1986	C-F	6-11	230	January 30, 1956	University of Kentucky
Bernard Robinson	2005	2007	G-F	6-6	210	December 26, 1980	University of Michigan
Chris Robinson	1997	1998	G	6-5	200	April 2, 1974	Western Kentucky University
Cliff Robinson	1980	1992	F	6-9	220	March 13, 1960	University of Southern California
Clifford Robinson	1990	2007	F-C	6-10	225	December 16, 1966	University of Connecticut
David Robinson	1990	2003	C	7-1	235	August 6, 1965	United States Naval Academy
Eddie Robinson	2000	2004	G-F	6-8	210	April 19, 1976	University of Central Oklahoma
Flynn Robinson	1967	1974	G	6-1	185	April 28, 1941	University of Wyoming
Glenn Robinson	1995	2005	F	6-7	225	January 10, 1973	Purdue University
Glenn Robinson	2015	2017	G-F	6-6	222	January 8, 1994	University of Michigan
Jackie Robinson	1979	1982	F	6-6	210	May 20, 1955	University of Nevada, Las Vegas
Jamal Robinson	2001	2001	F	6-7	212	December 27, 1973	University of Virginia
James Robinson	1994	2001	G	6-2	180	August 31, 1970	University of Alabama
Larry Robinson	1991	2002	F-G	6-3	180	January 11, 1968	Centenary College of Louisiana
Nate Robinson	2006	2016	G	5-9	180	May 31, 1984	University of Washington
Oliver Robinson	1983	1983	G	6-4	180	March 13, 1960	University of Alabama at Birmingham
Ronnie Robinson	1974	1975	F	6-8	200	March 9, 1951	University of Memphis
Rumeal Robinson	1991	1997	G	6-2	195	November 13, 1966	University of Michigan
Samuel Robinson	1971	1972	F	6-7	190	January 1, 1948	California State University, Long Beach
Thomas Robinson	2013	2017	F	6-10	237	March 17, 1991	University of Kansas
Truck Robinson	1975	1985	F-C	6-7	225	October 4, 1951	Tennessee State University
Wayne Robinson	1981	1981	F	6-8	217	April 19, 1958	Virginia Polytechnic Institute and State University
Wilbert Robinson	1974	1974	G	6-2	175	December 25, 1949	West Virginia University
Bill Robinzine	1976	1982	F	6-7	230	January 20, 1953	DePaul University
Dave Robisch	1972	1984	C-F	6-10	235	December 22, 1949	University of Kansas
Red Rocha	1948	1957	C-F	6-9	185	September 18, 1923	Oregon State University
John Roche	1972	1982	G	6-3	170	September 26, 1949	University of South Carolina
Gene Rock	1948	1948	G	5-9	155	November 4, 1921	University of Southern California
Jack Rocker	1948	1948	C-F	6-5	185	August 12, 1922	University of California
Guy Rodgers	1959	1970	G	6-0	185	September 1, 1935	Temple University
Dennis Rodman	1987	2000	F	6-7	210	May 13, 1961	Southeastern Oklahoma State University
Sergio Rodriguez	2007	2017	G	6-3	176	June 12, 1986	\N
Lou Roe	1996	1997	F	6-7	220	July 14, 1972	University of Massachusetts Amherst
Carlos Rogers	1995	2002	C-F	6-11	220	February 6, 1971	Tennessee State University
Harry Rogers	1976	1976	F	6-7	195	December 31, 1950	Saint Louis University
Johnny Rogers	1987	1988	F-C	6-10	225	December 30, 1963	University of California, Irvine
Marshall Rogers	1977	1977	G	6-1	190	August 27, 1953	University of Texas-Pan American
Rodney Rogers	1994	2005	F	6-7	235	June 20, 1971	Wake Forest University
Roy Rogers	1997	2000	F	6-10	235	August 19, 1973	University of Alabama
Willie Rogers	1969	1969	G-F	6-3	185	September 11, 1945	University of Oklahoma
Al Roges	1954	1955	G-F	6-4	195	October 25, 1930	Long Island University
Ken Rohloff	1964	1964	G	6-0	195	April 18, 1939	North Carolina State University
Kenny Rollins	1949	1953	G	6-0	168	September 14, 1923	University of Kentucky
Phil Rollins	1959	1961	G	6-2	185	January 19, 1934	University of Louisville
Tree Rollins	1978	1995	C	7-1	235	June 16, 1955	Clemson University
Lorenzo Romar	1981	1985	G	6-1	175	November 13, 1958	University of Washington
Rajon Rondo	2007	2018	G	6-1	186	February 22, 1986	University of Kentucky
Jerry Rook	1970	1970	F	6-5	219	October 27, 1943	Arkansas State University
Sean Rooks	1993	2004	C	6-10	250	September 9, 1969	University of Arizona
Derrick Rose	2009	2018	G	6-3	190	October 4, 1988	University of Memphis
Jalen Rose	1995	2007	G-F	6-8	210	January 30, 1973	University of Michigan
Malik Rose	1997	2009	F	6-7	250	November 23, 1974	Drexel University
Rob Rose	1989	1989	G	6-5	180	December 27, 1964	George Mason University
Petey Rosenberg	1947	1947	G	5-10	165	April 7, 1918	Saint Joseph's University
Lennie Rosenbluth	1958	1959	F	6-4	190	January 22, 1933	University of North Carolina
Hank Rosenstein	1947	1947	F	6-4	185	June 16, 1920	City College of New York
Dick Rosenthal	1955	1957	F-G	6-5	205	January 20, 1930	University of Notre Dame
Quinton Ross	2005	2011	G	6-6	195	April 30, 1981	Southern Methodist University
Terrence Ross	2013	2018	F-G	6-7	206	February 5, 1991	University of Washington
Doug Roth	1990	1990	C	6-11	255	August 24, 1967	University of Tennessee
Scott Roth	1988	1990	F	6-8	212	June 3, 1963	University of Wisconsin
Irv Rothenberg	1947	1949	C	6-7	215	December 31, 1921	Long Island University
Mickey Rottner	1947	1948	G	5-10	180	March 23, 1919	Loyola University of Chicago
Dan Roundfield	1976	1987	F-C	6-8	205	May 26, 1953	Central Michigan University
Giff Roux	1947	1949	F-C	6-5	195	June 28, 1923	University of Kansas
Ron Rowan	1987	1987	G	6-5	200	April 23, 1962	St. John's University
Curtis Rowe	1972	1979	F	6-7	225	July 2, 1949	University of California, Los Angeles
Jim Rowinski	1989	1990	F-C	6-8	250	January 4, 1961	Purdue University
Derrick Rowland	1986	1986	G	6-5	195	June 21, 1959	State University of New York at Potsdam
Brian Rowsom	1988	1990	F	6-9	220	October 23, 1965	University of North Carolina at Wilmington
Brandon Roy	2007	2013	G	6-6	215	July 23, 1984	University of Washington
Donald Royal	1990	1998	F	6-8	210	May 22, 1966	University of Notre Dame
Reggie Royals	1975	1975	C	6-10	200	September 18, 1950	Florida State University
Bob Royer	1950	1950	G	5-10	155	October 15, 1927	Indiana State University
Clifford Rozier	1995	1998	C-F	6-11	245	October 31, 1972	University of Louisville
Terry Rozier	2016	2018	G	6-2	190	March 17, 1994	University of Louisville
Ricky Rubio	2012	2018	G	6-4	194	October 21, 1990	\N
Guy Rucker	2003	2003	F-C	6-11	265	July 27, 1977	University of Iowa
Delaney Rudd	1990	1993	G	6-2	180	November 8, 1962	Wake Forest University
John Rudd	1979	1979	F	6-7	230	August 7, 1955	McNeese State University
Damjan Rudez	2015	2017	F	6-10	228	June 17, 1986	\N
John Rudometkin	1963	1965	F	6-6	205	June 6, 1940	University of Southern California
Michael Ruffin	2000	2009	F	6-9	246	January 21, 1977	University of Tulsa
Trevor Ruffin	1995	1996	G	6-1	185	September 26, 1970	University of Hawaii
Paul Ruffner	1971	1976	C-F	6-10	225	October 15, 1948	Brigham Young University
Joe Ruklick	1960	1962	F-C	6-9	220	August 3, 1938	Northwestern University
Jeff Ruland	1982	1993	C-F	6-10	240	December 16, 1958	Iona College
Bob Rule	1968	1975	C-F	6-9	220	June 29, 1944	Colorado State University
Jerry Rullo	1947	1950	G	5-10	165	June 23, 1923	Temple University
Stefano Rusconi	1996	1996	C-F	6-9	240	October 2, 1968	\N
Brandon Rush	2009	2017	G-F	6-6	220	July 7, 1985	University of Kansas
Kareem Rush	2003	2010	G	6-6	215	October 30, 1980	University of Missouri
Bill Russell	1957	1969	C	6-10	215	February 12, 1934	University of San Francisco
Bryon Russell	1994	2006	F	6-7	225	December 31, 1970	California State University, Long Beach
Campy Russell	1975	1985	F	6-8	215	January 12, 1952	University of Michigan
Cazzie Russell	1967	1978	F-G	6-5	218	June 7, 1944	University of Michigan
D'Angelo Russell	2016	2018	G	6-5	195	February 23, 1996	Ohio State University
Frank Russell	1973	1973	G	6-3	180	April 17, 1949	University of Detroit Mercy
Pierre Russell	1972	1973	F-G	6-4	190	December 13, 1949	University of Kansas
Rubin Russell	1968	1968	G	6-2	180	November 7, 1944	University of North Texas
Walker Russell	1983	1988	G	6-5	195	October 26, 1960	Western Michigan University
Walker Russell	2012	2012	G	6-0	170	October 6, 1982	Jacksonville State University
Arvydas Sabonis	1996	2003	C	7-3	279	December 19, 1964	\N
Domantas Sabonis	2017	2018	F-C	6-11	240	May 3, 1996	Gonzaga University
Robert Sacre	2013	2016	C	7-0	270	June 6, 1989	Gonzaga University
Ed Sadowski	1947	1950	C	6-5	240	July 11, 1917	Seton Hall University
Kenny Sailors	1947	1951	G	5-10	175	January 14, 1921	University of Wyoming
John Salley	1987	2000	F-C	6-11	230	May 16, 1964	Georgia Institute of Technology
John Salmons	2003	2015	G	6-7	210	December 12, 1979	University of Miami
Al Salvadori	1968	1968	F	6-9	220	May 6, 1945	University of South Carolina
Kevin Salvadori	1997	1998	C	7-0	231	December 30, 1970	University of North Carolina
Soumaila Samake	2001	2003	C	7-0	230	March 18, 1978	\N
Cheikh Samb	2008	2009	C	7-1	245	October 22, 1984	\N
JaKarr Sampson	2015	2018	G-F	6-9	214	March 20, 1993	St. John's University
Jamal Sampson	2003	2007	F-C	6-11	235	May 15, 1983	University of California
Ralph Sampson	1984	1992	C-F	7-4	228	July 7, 1960	University of Virginia
Samardo Samuels	2011	2013	F	6-9	260	January 9, 1989	University of Louisville
Pepe Sanchez	2001	2003	G	6-4	195	May 8, 1977	Temple University
Al Sanders	1973	1973	F	6-7	240	January 1, 1950	Louisiana State University
Frankie Sanders	1979	1981	F-G	6-6	200	January 23, 1957	Southern University and A&M College
Jeff Sanders	1990	1993	F	6-8	225	January 14, 1966	Georgia Southern University
Larry Sanders	2011	2017	C-F	6-11	235	November 21, 1988	Virginia Commonwealth University
Melvin Sanders	2006	2006	G-F	6-5	210	January 3, 1981	Oklahoma State University
Mike Sanders	1983	1993	F-G	6-6	210	May 7, 1960	University of California, Los Angeles
Tom Sanders	1961	1973	F	6-6	210	November 8, 1938	New York University
Ron Sanford	1972	1972	F	6-9	215	June 11, 1946	University of New Mexico
Daniel Santiago	2001	2005	C	7-1	256	June 24, 1976	Saint Vincent College
Bob Santini	1956	1956	F	6-5	190	February 17, 1935	Iona College
Wayne Sappleton	1985	1985	F	6-9	215	November 17, 1960	Loyola University of Chicago
Dario Saric	2017	2018	F	6-10	223	April 8, 1994	\N
Jason Sasser	1997	1999	F	6-7	225	January 13, 1974	Texas Tech University
Jeryl Sasser	2002	2003	G	6-6	200	February 13, 1979	Southern Methodist University
Tomas Satoransky	2017	2018	G	6-7	210	October 30, 1991	\N
Kenny Satterfield	2002	2003	G	6-2	186	April 10, 1981	University of Cincinnati
Pep Saul	1950	1955	G-F	6-2	185	February 16, 1924	Seton Hall University
Woody Sauldsberry	1958	1966	F-C	6-7	220	July 11, 1934	Texas Southern University
Glynn Saulters	1969	1969	G	6-2	175	February 10, 1945	University of Louisiana at Monroe
Fred Saunders	1975	1978	F	6-7	210	June 13, 1951	Syracuse University
Don Savage	1952	1957	F-G	6-3	205	April 9, 1928	LeMoyne College
Predrag Savovic	2003	2003	G	6-6	225	May 21, 1976	University of Hawaii
Alan Sawyer	1951	1951	F	6-5	195	January 1, 1928	University of California, Los Angeles
Brian Scalabrine	2002	2012	F	6-9	241	March 18, 1978	University of Southern California
Alex Scales	2006	2006	G	6-4	185	July 3, 1978	University of Oregon
DeWayne Scales	1981	1984	F	6-8	208	December 28, 1958	Louisiana State University
Frank Schade	1973	1973	G	6-1	170	January 22, 1950	University of Wisconsin-Eau Claire
Ben Schadler	1948	1948	F	6-0	185	March 9, 1924	Northwestern University
Herm Schaefer	1949	1950	G-F	6-0	175	December 20, 1918	Indiana University
Billy Schaeffer	1974	1976	F	6-5	200	December 11, 1951	St. John's University
Bob Schafer	1956	1957	G	6-3	195	\N	Villanova University
Ben Scharnus	1947	1949	F	6-2	173	December 11, 1917	Seton Hall University
Marv Schatzman	1950	1950	F	6-5	200	February 18, 1927	Saint Louis University
Fred Schaus	1950	1954	F	6-5	205	June 30, 1925	West Virginia University
Danny Schayes	1982	1999	C-F	6-11	235	May 10, 1959	Syracuse University
Dolph Schayes	1950	1964	F-C	6-8	220	May 19, 1928	New York University
Ossie Schectman	1947	1947	G	6-0	175	March 30, 1919	Long Island University
Steve Scheffler	1991	1997	C-F	6-9	250	September 3, 1967	Purdue University
Tom Scheffler	1985	1985	C	6-11	240	October 27, 1954	Purdue University
Dave Schellhase	1967	1968	G	6-3	205	October 14, 1944	Purdue University
Luke Schenscher	2006	2007	C	7-1	255	December 31, 1982	Georgia Institute of Technology
Herb Scherer	1951	1952	C	6-9	212	December 21, 1928	Long Island University
Dwayne Schintzius	1991	1999	C	7-1	260	October 14, 1968	University of Florida
Dale Schlueter	1969	1978	C	6-10	225	November 12, 1945	Colorado State University
Otto Schnellbacher	1949	1949	F-G	6-4	185	April 15, 1923	University of Kansas
Dick Schnittker	1951	1958	F	6-5	200	May 27, 1928	Ohio State University
Russ Schoene	1983	1989	F-C	6-10	210	April 16, 1960	University of Tennessee at Chattanooga
Dave Scholz	1970	1970	F	6-8	220	April 12, 1948	University of Illinois at Urbana-Champaign
Milt Schoon	1947	1950	C	6-7	230	February 25, 1922	Valparaiso University
Detlef Schrempf	1986	2001	F-C	6-9	214	January 21, 1963	University of Washington
Dennis Schroder	2014	2018	G	6-1	172	September 15, 1993	\N
Howie Schultz	1950	1953	C-F	6-6	200	July 3, 1922	Hamline University
Dick Schulz	1947	1950	F-G	6-2	192	January 3, 1917	University of Wisconsin
Roger Schurig	1968	1968	G	6-3	185	April 3, 1942	Vanderbilt University
John Schweitz	1985	1987	G	6-6	210	April 19, 1960	University of Richmond
Luis Scola	2008	2017	F	6-9	240	April 30, 1980	\N
Fred Scolari	1947	1955	G	5-10	180	March 1, 1922	University of San Francisco
Alvin Scott	1978	1985	F-G	6-7	185	September 14, 1955	Oral Roberts University
Brent Scott	1997	1997	F-C	6-10	250	June 15, 1971	Rice University
Byron Scott	1984	1997	G	6-3	195	March 28, 1961	Arizona State University
Charlie Scott	1971	1980	G-F	6-5	175	December 15, 1948	University of North Carolina
Dennis Scott	1991	2000	F	6-8	229	September 5, 1968	Georgia Institute of Technology
James Scott	1997	1997	F	6-6	180	June 6, 1972	St. John's University
Mike Scott	2013	2018	F	6-8	237	July 16, 1988	University of Virginia
Ray Scott	1962	1972	F-C	6-9	215	July 12, 1938	University of Portland
Shawnelle Scott	1997	2002	C	6-10	250	June 16, 1972	St. John's University
Willie Scott	1970	1970	F	6-5	210	May 22, 1947	Alabama State University
Paul Scranton	1968	1968	F	6-5	230	April 30, 1944	California State Polytechnic University, Pomona
Carey Scurry	1986	1988	F	6-7	188	December 4, 1962	Long Island University
Bruce Seals	1974	1978	F	6-8	210	June 18, 1953	Xavier University of Louisiana
Shea Seals	1998	1998	G	6-5	210	August 26, 1975	University of Tulsa
Malik Sealy	1993	2000	G	6-8	190	February 1, 1970	St. John's University
Ed Searcy	1976	1976	F	6-6	210	April 17, 1952	St. John's University
Kenny Sears	1956	1964	F	6-9	198	August 17, 1933	Santa Clara University
Wayne See	1950	1950	G	6-3	190	November 3, 1923	Northern Arizona University
Thabo Sefolosha	2007	2018	G-F	6-7	220	May 2, 1984	\N
Rony Seikaly	1989	1999	C	6-11	230	May 10, 1965	Syracuse University
Glen Selbo	1950	1950	G-F	6-3	196	March 29, 1926	University of Wisconsin
Josh Selby	2012	2013	G	6-2	183	March 27, 1991	University of Kansas
Wayne Selden	2017	2018	G-F	6-5	230	September 30, 1994	University of Kansas
Brad Sellers	1987	1993	C-F	7-0	210	December 17, 1962	Ohio State University
Phil Sellers	1977	1977	F-G	6-4	195	November 20, 1953	Rutgers University
Rollie Seltz	1950	1950	G-F	5-10	165	January 25, 1924	Hamline University
Lester Selvage	1968	1970	G	6-1	175	March 7, 1943	Truman State University
Frank Selvy	1955	1964	G-F	6-3	180	November 9, 1932	Furman University
Jim Seminoff	1947	1950	G-F	6-2	190	September 1, 1922	University of Southern California
Mouhamed Sene	2007	2009	C-F	6-11	230	May 12, 1986	\N
George Senesky	1947	1954	G	6-2	179	April 4, 1922	Saint Joseph's University
Kevin Seraphin	2011	2017	F	6-9	285	December 7, 1989	\N
Ansu Sesay	2002	2005	F	6-9	225	July 29, 1976	University of Mississippi
Ramon Sessions	2008	2018	G	6-3	190	April 11, 1986	University of Nevada, Reno
Ha Seung-Jin	2005	2006	C	7-3	305	August 4, 1985	\N
Tom Sewell	1985	1985	G	6-5	185	March 11, 1962	Lamar University
Paul Seymour	1948	1960	G-F	6-1	180	January 30, 1928	University of Toledo
Nick Shaback	1947	1947	G	5-11	180	September 10, 1918	\N
Lynn Shackelford	1970	1970	F	6-5	190	August 27, 1947	University of California, Los Angeles
Charles Shackleford	1989	1999	F-C	6-10	225	April 22, 1966	North Carolina State University
Carl Shaeffer	1950	1951	F-G	6-3	185	October 25, 1924	University of Alabama
Lee Shaffer	1962	1964	F	6-7	220	February 23, 1939	University of North Carolina
Mustafa Shakur	2011	2014	G	6-3	190	August 18, 1984	University of Arizona
God Shammgod	1998	1998	G	6-0	169	April 29, 1976	Providence College
Earl Shannon	1947	1949	G-F	5-11	170	November 23, 1921	University of Rhode Island
Howie Shannon	1949	1950	G-F	6-2	175	June 10, 1923	Kansas State University
Chuck Share	1952	1960	C	6-11	235	March 14, 1927	Bowling Green State University
Bill Sharman	1951	1961	G	6-1	175	May 25, 1926	University of Southern California
Walter Sharpe	2009	2009	F	6-9	245	July 18, 1986	University of Alabama at Birmingham
John Shasky	1989	1991	C	6-11	235	July 31, 1964	University of Minnesota
Ron Shavlik	1957	1958	F	6-8	200	December 4, 1933	North Carolina State University
Brian Shaw	1989	2003	G	6-6	190	March 22, 1966	University of California, Santa Barbara
Casey Shaw	1999	1999	C	6-11	260	July 20, 1975	University of Toledo
Bob Shea	1947	1947	F	6-2	194	September 11, 1924	University of Rhode Island
Fred Sheffield	1947	1947	F	6-2	165	November 5, 1923	University of Utah
Craig Shelton	1981	1982	F	6-7	210	May 1, 1957	Georgetown University
Lonnie Shelton	1977	1986	F-C	6-8	240	October 19, 1955	Oregon State University
Tornike Shengelia	2013	2014	F	6-9	217	October 5, 1991	\N
Billy Shepherd	1973	1975	G	5-10	160	November 18, 1949	Butler University
Jeffrey Sheppard	1999	1999	G	6-3	190	September 29, 1974	University of Kentucky
Steve Sheppard	1978	1979	F	6-6	215	March 21, 1954	University of Maryland
Ed Sherod	1983	1983	G	6-2	170	September 13, 1959	Virginia Commonwealth University
Charley Shipp	1950	1950	G-F	6-1	200	December 3, 1913	Catholic University of America
Paul Shirley	2003	2005	F-C	6-10	230	December 23, 1977	Iowa State University
Gene Short	1976	1976	F	6-6	200	August 7, 1953	Jackson State University
Purvis Short	1979	1990	F-G	6-7	210	July 2, 1957	Jackson State University
Dexter Shouse	1990	1990	G	6-2	200	March 24, 1963	University of South Alabama
Dick Shrider	1949	1949	G	6-2	190	February 7, 1923	Ohio University
Gene Shue	1955	1964	G	6-2	170	December 18, 1931	University of Maryland
John Shumate	1976	1981	F-C	6-9	235	April 6, 1952	University of Notre Dame
Iman Shumpert	2012	2018	G	6-5	220	June 26, 1990	Georgia Institute of Technology
Alexey Shved	2013	2015	G	6-6	190	December 16, 1988	\N
Pascal Siakam	2017	2018	F	6-9	230	February 4, 1994	New Mexico State University
Sam Sibert	1973	1973	F	6-7	215	February 11, 1949	Kentucky State University
Mark Sibley	1974	1974	G	6-2	175	November 13, 1950	Northwestern University
Jerry Sichting	1981	1990	G	6-1	168	November 29, 1956	Purdue University
Donald Sidle	1969	1972	F-C	6-8	215	June 21, 1946	University of Oklahoma
Larry Siegfried	1964	1972	F	6-3	190	May 22, 1939	Ohio State University
Ralph Siewert	1947	1947	C	7-1	230	December 31, 1923	Dakota Wesleyan University
Jack Sikma	1978	1991	C-F	6-11	230	November 14, 1955	Illinois Wesleyan University
James Silas	1973	1982	G	6-1	180	February 11, 1949	Stephen F. Austin State University
Paul Silas	1965	1980	F-C	6-7	220	July 12, 1943	Creighton University
Xavier Silas	2012	2012	G	6-5	205	January 22, 1988	Northern Illinois University
Garret Siler	2011	2011	C	6-11	305	October 25, 1986	Augusta State University
Mike Silliman	1971	1971	F	6-6	225	May 5, 1944	United States Military Academy
Wayne Simien	2006	2007	F	6-9	255	March 9, 1983	University of Kansas
Ben Simmons	2018	2018	G-F	6-10	230	July 20, 1996	Louisiana State University
Bobby Simmons	2002	2012	G-F	6-7	210	June 2, 1980	DePaul University
Cedric Simmons	2007	2009	F	6-9	235	January 3, 1986	North Carolina State University
Connie Simmons	1947	1956	C-F	6-8	222	March 15, 1925	\N
Grant Simmons	1968	1969	G	6-3	190	March 7, 1943	University of Nebraska
Johnny Simmons	1947	1947	G	6-1	184	July 7, 1924	New York University
Jonathon Simmons	2016	2018	G-F	6-6	195	September 14, 1989	University of Houston
Kobi Simmons	2018	2018	G	6-5	166	July 4, 1997	University of Arizona
Lionel Simmons	1991	1997	F	6-7	210	November 14, 1968	La Salle University
Miles Simon	1999	1999	G	6-3	202	November 21, 1975	University of Arizona
Walter Simon	1968	1974	F-G	6-6	200	December 1, 1939	Benedict College
Dickey Simpkins	1995	2002	F	6-9	248	April 6, 1972	Providence College
Ralph Simpson	1971	1980	G-F	6-5	200	August 10, 1949	Michigan State University
Alvin Sims	1999	1999	G	6-4	235	October 18, 1974	University of Louisville
Bob Sims	1962	1968	G-F	6-5	220	October 9, 1938	Pepperdine University
Courtney Sims	2008	2009	C	6-10	245	October 21, 1983	University of Michigan
Doug Sims	1969	1969	F	6-7	195	June 29, 1943	Kent State University
Henry Sims	2013	2016	C	6-10	248	March 27, 1990	Georgetown University
Scott Sims	1978	1978	G	6-1	170	April 18, 1955	University of Missouri
Kyle Singler	2013	2018	F	6-8	228	May 4, 1988	Duke University
Sean Singletary	2009	2009	G	6-0	185	September 6, 1985	University of Virginia
Chris Singleton	2012	2014	F	6-8	230	November 21, 1989	Florida State University
James Singleton	2006	2012	F	6-8	216	July 20, 1981	Murray State University
McKinley Singleton	1987	1987	G	6-5	175	October 29, 1961	University of Alabama at Birmingham
Zeke Sinicola	1952	1954	G	5-10	165	January 25, 1929	Niagara University
Charlie Sitton	1985	1985	F	6-8	210	July 3, 1962	Oregon State University
Peyton Siva	2014	2014	G	6-0	185	October 24, 1990	University of Louisville
Scott Skiles	1987	1996	G	6-1	180	March 5, 1964	Michigan State University
Al Skinner	1975	1980	G	6-3	190	June 16, 1952	University of Massachusetts Amherst
Brian Skinner	1999	2012	F	6-9	255	May 19, 1976	Baylor University
Tal Skinner	1975	1976	F-G	6-5	195	September 10, 1952	University of Maryland Eastern Shore
Whitey Skoog	1952	1957	G	5-11	180	November 2, 1926	University of Minnesota
Jeff Slade	1963	1963	F	6-6	220	March 1, 1941	Kenyon College
Reggie Slater	1995	2003	F	6-7	215	August 27, 1970	University of Wyoming
Jim Slaughter	1952	1952	C	6-11	210	May 13, 1928	University of South Carolina
Jose Slaughter	1983	1983	G	6-5	205	September 9, 1960	University of Portland
Tamar Slay	2003	2005	G	6-8	215	April 2, 1980	Marshall University
Donald Sloan	2012	2016	G	6-3	205	January 15, 1988	Texas A&M University
Jerry Sloan	1966	1976	G-F	6-5	195	March 28, 1942	University of Evansville
Uros Slokar	2007	2007	F	6-10	238	May 14, 1983	\N
Tom Sluby	1985	1985	G	6-4	200	February 18, 1962	University of Notre Dame
Keith Smart	1989	1989	G	6-1	175	September 21, 1964	Indiana University
Marcus Smart	2015	2018	G	6-4	220	March 6, 1994	Oklahoma State University
Belus Smawley	1947	1952	G-F	6-1	195	March 20, 1918	Appalachian State University
Jack Smiley	1949	1950	F-G	6-3	190	December 22, 1922	University of Illinois at Urbana-Champaign
Adrian Smith	1962	1972	G	6-1	180	October 5, 1936	University of Kentucky
Al Smith	1972	1976	G	6-1	185	January 15, 1947	Bradley University
Bill Smith	1962	1962	G-F	6-5	190	April 26, 1939	Saint Peter's College
Bingo Smith	1970	1980	F-G	6-5	195	February 26, 1946	University of Tulsa
Bobby Smith	1960	1962	G	6-4	190	August 20, 1937	West Virginia University
Charles Smith	1989	1997	F-C	6-10	230	July 16, 1965	University of Pittsburgh
Charles Smith	1990	1996	G	6-1	160	November 29, 1967	Georgetown University
Charles Smith	1998	2006	G	6-4	194	August 22, 1975	University of New Mexico
Chris Smith	1993	1995	G	6-3	190	May 17, 1970	University of Connecticut
Chris Smith	2014	2014	G	6-2	200	October 13, 1987	University of Louisville
Clinton Smith	1987	1991	F	6-6	210	January 19, 1964	Cleveland State University
Craig Smith	2007	2012	F	6-7	250	November 10, 1983	Boston College
Deb Smith	1947	1947	F	6-3	180	January 7, 1920	University of Utah
Dennis Smith	2018	2018	G	6-3	195	November 25, 1997	North Carolina State University
Derek Smith	1983	1991	G-F	6-6	205	November 1, 1961	University of Louisville
Don Smith	1949	1949	G-F	6-2	190	July 27, 1920	University of Minnesota
Don Smith	1975	1975	G	6-0	160	October 10, 1951	University of Dayton
Donta Smith	2005	2006	G-F	6-7	215	November 27, 1983	Southeastern Illinois College
Doug Smith	1992	1996	F	6-10	220	September 17, 1969	University of Missouri
Ed Smith	1954	1954	F	6-6	180	July 5, 1929	Harvard University
Elmore Smith	1972	1979	C	7-0	250	May 9, 1949	Kentucky State University
Garfield Smith	1971	1973	C-F	6-9	235	November 18, 1945	Eastern Kentucky University
Greg Smith	1969	1976	F	6-5	195	January 28, 1947	Western Kentucky University
Greg Smith	2012	2016	C	6-10	250	January 8, 1991	California State University, Fresno
Ish Smith	2011	2018	G	6-0	175	July 5, 1988	Wake Forest University
J.R. Smith	2005	2018	G-F	6-6	225	September 9, 1985	\N
Jabari Smith	2001	2005	C	6-11	250	February 12, 1977	Louisiana State University
Jason Smith	2008	2018	F-C	7-0	245	March 2, 1986	Colorado State University
Jerry Smith	2012	2012	G	6-2	190	September 26, 1987	University of Louisville
Jim Smith	1982	1983	F	6-9	225	April 12, 1958	Ohio State University
Joe Smith	1996	2011	F	6-10	225	July 26, 1975	University of Maryland
John Smith	1969	1970	C	7-0	235	May 24, 1944	University of Southern Colorado
Josh Smith	2005	2018	F	6-9	225	December 5, 1985	\N
Keith Smith	1987	1987	G	6-3	180	March 9, 1964	Loyola Marymount University
Ken Smith	1976	1976	F	6-7	185	July 12, 1953	University of Tulsa
Kenny Smith	1988	1997	G	6-3	170	March 8, 1965	University of North Carolina
LaBradford Smith	1992	1994	G	6-3	200	April 3, 1969	University of Louisville
Larry Smith	1981	1993	F-C	6-8	215	January 18, 1958	Alcorn State University
Leon Smith	2002	2004	C	6-10	235	November 2, 1980	\N
Michael Smith	1990	1995	F	6-10	225	May 19, 1965	Brigham Young University
Michael Smith	1995	2001	F	6-8	230	March 28, 1972	Providence College
Mike Smith	2001	2001	F	6-8	195	April 15, 1976	University of Louisiana at Monroe
Nolan Smith	2012	2013	G	6-2	185	July 25, 1988	Duke University
Otis Smith	1987	1992	G-F	6-5	210	January 30, 1964	Jacksonville University
Pete Smith	1973	1973	F	6-6	205	\N	Valdosta State University
Phil Smith	1975	1983	G	6-4	185	April 22, 1952	University of San Francisco
Randy Smith	1972	1983	G-F	6-3	180	December 12, 1948	State University of New York College at Buffalo
Jayson Tatum	2018	2018	F	6-8	205	March 3, 1998	Duke University
Reggie Smith	1993	1994	C	6-10	240	August 21, 1970	Texas Christian University
Robert Smith	1978	1985	G	5-11	165	March 10, 1955	University of Nevada, Las Vegas
Russ Smith	2015	2016	G	6-0	165	April 19, 1991	University of Louisville
Sam Smith	1968	1971	F	6-7	230	January 27, 1944	Kentucky Wesleyan College
Sam Smith	1979	1980	G	6-4	200	January 8, 1955	University of Nevada, Las Vegas
Steve Smith	1992	2005	G	6-7	200	March 31, 1969	Michigan State University
Steven Smith	2007	2007	F	6-8	235	April 12, 1983	La Salle University
Stevin Smith	1997	1997	G	6-2	208	January 24, 1972	Arizona State University
Theron Smith	2004	2005	F	6-8	225	October 3, 1980	Ball State University
Tony Smith	1991	2001	G	6-3	185	June 14, 1968	Marquette University
William Smith	1972	1973	C	7-0	220	February 14, 1949	Syracuse University
Willie Smith	1977	1980	G	6-2	170	October 26, 1953	University of Missouri
Rik Smits	1989	2000	C	7-4	250	August 23, 1966	Marist College
Mike Smrek	1986	1992	C	7-0	250	August 31, 1962	Canisius College
Joe Smyth	1954	1954	F	6-3	215	May 22, 1929	Niagara University
Tony Snell	2014	2018	G-F	6-7	200	November 10, 1991	University of New Mexico
Eric Snow	1996	2008	G	6-3	190	April 24, 1973	Michigan State University
Dick Snyder	1967	1979	G-F	6-5	207	February 1, 1944	Davidson College
Kirk Snyder	2005	2008	G	6-6	225	June 5, 1983	University of Nevada, Reno
Chips Sobek	1950	1950	G-F	6-0	180	February 10, 1920	University of Notre Dame
Ricky Sobers	1976	1986	G	6-3	198	January 15, 1953	University of Nevada, Las Vegas
Ron Sobie	1957	1960	G	6-3	185	September 21, 1934	DePaul University
Mike Sojourner	1975	1977	C-F	6-9	225	October 16, 1953	University of Utah
Willie Sojourner	1972	1975	C-F	6-8	225	September 10, 1948	Weber State University
Will Solomon	2002	2009	G	6-1	185	July 20, 1978	Clemson University
Willie Somerset	1966	1969	G	5-8	170	March 17, 1942	Duquesne University
Darius Songaila	2004	2011	F	6-9	248	February 14, 1978	Wake Forest University
Dave Sorenson	1971	1973	F	6-8	225	July 8, 1948	Ohio State University
James Southerland	2014	2014	F	6-8	215	April 28, 1990	Syracuse University
Gino Sovran	1947	1947	F-G	6-2	175	December 17, 1924	University of Detroit Mercy
Pape Sow	2005	2007	F	6-10	250	November 22, 1981	California State University, Fullerton
Ken Spain	1971	1971	C	6-9	225	October 6, 1946	University of Houston
Jim Spanarkel	1980	1984	G-F	6-5	190	June 28, 1957	Duke University
Vassilis Spanoulis	2007	2007	G	6-4	195	August 7, 1982	\N
Daniel Sparks	1969	1970	F	6-8	200	April 17, 1945	Weber State University
Guy Sparrow	1958	1960	F	6-6	218	November 2, 1932	University of Detroit Mercy
Rory Sparrow	1981	1992	G	6-2	175	June 12, 1958	Villanova University
Odie Spears	1949	1957	G	6-5	205	June 17, 1924	Western Kentucky University
Art Spector	1947	1950	F	6-4	200	October 17, 1920	Villanova University
Marreese Speights	2009	2018	C-F	6-10	255	August 4, 1987	University of Florida
Andre Spencer	1993	1994	F	6-6	210	July 20, 1964	Northern Arizona University
Elmore Spencer	1993	1997	C	7-0	270	December 6, 1969	University of Nevada, Las Vegas
Felton Spencer	1991	2002	C	7-0	265	January 15, 1968	University of Louisville
Lou Spicer	1947	1947	F	6-2	195	November 12, 1922	Syracuse University
Craig Spitzer	1968	1968	C	7-0	225	December 18, 1945	Tulane University
Tiago Splitter	2011	2017	F-C	6-11	245	January 1, 1985	\N
Art Spoelstra	1955	1958	C	6-9	220	September 11, 1932	Western Kentucky University
Bruce Spraggins	1968	1968	F	6-5	188	\N	Virginia Union University
Latrell Sprewell	1993	2005	G	6-5	190	September 8, 1970	University of Alabama
Larry Spriggs	1982	1986	F	6-7	230	September 8, 1959	Howard University
Jim Springer	1949	1949	C	6-9	235	June 17, 1926	\N
Jim Spruill	1949	1949	G	6-2	225	February 26, 1923	Rice University
Ryan Stack	1999	2000	F	6-11	215	July 24, 1975	University of South Carolina
Jerry Stackhouse	1996	2013	G-F	6-6	218	November 5, 1974	University of North Carolina
Kevin Stacom	1975	1982	G	6-3	185	September 4, 1951	Providence College
Erv Staggs	1970	1970	F-G	6-6	195	\N	Cheyney University of Pennsylvania
Bud Stallworth	1973	1977	F-G	6-5	190	January 18, 1950	University of Kansas
Dave Stallworth	1966	1975	F-C	6-7	200	December 20, 1941	Wichita State University
Ed Stanczak	1950	1951	F	6-1	185	August 15, 1921	\N
Terence Stansbury	1985	1987	G	6-5	170	February 27, 1961	Temple University
John Starks	1989	2002	G	6-3	180	August 10, 1965	Oklahoma State University
Keith Starr	1977	1977	G-F	6-6	190	March 14, 1954	University of Pittsburgh
Nik Stauskas	2015	2018	G	6-6	205	October 7, 1993	University of Michigan
Larry Staverman	1959	1964	F	6-7	205	October 11, 1936	Thomas More College
Larry Steele	1972	1980	G-F	6-5	180	May 5, 1949	University of Kentucky
Matt Steigenga	1997	1997	F	6-7	225	March 27, 1970	Michigan State University
Vladimir Stepania	1999	2004	C	7-0	236	May 8, 1976	\N
D.J. Stephens	2014	2014	G-F	6-5	188	December 19, 1990	University of Memphis
Everette Stephens	1989	1991	G	6-2	175	October 21, 1966	Purdue University
Jack Stephens	1956	1956	G-F	6-3	185	May 18, 1933	University of Notre Dame
Joe Stephens	1997	2000	F	6-7	210	January 28, 1973	University of Arkansas at Little Rock
Lance Stephenson	2011	2018	G-F	6-5	230	September 5, 1990	University of Cincinnati
Alex Stepheson	2016	2016	F	6-10	270	August 7, 1987	University of Southern California
Brook Steppe	1983	1989	G-F	6-5	195	November 7, 1959	Georgia Institute of Technology
Barry Stevens	1993	1993	G-F	6-5	195	January 17, 1963	Iowa State University
Wayne Stevens	1960	1960	F	6-3	185	June 19, 1936	University of Cincinnati
DeShawn Stevenson	2001	2013	G	6-5	210	April 3, 1981	\N
Dennis Stewart	1971	1971	F	6-6	220	April 11, 1947	University of Michigan
Kebu Stewart	1998	1998	F	6-8	239	December 19, 1973	California State University, Bakersfield
Larry Stewart	1992	1997	F	6-8	220	September 21, 1968	Coppin State University
Michael Stewart	1998	2005	C	6-10	230	April 25, 1975	University of California
Norm Stewart	1957	1957	F	6-5	205	January 20, 1935	University of Missouri
Greg Stiemsma	2012	2015	C	6-11	260	September 26, 1985	University of Wisconsin
Steve Stipanovich	1984	1988	C	6-11	245	November 17, 1960	University of Missouri
Bryant Stith	1993	2002	G	6-5	208	December 10, 1970	University of Virginia
Sam Stith	1962	1962	G	6-2	185	July 22, 1937	St. Bonaventure University
Tom Stith	1963	1963	F	6-5	210	January 21, 1939	St. Bonaventure University
Alex Stivrins	1986	1993	F	6-8	220	November 29, 1962	University of Colorado
David Stockton	2015	2015	G	5-11	165	June 24, 1991	Gonzaga University
John Stockton	1985	2003	G	6-1	170	March 26, 1962	Gonzaga University
Peja Stojakovic	1999	2011	F-G	6-9	220	June 9, 1977	\N
Ed Stokes	1998	1998	C	7-0	264	September 3, 1971	University of Arizona
Greg Stokes	1986	1990	F-C	6-10	220	August 5, 1963	University of Iowa
Jarnell Stokes	2015	2017	F-C	6-9	263	January 7, 1994	University of Tennessee
Maurice Stokes	1956	1958	F-C	6-7	232	June 17, 1933	Saint Francis University
Art Stolkey	1947	1947	G	6-1	180	October 23, 1920	University of Detroit Mercy
Randy Stoll	1968	1968	C	6-7	235	\N	Washington State University
Diamond Stone	2017	2017	C	6-11	255	February 10, 1997	University of Maryland
George Stone	1969	1972	F	6-7	195	February 9, 1946	Marshall University
Julyan Stone	2012	2018	G	6-6	200	December 7, 1988	University of Texas at El Paso
Awvee Storey	2005	2008	G-F	6-6	222	April 18, 1977	Arizona State University
Damon Stoudamire	1996	2008	G	5-10	171	September 3, 1973	University of Arizona
Salim Stoudamire	2006	2008	G	6-1	179	October 11, 1982	University of Arizona
Amar'e Stoudemire	2003	2016	F-C	6-10	245	November 16, 1982	\N
Paul Stovall	1973	1974	F	6-4	215	August 16, 1948	Arizona State University
D.J. Strawberry	2008	2008	G	6-5	201	June 15, 1985	University of Maryland
Joe Strawder	1966	1968	C	6-10	235	September 21, 1940	Bradley University
Bill Stricker	1971	1971	F	6-9	210	January 22, 1948	University of the Pacific
Erick Strickland	1997	2005	G	6-3	210	November 25, 1973	University of Nebraska
Mark Strickland	1995	2003	F	6-9	210	July 14, 1970	Temple University
Rod Strickland	1989	2005	G	6-3	175	July 11, 1966	DePaul University
Roger Strickland	1964	1964	F	6-5	200	September 4, 1940	Jacksonville University
John Stroeder	1988	1989	F	6-10	260	July 24, 1958	University of Montana
Derek Strong	1992	2001	F	6-8	220	February 9, 1968	Xavier University
Lamont Strothers	1992	1993	G	6-4	190	May 10, 1968	Christopher Newport University
John Stroud	1981	1981	F	6-7	215	October 29, 1957	University of Mississippi
Red Stroud	1968	1968	G	6-0	160	May 2, 1941	Mississippi State University
Rodney Stuckey	2008	2017	G	6-5	210	April 21, 1986	Eastern Washington University
Gene Stump	1948	1950	F-G	6-2	185	November 13, 1923	DePaul University
Stan Stutz	1947	1949	G-F	5-10	170	April 14, 1920	University of Rhode Island
Gary Suiter	1971	1971	C-F	6-9	225	January 18, 1945	Midwestern State University
Jared Sullinger	2013	2017	F	6-9	260	March 4, 1992	Ohio State University
DaJuan Summers	2010	2013	F	6-8	230	January 24, 1988	Georgetown University
Barry Sumpter	1989	1989	F-C	6-11	215	November 11, 1965	Austin Peay State University
Don Sunderlage	1954	1955	G	6-1	180	December 20, 1929	University of Illinois at Urbana-Champaign
Bruno Sundov	1999	2005	C	7-2	220	February 10, 1980	\N
Jon Sundvold	1984	1992	G	6-2	170	July 2, 1961	University of Missouri
Bob Sura	1996	2005	G	6-5	200	March 25, 1973	Florida State University
Dick Surhoff	1953	1954	F	6-4	210	November 16, 1929	Long Island University
George Sutor	1968	1970	C	6-8	235	September 14, 1943	La Salle University
Dane Suttle	1984	1985	G	6-3	190	August 9, 1961	Pepperdine University
Greg Sutton	1992	1996	G	6-2	170	December 3, 1967	Oral Roberts University
Keith Swagerty	1969	1970	F	6-7	235	October 30, 1945	University of the Pacific
Bennie Swain	1959	1959	F	6-8	220	December 16, 1933	Texas Southern University
Caleb Swanigan	2018	2018	F	6-8	250	April 18, 1997	Purdue University
Norm Swanson	1954	1954	F	6-6	210	October 4, 1930	University of Detroit Mercy
Dan Swartz	1963	1963	F	6-4	215	December 23, 1934	Morehead State University
Mike Sweetney	2004	2007	F	6-8	275	October 25, 1982	Georgetown University
Robert Swift	2005	2009	C	7-0	245	December 3, 1985	\N
Skeeter Swift	1970	1974	G	6-3	204	June 19, 1946	East Tennessee State University
Stromile Swift	2001	2009	F	6-9	225	November 21, 1979	Louisiana State University
Aaron Swinson	1995	1995	F	6-5	230	January 9, 1971	Auburn University
Pape Sy	2011	2011	F	6-7	225	April 5, 1988	\N
Buck Sydnor	1947	1947	G	5-10	175	September 19, 1921	Western Kentucky University
Larry Sykes	1996	1996	F	6-9	255	April 11, 1973	Xavier University
Brett Szabo	1997	1997	C	6-11	230	February 1, 1968	Augustana College (SD)
Wally Szczerbiak	2000	2009	F	6-7	244	March 5, 1977	Miami University
Walt Szczerbiak	1972	1972	F	6-6	210	August 21, 1949	George Washington University
Zan Tabak	1995	2001	C	7-0	245	June 15, 1970	\N
Yuta Tabuse	2005	2005	G	5-9	165	October 5, 1980	Brigham Young University Hawaii
Chris Taft	2006	2006	F	6-10	260	March 10, 1985	University of Pittsburgh
Sid Tanenbaum	1948	1949	G	6-0	160	October 8, 1925	New York University
Dragan Tarlac	2001	2001	C	6-10	260	May 9, 1973	\N
Roy Tarpley	1987	1995	C-F	6-11	230	November 28, 1964	University of Michigan
Levern Tart	1968	1971	G-F	6-2	195	June 1, 1942	Bradley University
Earl Tatum	1977	1980	G-F	6-5	185	July 26, 1953	Marquette University
Edy Tavares	2016	2017	C	7-3	260	March 22, 1992	\N
Anthony Taylor	1989	1989	G	6-4	175	November 30, 1965	University of Oregon
Brian Taylor	1973	1982	G	6-2	185	June 9, 1951	Princeton University
Donell Taylor	2006	2007	G	6-6	180	July 26, 1982	University of Alabama at Birmingham
Fatty Taylor	1970	1977	G	6-0	175	March 13, 1946	La Salle University
Fred Taylor	1971	1972	G-F	6-5	180	February 5, 1948	University of Texas-Pan American
Isaiah Taylor	2017	2018	G	6-3	170	July 11, 1994	University of Texas at Austin
Jay Taylor	1990	1990	G	6-3	190	October 3, 1967	Eastern Illinois University
Jeff Taylor	1983	1987	G	6-4	175	January 1, 1960	Texas Tech University
Jeffery Taylor	2013	2015	F	6-7	225	May 23, 1989	Vanderbilt University
Jermaine Taylor	2010	2011	G	6-4	210	December 8, 1986	University of Central Florida
Johnny Taylor	1998	2000	F	6-9	220	June 4, 1974	University of Tennessee at Chattanooga
Leonard Taylor	1990	1990	F	6-8	220	May 2, 1966	University of California
Maurice Taylor	1998	2007	F	6-9	260	October 30, 1976	University of Michigan
Mike Taylor	2009	2009	G	6-2	165	January 21, 1986	Iowa State University
Oliver Taylor	1971	1974	G-F	6-2	194	March 7, 1947	University of Houston
Ronald Taylor	1970	1972	C	7-1	265	November 21, 1947	University of Southern California
Tyshawn Taylor	2013	2014	G	6-3	185	April 12, 1990	University of Kansas
Vince Taylor	1983	1983	G-F	6-5	180	September 11, 1960	Duke University
Terry Teagle	1983	1993	F-G	6-5	195	April 10, 1960	Baylor University
Jeff Teague	2010	2018	G	6-2	186	June 10, 1988	Wake Forest University
Marquis Teague	2013	2014	G	6-2	189	February 28, 1993	University of Kentucky
Mirza Teletovic	2013	2018	F	6-9	242	September 18, 1985	\N
Sebastian Telfair	2005	2015	G	6-0	165	June 9, 1985	\N
Collis Temple	1975	1975	F	6-8	220	November 8, 1952	Louisiana State University
Garrett Temple	2010	2018	G	6-6	195	May 8, 1986	Louisiana State University
Milos Teodosic	2018	2018	G	6-5	196	March 19, 1987	\N
Ira Terrell	1977	1979	F-C	6-8	200	June 19, 1954	Southern Methodist University
Carlos Terry	1981	1983	G-F	6-5	210	June 22, 1956	Winston-Salem State University
Chuck Terry	1973	1977	F	6-6	215	September 27, 1950	California State University, Long Beach
Claude Terry	1973	1978	G-F	6-4	195	January 12, 1950	Stanford University
Jason Terry	2000	2018	G	6-2	185	September 15, 1977	University of Arizona
Hasheem Thabeet	2010	2014	C	7-3	263	February 16, 1987	University of Connecticut
Tom Thacker	1964	1971	G-F	6-2	170	November 2, 1939	University of Cincinnati
Floyd Theard	1970	1970	G	6-1	170	September 5, 1944	Kentucky State University
Daniel Theis	2018	2018	C	6-9	215	April 4, 1992	\N
Reggie Theus	1979	1991	G	6-7	190	October 13, 1957	University of Nevada, Las Vegas
Peter Thibeaux	1985	1986	F	6-7	210	October 3, 1961	Saint Mary's College of California
Bill Thieben	1957	1958	F-C	6-7	215	March 28, 1935	Hofstra University
Justus Thigpen	1970	1974	G	6-1	160	August 13, 1947	Weber State University
David Thirdkill	1983	1987	F-G	6-7	195	April 12, 1960	Bradley University
Adonis Thomas	2014	2014	F	6-7	200	March 25, 1993	University of Memphis
Billy Thomas	2005	2008	G	6-4	208	December 23, 1975	University of Kansas
Carl Thomas	1992	1998	G	6-4	175	October 3, 1969	Eastern Michigan University
Charles Thomas	1992	1992	G	6-3	175	October 3, 1969	Eastern Michigan University
Etan Thomas	2002	2011	F	6-9	256	April 1, 1978	Syracuse University
Irving Thomas	1991	1991	F	6-8	225	January 2, 1966	Florida State University
Isaiah Thomas	2012	2017	G	5-9	185	February 7, 1989	University of Washington
Isiah Thomas	1982	1994	G	6-1	180	April 30, 1961	Indiana University
Jamel Thomas	2000	2001	F	6-6	215	March 25, 1973	Providence College
James Thomas	2005	2006	F	6-8	235	November 22, 1980	University of Texas at Austin
Jim Thomas	1984	1991	G	6-3	190	October 19, 1960	Indiana University
Joe Thomas	1971	1971	F	6-6	205	March 9, 1948	Marquette University
John Thomas	1998	2006	F	6-9	265	September 8, 1975	University of Minnesota
Kenny Thomas	2000	2010	F	6-7	261	July 25, 1977	University of New Mexico
Kurt Thomas	1996	2013	F	6-9	230	October 4, 1972	Texas Christian University
Lance Thomas	2012	2018	F	6-8	235	April 24, 1988	Duke University
Malcolm Thomas	2012	2015	F	6-9	225	November 8, 1988	San Diego State University
Ronald Thomas	1973	1976	F	6-6	215	November 19, 1950	University of Louisville
Terry Thomas	1976	1976	F	6-8	220	August 20, 1953	University of Detroit Mercy
Tim Thomas	1998	2010	F	6-10	230	February 26, 1977	Villanova University
Tyrus Thomas	2007	2015	F	6-9	215	August 17, 1986	Louisiana State University
Willis Thomas	1968	1968	G	6-2	185	\N	Tennessee State University
Trey Thompkins	2012	2012	F	6-10	245	May 20, 1990	University of Georgia
Bernard Thompson	1985	1989	F-G	6-6	210	August 30, 1962	California State University, Fresno
Billy Thompson	1987	1992	F	6-7	195	December 1, 1963	University of Louisville
Brooks Thompson	1995	1998	G	6-4	193	July 19, 1970	Oklahoma State University
Corny Thompson	1983	1983	F	6-8	225	February 5, 1960	University of Connecticut
David Thompson	1976	1984	G-F	6-4	195	July 13, 1954	North Carolina State University
Dijon Thompson	2006	2007	G-F	6-7	195	February 23, 1983	University of California, Los Angeles
George Thompson	1970	1975	G	6-2	200	November 29, 1947	Marquette University
Hollis Thompson	2014	2017	G-F	6-8	206	April 3, 1991	Georgetown University
Jack Thompson	1969	1969	G	6-1	185	March 26, 1946	University of South Carolina
Jason Thompson	2009	2016	F-C	6-11	250	July 21, 1986	Rider University
John Thompson	1965	1966	F	6-10	225	September 2, 1941	Providence College
Kevin Thompson	1994	1994	C-F	6-11	260	February 7, 1971	North Carolina State University
Klay Thompson	2012	2018	G-F	6-7	215	February 8, 1990	Washington State University
LaSalle Thompson	1983	1997	C-F	6-10	245	June 23, 1961	University of Texas at Austin
Mychal Thompson	1979	1991	C-F	6-10	226	January 30, 1955	University of Minnesota
Mychel Thompson	2012	2012	G	6-6	211	June 1, 1988	Pepperdine University
Paul Thompson	1984	1986	G-F	6-6	210	May 25, 1961	Tulane University
Stephen Thompson	1992	1992	G	6-4	185	December 2, 1968	Syracuse University
Tristan Thompson	2012	2018	F-C	6-9	238	March 13, 1991	University of Texas at Austin
Skip Thoren	1968	1970	C	6-10	230	April 5, 1943	University of Illinois at Urbana-Champaign
Rod Thorn	1964	1971	G	6-4	195	May 23, 1941	West Virginia University
Al Thornton	2008	2011	F	6-8	220	December 7, 1983	Florida State University
Bob Thornton	1986	1996	F-C	6-10	225	July 10, 1962	University of California, Irvine
Dallas Thornton	1969	1970	G	6-4	190	September 1, 1946	Kentucky Wesleyan College
Marcus Thornton	2010	2017	G	6-4	205	June 5, 1987	Louisiana State University
Sindarius Thornwell	2018	2018	G	6-5	212	November 15, 1994	University of South Carolina
Otis Thorpe	1985	2001	F-C	6-9	225	August 5, 1962	Providence College
Sedale Threatt	1984	1997	G	6-2	175	September 10, 1961	West Virginia University Institute of Technology
Nate Thurmond	1964	1977	C-F	6-11	225	July 25, 1941	Bowling Green State University
Mel Thurston	1948	1948	G	6-0	175	January 16, 1919	Canisius College
Hal Tidrick	1949	1949	F-G	6-1	190	August 4, 1915	Washington & Jefferson College
Dan Tieman	1963	1963	G	6-0	185	November 30, 1940	Thomas More College
Darren Tillis	1983	1984	C-F	6-11	215	February 23, 1960	Cleveland State University
Jack Tingle	1948	1949	F	6-4	205	December 30, 1924	University of Kentucky
George Tinsley	1970	1972	F	6-5	205	September 19, 1946	Kentucky Wesleyan College
Jamaal Tinsley	2002	2014	G	6-3	195	February 28, 1978	Iowa State University
Wayman Tisdale	1986	1997	F-C	6-9	240	June 9, 1964	University of Oklahoma
Mike Tobey	2017	2017	C	7-0	260	October 10, 1994	University of Virginia
Mike Todorovich	1950	1951	F-C	6-5	220	June 11, 1923	University of Wyoming
Ray Tolbert	1982	1989	F	6-9	225	September 10, 1958	Indiana University
Tom Tolbert	1989	1995	F-C	6-7	235	October 16, 1965	University of Arizona
Anthony Tolliver	2009	2018	F-C	6-8	240	June 1, 1985	Creighton University
Dean Tolson	1975	1978	F	6-8	190	November 25, 1951	University of Arkansas
Rudy Tomjanovich	1971	1981	F	6-8	218	November 24, 1948	University of Michigan
Andrew Toney	1981	1988	G	6-3	178	November 23, 1957	University of Louisiana at Lafayette
Sedric Toney	1986	1994	G	6-2	178	April 13, 1962	University of Dayton
Andy Tonkovich	1949	1949	G	6-1	185	November 1, 1922	Marshall University
Andy Toolson	1991	1996	G-F	6-6	210	January 19, 1966	Brigham Young University
Jack Toomay	1948	1950	C-F	6-6	215	August 9, 1922	University of the Pacific
Bernard Toone	1980	1980	F	6-9	210	July 14, 1956	Marquette University
Irv Torgoff	1947	1949	F	6-2	192	March 6, 1917	Long Island University
Gene Tormohlen	1963	1970	C-F	6-8	230	May 12, 1937	University of Tennessee
Oscar Torres	2002	2003	F	6-6	210	December 18, 1976	\N
Bill Tosheff	1952	1954	G	6-1	175	June 2, 1926	Indiana University
Bob Tough	1949	1950	G-F	6-0	185	August 28, 1920	St. John's University
Axel Toupane	2016	2017	G-F	6-7	197	July 23, 1992	\N
Monte Towe	1976	1977	G	5-7	150	September 27, 1953	North Carolina State University
Keith Tower	1994	1997	C-F	6-11	250	May 15, 1970	University of Notre Dame
Blackie Towery	1949	1950	F-C	6-4	210	June 20, 1920	Western Kentucky University
Linton Townes	1983	1985	F-G	6-7	190	November 30, 1959	James Madison University
Karl-Anthony Towns	2016	2018	C-F	7-0	244	November 15, 1995	University of Kentucky
Raymond Townsend	1979	1982	G	6-3	175	December 20, 1955	University of California, Los Angeles
George Trapp	1972	1977	F-C	6-8	205	July 11, 1948	California State University, Long Beach
John Trapp	1969	1973	F	6-7	210	October 2, 1945	University of Nevada, Las Vegas
Robert Traylor	1999	2005	F	6-8	284	February 1, 1977	University of Michigan
Gary Trent	1996	2004	F	6-8	250	September 22, 1974	Ohio University
Jeff Trepagnier	2002	2004	G	6-4	200	July 11, 1979	University of Southern California
John Tresvant	1965	1973	F-C	6-7	215	November 6, 1939	Seattle University
Dick Triptow	1949	1950	G-F	6-0	170	November 3, 1922	DePaul University
Kelly Tripucka	1982	1991	F-G	6-6	220	February 16, 1959	University of Notre Dame
Ansley Truitt	1973	1973	C	6-9	215	August 24, 1950	University of California
Cezary Trybanski	2003	2004	C	7-2	240	September 22, 1979	\N
Jake Tsakalidis	2001	2007	C	7-2	285	June 10, 1979	\N
John Tschogl	1973	1975	F	6-6	206	April 25, 1950	University of California, Santa Barbara
Lou Tsioropoulos	1957	1959	F	6-5	190	August 31, 1930	University of Kentucky
Nikoloz Tskitishvili	2003	2006	F	7-0	225	April 14, 1983	\N
Al Tucker	1968	1972	F	6-8	190	February 24, 1943	Oklahoma Baptist University
Alando Tucker	2008	2010	F	6-6	205	February 11, 1984	University of Wisconsin
Anthony Tucker	1995	1995	F	6-8	220	April 4, 1969	Wake Forest University
Jim Tucker	1955	1957	F	6-7	185	December 11, 1932	Duquesne University
P.J. Tucker	2007	2018	F	6-6	245	May 5, 1985	University of Texas at Austin
Trent Tucker	1983	1993	G	6-5	193	December 20, 1959	University of Minnesota
Ronny Turiaf	2006	2015	F	6-10	249	January 13, 1983	Gonzaga University
Mirsad Turkcan	2000	2000	F	6-9	236	June 7, 1976	\N
Hedo Turkoglu	2001	2015	F	6-10	220	March 19, 1979	\N
Andre Turner	1987	1992	G	5-11	160	December 13, 1964	University of Memphis
Bill Turner	1968	1973	F	6-7	220	February 18, 1944	University of Akron
Elston Turner	1982	1989	G-F	6-5	190	June 10, 1959	University of Mississippi
Evan Turner	2011	2018	G	6-7	220	October 27, 1988	Ohio State University
Gary Turner	1968	1968	F	6-7	200	\N	Texas Christian University
Henry Turner	1990	1995	G-F	6-7	200	August 18, 1966	California State University, Fullerton
Herschell Turner	1968	1968	G	6-2	195	March 29, 1938	University of Nebraska
Jack Turner	1955	1955	F-G	6-4	170	June 29, 1930	Western Kentucky University
Jack Turner	1962	1962	G-F	6-5	200	June 5, 1939	University of Louisville
Jeff Turner	1985	1996	F-C	6-9	230	April 9, 1962	Vanderbilt University
John Turner	1992	1992	F	6-8	245	November 30, 1967	Phillips University
Myles Turner	2016	2018	C-F	6-11	243	March 24, 1996	University of Texas at Austin
Wayne Turner	2000	2000	G	6-2	190	March 22, 1976	University of Kentucky
Melvin Turpin	1985	1990	C	6-11	240	December 28, 1960	University of Kentucky
Dave Twardzik	1973	1980	G	6-1	175	September 20, 1950	Old Dominion University
Jack Twyman	1956	1966	F-G	6-6	210	May 11, 1934	University of Cincinnati
B.J. Tyler	1995	1995	G	6-1	185	April 30, 1971	University of Texas at Austin
Jeremy Tyler	2012	2014	C	6-10	260	June 21, 1991	\N
Terry Tyler	1979	1989	F-G	6-7	215	October 30, 1956	University of Detroit Mercy
Charlie Tyra	1958	1962	C-F	6-8	230	August 16, 1935	University of Louisville
Edwin Ubiles	2012	2012	G	6-6	204	November 26, 1986	Siena College
Ekpe Udoh	2011	2018	C-F	6-10	240	May 20, 1987	Baylor University
Ime Udoka	2004	2011	F	6-6	215	August 9, 1977	Portland State University
Beno Udrih	2005	2017	G	6-3	205	July 5, 1982	\N
Roko Ukic	2009	2010	G	6-5	183	May 12, 1984	\N
Tyler Ulis	2017	2018	G	5-10	150	January 5, 1996	University of Kentucky
Wes Unseld	1969	1981	C-F	6-7	245	March 14, 1946	University of Louisville
Hal Uplinger	1954	1954	G	6-4	185	September 30, 1929	Long Island University
Kelvin Upshaw	1989	1991	G	6-2	180	January 24, 1963	University of Utah
Jarrod Uthoff	2017	2017	F	6-9	221	May 19, 1993	University of Iowa
Ben Uzoh	2011	2012	G	6-3	205	March 19, 1988	University of Tulsa
Stephen Vacendak	1968	1970	G	6-1	185	August 15, 1944	Duke University
Jonas Valanciunas	2013	2018	C	7-0	265	May 6, 1992	\N
Darnell Valentine	1982	1991	G	6-1	183	February 3, 1959	University of Kansas
Denzel Valentine	2017	2018	G	6-6	212	November 16, 1993	Michigan State University
Ronnie Valentine	1981	1981	F	6-7	210	November 27, 1957	Old Dominion University
John Vallely	1971	1972	G	6-3	185	October 3, 1948	University of California, Los Angeles
Dick Van Arsdale	1966	1977	G-F	6-5	210	February 22, 1943	Indiana University
Tom Van Arsdale	1966	1977	F-G	6-5	202	February 22, 1943	Indiana University
Butch Van Breda Kolff	1947	1950	G-F	6-3	185	October 28, 1922	New York University
Jan Van Breda Kolff	1975	1983	F-G	6-7	195	December 16, 1951	Vanderbilt University
Nick Van Exel	1994	2006	G	6-1	170	November 27, 1971	University of Cincinnati
Keith Van Horn	1998	2006	F	6-10	220	October 23, 1975	University of Utah
Norm Van Lier	1970	1979	G	6-1	173	April 1, 1947	Saint Francis University
Dennis Van Zant	1976	1976	F	6-9	210	June 1, 1952	Azusa Pacific University
Gene Vance	1948	1952	G-F	6-3	195	February 25, 1923	University of Illinois at Urbana-Champaign
Logan Vander Velden	1996	1996	F	6-8	215	April 3, 1971	University of Wisconsin-Green Bay
Ernie Vandeweghe	1950	1956	F-G	6-3	195	September 12, 1928	Colgate University
Kiki Vandeweghe	1981	1993	F	6-8	220	August 1, 1958	University of California, Los Angeles
Nick Vanos	1986	1987	C	7-1	255	April 13, 1963	Santa Clara University
David Vanterpool	2001	2001	G	6-5	200	March 31, 1973	St. Bonaventure University
Fred VanVleet	2017	2018	G	6-0	195	February 25, 1994	Wichita State University
Ratko Varda	2002	2002	C	7-1	260	May 6, 1979	\N
Anderson Varejao	2005	2017	F-C	6-10	273	September 28, 1982	\N
Jarvis Varnado	2013	2014	F	6-9	230	March 1, 1988	Mississippi State University
Greivis Vasquez	2011	2017	G	6-6	217	January 16, 1987	University of Maryland
Chico Vaughn	1963	1970	G	6-2	190	February 19, 1940	Southern Illinois University
David Vaughn	1975	1976	C	6-11	220	June 4, 1952	Oral Roberts University
David Vaughn	1996	1999	F	6-9	240	March 23, 1973	University of Memphis
Jacque Vaughn	1998	2009	G	6-1	190	February 11, 1975	University of Kansas
Rashad Vaughn	2016	2018	G	6-6	202	August 16, 1996	University of Nevada, Las Vegas
Virgil Vaughn	1947	1947	F-C	6-4	205	May 15, 1918	Western Kentucky University
Loy Vaught	1991	2001	F	6-9	230	February 27, 1968	University of Michigan
Bob Verga	1968	1974	G	6-1	190	September 7, 1945	Duke University
Pete Verhoeven	1982	1987	F	6-9	215	February 15, 1959	California State University, Fresno
Jan Vesely	2012	2014	F	6-11	240	April 24, 1990	\N
Gundars Vetra	1993	1993	F	6-6	195	May 22, 1967	\N
Joao Vianna	1992	1992	F	6-9	215	November 15, 1966	\N
Charlie Villanueva	2006	2016	F	6-11	232	August 24, 1984	University of Connecticut
Jay Vincent	1982	1990	F	6-7	220	June 10, 1959	Michigan State University
Sam Vincent	1986	1992	G	6-2	185	May 18, 1963	Michigan State University
Marcus Vinicius	2007	2008	F	6-8	225	May 31, 1984	\N
Fred Vinson	1995	2000	G	6-4	190	January 28, 1971	Georgia Institute of Technology
Claude Virden	1973	1973	F	6-6	195	November 25, 1947	Murray State University
Gary Voce	1990	1990	F	6-9	240	November 24, 1965	University of Notre Dame
Floyd Volker	1950	1950	F-C	6-4	205	June 21, 1921	University of Wyoming
Alexander Volkov	1990	1992	C	6-10	218	March 28, 1964	\N
Whitey Von Nieda	1950	1950	G-F	6-1	170	June 19, 1922	Pennsylvania State University
Noah Vonleh	2015	2018	F	6-10	240	August 24, 1995	Indiana University
Jake Voskuhl	2001	2009	C	6-11	245	November 1, 1977	University of Connecticut
Danny Vranes	1982	1988	F	6-7	210	October 29, 1958	University of Utah
Slavko Vranes	2004	2004	C	7-5	275	January 30, 1983	\N
Stojko Vrankovic	1991	1999	C	7-2	260	January 22, 1964	\N
Brett Vroman	1981	1981	C	7-0	220	December 25, 1955	University of Nevada, Las Vegas
Jackson Vroman	2005	2006	F-C	6-10	220	June 6, 1981	Iowa State University
Nikola Vucevic	2012	2018	C	7-0	260	October 24, 1990	University of Southern California
Sasha Vujacic	2005	2017	G	6-7	195	March 8, 1984	\N
Dwyane Wade	2004	2018	G	6-4	220	January 17, 1982	Marquette University
Mark Wade	1988	1990	G	5-11	160	October 15, 1965	University of Nevada, Las Vegas
Von Wafer	2006	2012	G	6-5	210	July 21, 1985	Florida State University
Clint Wager	1950	1950	C-F	6-6	210	January 20, 1920	Saint Mary's University of Minnesota
Dajuan Wagner	2003	2007	G	6-2	200	February 4, 1983	University of Memphis
Danny Wagner	1950	1950	G	6-0	170	August 1, 1922	University of Texas at Austin
Milt Wagner	1988	1991	G	6-5	185	February 20, 1963	University of Louisville
Phillip Wagner	1969	1969	G	6-2	190	December 18, 1945	Georgia Institute of Technology
Dion Waiters	2013	2018	G	6-4	225	December 10, 1991	Syracuse University
Granville Waiters	1984	1988	C	6-11	225	January 8, 1961	Ohio State University
Andre Wakefield	1979	1980	G	6-3	175	January 11, 1955	Loyola University of Chicago
Neal Walk	1970	1977	C	6-10	220	July 29, 1948	University of Florida
Andy Walker	1977	1977	G	6-4	190	March 25, 1955	Niagara University
Antoine Walker	1997	2008	F	6-8	224	August 12, 1976	University of Kentucky
Brady Walker	1949	1952	F-C	6-6	205	March 15, 1921	Brigham Young University
Chet Walker	1963	1975	F-G	6-6	212	February 22, 1940	Bradley University
Darrell Walker	1984	1993	G	6-4	180	March 9, 1961	University of Arkansas
Foots Walker	1975	1984	G	6-0	184	May 21, 1951	State University of West Georgia
Henry Walker	2009	2015	F	6-6	220	October 9, 1987	Kansas State University
Horace Walker	1962	1962	F	6-3	210	April 17, 1937	Michigan State University
Jimmy Walker	1968	1976	G	6-3	195	April 8, 1944	Providence College
Kemba Walker	2012	2018	G	6-1	172	May 8, 1990	University of Connecticut
Kenny Walker	1987	1995	F	6-8	210	August 18, 1964	University of Kentucky
Phil Walker	1978	1978	G	6-3	180	March 20, 1956	Millersville University of Pennsylvania
Samaki Walker	1997	2006	F	6-9	240	February 25, 1976	University of Louisville
Wally Walker	1977	1984	F	6-7	190	July 18, 1954	University of Virginia
John Wall	2011	2018	G	6-4	195	September 6, 1990	University of Kentucky
Ben Wallace	1997	2012	F-C	6-9	240	September 10, 1974	Virginia Union University
Gerald Wallace	2002	2015	F	6-7	215	July 23, 1982	University of Alabama
John Wallace	1997	2004	F	6-8	225	February 9, 1974	Syracuse University
Rasheed Wallace	1996	2013	F-C	6-10	225	September 17, 1974	University of North Carolina
Red Wallace	1947	1947	G	6-1	185	July 12, 1918	University of Scranton
Dwight Waller	1969	1972	F	6-6	220	October 5, 1945	Tennessee State University
Jamie Waller	1988	1988	G	6-4	215	November 20, 1964	Virginia Union University
Taurean Waller-Prince	2017	2018	F	6-8	220	March 22, 1994	Baylor University
Jim Walsh	1958	1958	F	6-4	195	August 29, 1930	Stanford University
Matt Walsh	2006	2006	G-F	6-6	205	December 2, 1982	University of Florida
Rex Walters	1994	2000	G	6-4	190	March 12, 1970	University of Kansas
Paul Walther	1950	1955	G-F	6-2	160	March 23, 1927	University of Tennessee
Isaac Walthour	1954	1954	G	5-11	163	August 25, 1930	\N
Bill Walton	1975	1987	C-F	6-11	210	November 5, 1952	University of California, Los Angeles
Derrick Walton	2018	2018	G	6-1	189	April 3, 1995	University of Michigan
Lloyd Walton	1977	1981	G	6-0	160	November 23, 1953	Marquette University
Luke Walton	2004	2013	F	6-8	235	March 28, 1980	University of Arizona
Bobby Wanzer	1949	1957	G	6-0	170	June 4, 1921	Seton Hall University
Perry Warbington	1975	1975	G	6-2	165	September 7, 1952	Georgia Southern University
Charlie Ward	1995	2005	G	6-2	190	October 12, 1970	Florida State University
Gerry Ward	1964	1967	G	6-4	195	September 6, 1941	Boston College
Henry Ward	1976	1977	G-F	6-4	195	January 30, 1952	Jackson State University
Casper Ware	2014	2014	G	5-10	175	January 17, 1990	California State University, Long Beach
Jim Ware	1967	1969	F	6-7	210	May 2, 1944	Oklahoma City University
Ben Warley	1963	1970	F-G	6-5	200	September 4, 1936	Tennessee State University
Bob Warlick	1966	1970	G-F	6-5	200	March 20, 1941	Pepperdine University
Cornell Warner	1971	1977	F-C	6-9	220	August 12, 1948	Jackson State University
Bob Warren	1969	1976	G	6-5	190	July 17, 1946	Vanderbilt University
John Warren	1970	1974	G-F	6-3	180	July 7, 1947	St. John's University
T.J. Warren	2015	2018	F	6-8	230	September 5, 1993	North Carolina State University
Willie Warren	2011	2011	G	6-4	203	October 22, 1989	University of Oklahoma
Bryan Warrick	1983	1986	G	6-5	195	July 22, 1959	Saint Joseph's University
Hakim Warrick	2006	2013	F	6-9	219	July 8, 1982	Syracuse University
Chris Washburn	1987	1988	C	6-11	225	May 13, 1965	North Carolina State University
Bobby Washington	1970	1972	G	5-11	175	July 11, 1947	Eastern Kentucky University
Darius Washington	2008	2008	G	6-2	195	December 6, 1985	University of Memphis
Donald Washington	1975	1976	F	6-8	210	April 22, 1952	University of North Carolina
Duane Washington	1988	1993	G	6-4	195	August 31, 1964	Middle Tennessee State University
Eric Washington	1998	1999	G	6-4	190	March 23, 1974	University of Alabama
Jim Washington	1966	1976	F-C	6-6	210	July 1, 1943	Villanova University
Kermit Washington	1974	1988	F-C	6-8	230	September 17, 1951	American University
Pearl Washington	1987	1989	G	6-2	190	January 6, 1964	Syracuse University
Richard Washington	1977	1982	F-C	6-11	220	July 15, 1955	University of California, Los Angeles
Stan Washington	1975	1975	G	6-4	190	January 23, 1952	University of San Diego
Trooper Washington	1968	1973	F-C	6-7	215	April 21, 1944	Cheyney University of Pennsylvania
Wilson Washington	1978	1979	F-C	6-9	227	August 3, 1955	Old Dominion University
Darryl Watkins	2008	2012	C	6-11	258	November 8, 1984	Syracuse University
Bobby Watson	1955	1955	G	6-0	160	March 22, 1930	University of Kentucky
C.J. Watson	2008	2017	G	6-2	175	April 17, 1984	University of Tennessee
Earl Watson	2002	2014	G	6-1	195	June 12, 1979	University of California, Los Angeles
Jamie Watson	1995	1999	F	6-7	190	February 23, 1972	University of South Carolina
Ron Watts	1966	1967	F	6-6	210	May 21, 1943	Wake Forest University
Samuel Watts	1971	1971	G	6-3	185	March 14, 1948	Florida Agricultural and Mechanical University
Slick Watts	1974	1979	G	6-1	175	July 22, 1951	Xavier University of Louisiana
Maalik Wayns	2013	2014	G	6-2	200	May 2, 1991	Villanova University
David Wear	2015	2015	F	6-10	230	September 21, 1990	University of California, Los Angeles
Travis Wear	2015	2015	F	6-10	230	September 21, 1990	University of California, Los Angeles
Clarence Weatherspoon	1993	2005	F	6-6	240	September 8, 1970	University of Southern Mississippi
Nick Weatherspoon	1974	1980	F	6-7	195	July 20, 1950	University of Illinois at Urbana-Champaign
Kyle Weaver	2009	2011	G	6-6	201	February 18, 1986	Washington State University
Jeff Webb	1971	1972	G	6-4	170	July 6, 1948	Kansas State University
Marcus Webb	1993	1993	F-C	6-9	255	May 9, 1970	University of Alabama
Spud Webb	1986	1998	G	5-6	133	July 13, 1963	North Carolina State University
Chris Webber	1994	2008	F-C	6-9	245	March 1, 1973	University of Michigan
Briante Weber	2016	2018	G	6-2	165	December 29, 1992	Virginia Commonwealth University
Jake Weber	1947	1947	C	6-6	225	March 18, 1918	Purdue University
Elnardo Webster	1972	1972	F	6-5	190	March 6, 1948	Saint Peter's College
Jeff Webster	1996	1996	F	6-8	232	February 19, 1971	University of Oklahoma
Martell Webster	2006	2015	G-F	6-7	230	December 4, 1986	\N
Marvin Webster	1976	1987	C	7-1	225	April 13, 1952	Morgan State University
Scott Wedman	1975	1987	F-G	6-7	215	July 29, 1952	University of Colorado
Sonny Weems	2009	2016	G-F	6-6	205	July 8, 1986	University of Arkansas
Dick Wehr	1949	1949	F	6-4	180	December 9, 1925	Rice University
Brant Weidner	1984	1984	F	6-9	230	October 28, 1960	College of William & Mary
Bob Weiss	1966	1977	G	6-2	180	May 7, 1942	Pennsylvania State University
Rick Weitzman	1968	1968	G	6-2	175	April 30, 1946	Northeastern University
Bonzi Wells	1999	2008	G-F	6-5	210	September 28, 1976	Ball State University
Bubba Wells	1998	1998	F	6-5	230	July 26, 1974	Austin Peay State University
Owen Wells	1975	1975	F	6-7	200	December 9, 1950	University of Detroit Mercy
Ralph Wells	1963	1963	G	6-1	180	September 3, 1940	Northwestern University
Chris Welp	1988	1990	C	7-0	245	January 2, 1964	University of Washington
Jiri Welsch	2003	2006	G	6-7	208	January 27, 1980	\N
Bill Wennington	1986	2000	C	7-0	245	April 26, 1963	St. John's University
Matt Wenstrom	1994	1994	C	7-1	250	November 4, 1970	University of North Carolina
Robert Werdann	1993	1997	C	6-11	250	September 12, 1970	St. John's University
Ray Wertis	1947	1948	G	5-11	\N	January 1, 1922	St. John's University
David Wesley	1994	2007	G	6-0	190	November 14, 1970	Baylor University
Walt Wesley	1967	1976	C	6-11	220	January 25, 1945	University of Kansas
David West	2004	2018	F	6-9	250	August 29, 1980	Xavier University
Delonte West	2005	2012	G	6-4	180	July 26, 1983	Saint Joseph's University
Doug West	1990	2001	G-F	6-6	200	May 27, 1967	Villanova University
Jerry West	1961	1974	G	6-2	175	May 28, 1938	West Virginia University
Mario West	2008	2011	G	6-5	210	June 19, 1984	Georgia Institute of Technology
Mark West	1984	2000	C-F	6-10	230	November 5, 1960	Old Dominion University
Roland West	1968	1968	G	6-4	178	June 6, 1944	University of Cincinnati
Dexter Westbrook	1968	1968	F	6-8	190	\N	Providence College
Russell Westbrook	2009	2018	G	6-3	200	November 12, 1988	University of California, Los Angeles
Paul Westphal	1973	1984	G	6-4	195	November 30, 1950	University of Southern California
John Wetzel	1968	1976	G-F	6-5	190	October 22, 1944	Virginia Polytechnic Institute and State University
Robert Whaley	2006	2006	C	6-10	260	April 16, 1982	Walsh University
Ennis Whatley	1984	1997	G	6-3	177	August 11, 1962	University of Alabama
DeJuan Wheat	1998	1999	G	6-0	165	October 14, 1973	University of Louisville
Clinton Wheeler	1988	1989	G	6-1	185	October 27, 1959	William Paterson University
Tyson Wheeler	1999	1999	G	5-10	165	October 8, 1975	University of Rhode Island
Skippy Whitaker	1955	1955	G	6-1	180	August 29, 1930	University of Kentucky
D.J. White	2009	2014	F	6-9	251	August 31, 1986	Indiana University
Derrick White	2018	2018	G	6-5	190	July 2, 1994	University of Colorado
Eric White	1988	1989	F	6-8	200	December 30, 1965	Pepperdine University
Herb White	1971	1971	G	6-2	195	June 15, 1948	University of Georgia
Hubie White	1963	1971	G-F	6-4	205	January 26, 1940	Villanova University
Jahidi White	1999	2005	F-C	6-9	290	February 19, 1976	Georgetown University
James White	2007	2013	G-F	6-7	200	October 21, 1982	University of Cincinnati
Jo Jo White	1970	1981	G	6-3	190	November 16, 1946	University of Kansas
Okaro White	2017	2018	F	6-8	204	August 13, 1992	Florida State University
Randy White	1990	1994	F	6-8	240	November 4, 1967	Louisiana Tech University
Rodney White	2002	2005	F	6-9	238	June 28, 1980	University of North Carolina at Charlotte
Rory White	1983	1987	F	6-8	210	August 16, 1959	University of South Alabama
Royce White	2014	2014	F	6-8	270	April 10, 1991	Iowa State University
Rudy White	1976	1981	G	6-2	195	June 23, 1953	Arizona State University
Tony White	1988	1988	G	6-2	170	February 15, 1965	University of Tennessee
Willie White	1985	1986	G	6-3	195	August 20, 1962	University of Tennessee at Chattanooga
Isaiah Whitehead	2017	2018	G	6-4	213	March 8, 1995	Seton Hall University
Jerome Whitehead	1979	1989	C-F	6-10	220	September 30, 1956	Marquette University
Donald Whiteside	1997	1998	G	5-10	160	April 25, 1969	Northern Illinois University
Hassan Whiteside	2011	2018	C	7-0	265	June 13, 1989	Marshall University
Dwayne Whitfield	1996	1996	F	6-9	240	August 21, 1972	Jackson State University
Chris Whitney	1994	2004	G	6-0	168	October 5, 1971	Clemson University
Hank Whitney	1968	1970	F-C	6-7	230	April 28, 1939	Iowa State University
Hawkeye Whitney	1981	1982	G-F	6-5	235	June 22, 1957	North Carolina State University
Shayne Whittington	2015	2016	F-C	6-11	250	March 27, 1991	Western Michigan University
Sidney Wicks	1972	1981	F-C	6-8	225	September 19, 1949	University of California, Los Angeles
Ron Widby	1968	1968	F	6-4	210	March 9, 1945	University of Tennessee
Murray Wier	1950	1950	G	5-9	155	December 12, 1926	University of Iowa
Bob Wiesenhahn	1962	1962	F	6-4	215	December 22, 1938	University of Cincinnati
Andrew Wiggins	2015	2018	F-G	6-8	199	February 23, 1995	University of Kansas
Mitchell Wiggins	1984	1992	G	6-4	185	September 28, 1959	Florida State University
Ken Wilburn	1968	1969	F	6-6	195	June 8, 1944	Central State University
C.J. Wilcox	2015	2017	G	6-5	195	December 30, 1990	University of Washington
Chris Wilcox	2003	2013	F	6-10	221	September 3, 1982	University of Maryland
D.C. Wilcutt	1949	1950	G	6-2	165	March 25, 1923	Saint Louis University
Gene Wiley	1963	1968	C	6-10	210	November 12, 1937	Wichita State University
Jacob Wiley	2018	2018	F	6-7	215	September 4, 1994	Eastern Washington University
Michael Wiley	1981	1982	F	6-9	200	October 16, 1957	California State University, Long Beach
Morlon Wiley	1989	1995	G	6-4	185	September 24, 1966	California State University, Long Beach
Win Wilfong	1958	1961	G-F	6-2	185	March 18, 1933	University of Memphis
Lenny Wilkens	1961	1975	G	6-1	180	October 28, 1937	Providence College
Bob Wilkerson	1977	1983	G-F	6-6	195	August 15, 1954	Indiana University
Jamaal Wilkes	1975	1986	F-G	6-6	190	May 2, 1953	University of California, Los Angeles
James Wilkes	1981	1983	F	6-7	195	April 1, 1958	University of California, Los Angeles
Damien Wilkins	2005	2018	F-G	6-6	225	January 11, 1980	University of Georgia
Dominique Wilkins	1983	1999	F-G	6-7	200	January 12, 1960	University of Georgia
Eddie Lee Wilkins	1985	1993	F-C	6-10	220	May 7, 1962	Gardner-Webb University
Gerald Wilkins	1986	1999	G-F	6-6	185	September 11, 1963	University of Tennessee at Chattanooga
Jeff Wilkins	1981	1986	C-F	6-11	230	March 9, 1955	Illinois State University
Dale Wilkinson	1985	1985	F	6-10	220	March 18, 1960	Idaho State University
Mike Wilks	2003	2010	G	5-10	185	May 7, 1979	Rice University
Aaron Williams	1994	2008	F-C	6-9	220	October 2, 1971	Xavier University
Al Williams	1971	1971	F	6-6	200	February 3, 1948	Drake University
Alan Williams	2016	2017	F-C	6-8	260	January 28, 1993	University of California, Santa Barbara
Alvin Williams	1998	2007	G	6-5	185	August 6, 1974	Villanova University
Art Williams	1968	1975	G	6-1	180	September 29, 1939	California State Polytechnic University, Pomona
Bernie Williams	1970	1974	G	6-3	175	December 30, 1945	La Salle University
Bob Williams	1956	1957	F	6-6	230	May 12, 1931	Florida Agricultural and Mechanical University
Brandon Williams	1998	2003	G	6-6	215	February 27, 1975	Davidson College
Buck Williams	1982	1998	F-C	6-8	215	March 8, 1960	University of Maryland
C.J. Williams	2018	2018	G	6-5	225	February 6, 1990	North Carolina State University
Charles Williams	1968	1973	G	6-0	165	September 5, 1943	Seattle University
Chuck Williams	1971	1978	G	6-2	175	June 6, 1946	University of Colorado
Chuckie Williams	1977	1977	G	6-3	180	December 31, 1953	Kansas State University
Cliff Williams	1969	1969	G	6-3	180	April 15, 1945	Bowling Green State University
Corey Williams	1993	1994	G	6-2	190	April 24, 1970	Oklahoma State University
Deron Williams	2006	2017	G	6-3	200	June 26, 1984	University of Illinois at Urbana-Champaign
Derrick Williams	2012	2017	F	6-8	240	May 25, 1991	University of Arizona
Duck Williams	1980	1980	G	6-2	180	August 2, 1956	University of Notre Dame
Earl Williams	1975	1979	C-F	6-7	230	March 24, 1951	Winston-Salem State University
Elliot Williams	2012	2016	G	6-5	190	June 20, 1989	University of Memphis
Eric Williams	1996	2007	F	6-8	220	July 17, 1972	Providence College
Fly Williams	1975	1975	G-F	6-5	200	February 18, 1953	Austin Peay State University
Frank Williams	2003	2005	G	6-3	212	February 25, 1980	University of Illinois at Urbana-Champaign
Freeman Williams	1979	1986	G-F	6-4	190	May 15, 1956	Portland State University
Gene Williams	1970	1970	F	6-7	235	April 1, 1947	Kansas State University
Gus Williams	1976	1987	G	6-2	175	October 10, 1953	University of Southern California
Guy Williams	1985	1986	F	6-9	200	July 1, 1960	Washington State University
Hank Williams	1975	1975	F	6-5	210	April 28, 1952	Jacksonville University
Herb Williams	1982	1999	C-F	6-10	242	February 16, 1958	Ohio State University
Hot Rod Williams	1987	1999	F-C	6-11	215	August 9, 1962	Tulane University
Jason Williams	1999	2011	G	6-1	190	November 18, 1975	University of Florida
Jawad Williams	2009	2011	F	6-9	218	February 19, 1983	University of North Carolina
Jay Williams	2003	2003	G	6-2	195	September 10, 1981	Duke University
Jayson Williams	1991	1999	F-C	6-9	240	February 22, 1968	St. John's University
Jerome Williams	1997	2005	F	6-9	206	May 10, 1973	Georgetown University
John Williams	1987	1995	F-C	6-8	235	October 26, 1966	Louisiana State University
Jordan Williams	2012	2012	F	6-10	260	October 11, 1990	University of Maryland
Justin Williams	2007	2008	F	6-10	225	May 12, 1984	University of Wyoming
Kenny Williams	1991	1994	F	6-9	205	June 9, 1969	Elizabeth City State University
Kevin Williams	1984	1989	G	6-2	175	September 11, 1961	St. John's University
Lorenzo Williams	1993	2000	F-C	6-9	200	July 15, 1969	Stetson University
Lou Williams	2006	2018	G	6-1	175	October 27, 1986	\N
Marcus Williams	2007	2010	G	6-3	205	December 3, 1985	University of Connecticut
Marcus Williams	2008	2009	F	6-7	205	November 18, 1986	University of Arizona
Marvin Williams	2006	2018	F	6-9	237	June 19, 1986	University of North Carolina
Matt Williams	2018	2018	G	6-5	210	October 14, 1993	University of Central Florida
Micheal Williams	1989	1999	G	6-2	175	July 23, 1966	Baylor University
Mike Williams	1990	1990	F	6-8	255	August 14, 1963	Bradley University
Milt Williams	1971	1975	G	6-2	182	November 22, 1945	Lincoln University of Missouri
Mo Williams	2004	2016	G	6-1	198	December 19, 1982	University of Alabama
Monty Williams	1995	2003	F	6-8	225	October 8, 1971	University of Notre Dame
Nate Williams	1972	1979	F-G	6-5	215	May 2, 1950	Utah State University
Pete Williams	1986	1987	F	6-7	190	March 10, 1965	University of Arizona
Ray Williams	1978	1987	G	6-3	188	October 14, 1954	University of Minnesota
Reggie Williams	1988	1997	F-G	6-7	190	March 5, 1964	Georgetown University
Reggie Williams	2010	2017	F	6-6	205	September 14, 1986	Virginia Military Institute
Rickey Williams	1983	1983	G	6-1	175	March 12, 1957	California State University, Long Beach
Rob Williams	1983	1984	G	6-2	175	May 5, 1961	University of Houston
Ron Williams	1969	1976	G	6-3	188	September 24, 1944	West Virginia University
Sam Williams	1969	1970	G	6-3	180	January 22, 1945	University of Iowa
Sam Williams	1982	1985	F	6-8	210	March 7, 1959	Arizona State University
Scott Williams	1991	2005	F-C	6-10	230	March 21, 1968	University of North Carolina
Sean Williams	2008	2012	C-F	6-10	235	September 13, 1986	Boston College
Shammond Williams	1999	2007	G	6-1	201	April 5, 1975	University of North Carolina
Shawne Williams	2007	2015	F	6-9	225	February 16, 1986	University of Memphis
Shelden Williams	2007	2012	F	6-9	250	October 21, 1983	Duke University
Sly Williams	1980	1986	F-G	6-7	210	January 26, 1958	University of Rhode Island
Terrence Williams	2010	2013	F	6-6	220	June 28, 1987	University of Louisville
Travis Williams	1998	1999	F	6-6	215	May 27, 1969	South Carolina State University
Troy Williams	2017	2018	F	6-7	218	December 30, 1994	Indiana University
Walt Williams	1993	2003	F-G	6-8	219	April 16, 1970	University of Maryland
Ward Williams	1949	1949	F	6-4	195	June 26, 1923	Indiana University
Willie Williams	1971	1971	F	6-7	200	July 28, 1946	Florida State University
Corliss Williamson	1996	2007	F	6-7	245	December 4, 1973	University of Arkansas
John Williamson	1974	1981	G	6-2	185	November 10, 1951	New Mexico State University
Vann Williford	1971	1971	F	6-6	195	January 26, 1948	North Carolina State University
Kevin Willis	1985	2007	F-C	7-0	220	September 6, 1962	Michigan State University
Bill Willoughby	1976	1984	F-C	6-8	205	May 20, 1957	\N
Dedric Willoughby	2000	2000	G-F	6-3	180	May 27, 1974	Iowa State University
Bob Wilson	1952	1952	G	6-4	185	March 8, 1926	West Virginia State University
Bobby Wilson	1968	1968	F	6-8	215	\N	University of Kansas
Bobby Wilson	1975	1978	G	6-3	175	January 15, 1951	Wichita State University
Bubba Wilson	1980	1980	G	6-3	175	August 7, 1955	Western Carolina University
D.J. Wilson	2018	2018	F	6-10	234	February 19, 1996	University of Michigan
George Wilson	1965	1971	C	6-8	225	May 9, 1942	University of Cincinnati
Isaiah Wilson	1972	1973	G	6-2	175	May 31, 1948	University of Baltimore
Jamil Wilson	2018	2018	F	6-7	230	November 21, 1990	Marquette University
Jasper Wilson	1969	1970	F	6-6	200	July 12, 1947	Southern University and A&M College
Jim Wilson	1971	1971	G	5-10	175	\N	Cheyney University of Pennsylvania
Michael Wilson	1984	1987	G	6-4	175	September 15, 1959	Marquette University
Nikita Wilson	1988	1988	F	6-8	200	February 25, 1964	Louisiana State University
Othell Wilson	1985	1987	G	6-0	190	October 26, 1961	University of Virginia
Rick Wilson	1979	1980	G	6-5	200	February 7, 1956	University of Louisville
Ricky Wilson	1988	1988	G	6-3	195	July 16, 1964	George Mason University
Stephen Wilson	1971	1972	G	6-5	185	October 16, 1948	Hanover College
Trevor Wilson	1991	1996	F	6-7	210	March 16, 1968	University of California, Los Angeles
Kyle Wiltjer	2017	2017	F	6-10	240	October 20, 1992	Gonzaga University
Kennard Winchester	1991	1993	G-F	6-5	210	September 3, 1966	Averett University
Tony Windis	1960	1960	G	6-1	160	January 27, 1933	University of Wyoming
John Windsor	1964	1964	F	6-8	215	April 3, 1940	Stanford University
Lee Winfield	1970	1976	G	6-2	174	February 4, 1947	University of North Texas
David Wingate	1987	2001	G-F	6-5	185	December 15, 1963	Georgetown University
Dontonio Wingfield	1995	1998	F	6-8	256	June 23, 1974	University of Cincinnati
Harthorne Wingo	1973	1976	F	6-6	210	September 9, 1947	Friendship Junior College
Marv Winkler	1971	1972	G	6-1	164	February 18, 1948	University of Louisiana at Lafayette
Justise Winslow	2016	2018	F	6-7	225	March 26, 1996	Duke University
Rickie Winslow	1988	1988	F	6-8	225	July 26, 1964	University of Houston
Trevor Winter	1999	1999	C	7-0	275	January 7, 1974	University of Minnesota
Brian Winters	1975	1983	G-F	6-4	185	March 1, 1952	University of South Carolina
Voise Winters	1986	1986	F	6-8	200	October 12, 1962	Bradley University
Skip Wise	1976	1976	G	6-2	170	July 25, 1955	Clemson University
Willie Wise	1970	1978	F	6-5	210	March 3, 1947	Drake University
Jeff Withey	2014	2018	C	7-0	231	March 7, 1990	University of Kansas
Luke Witte	1974	1976	C	7-0	235	October 19, 1950	Ohio State University
Greg Wittman	1970	1971	F	6-8	210	May 10, 1947	Western Carolina University
Randy Wittman	1984	1992	G-F	6-6	210	October 28, 1959	Indiana University
Garry Witts	1982	1982	G-F	6-7	190	July 3, 1959	College of the Holy Cross
Dave Wohl	1972	1978	G	6-2	185	November 2, 1949	University of Pennsylvania
Joe Wolf	1988	1999	F-C	6-11	230	December 17, 1964	University of North Carolina
Ruben Wolkowyski	2001	2003	F	6-10	270	September 30, 1973	\N
Nate Wolters	2014	2018	G	6-4	190	May 15, 1991	South Dakota State University
Al Wood	1982	1987	G-F	6-6	193	June 2, 1958	University of North Carolina
Bob Wood	1950	1950	G	5-10	\N	October 7, 1921	Northern Illinois University
Christian Wood	2016	2017	F	6-11	220	September 27, 1995	University of Nevada, Las Vegas
David Wood	1989	1997	F	6-9	227	November 30, 1964	University of Nevada, Reno
Howard Wood	1982	1982	F	6-7	235	May 20, 1959	University of Tennessee
Leon Wood	1985	1991	G	6-3	185	March 25, 1962	California State University, Fullerton
Loren Woods	2002	2008	F-C	7-1	245	June 21, 1978	University of Arizona
Qyntel Woods	2003	2006	F	6-8	221	February 16, 1981	Northeast Mississippi Community College
Randy Woods	1993	1996	G	5-10	185	September 23, 1970	La Salle University
Tommy Woods	1968	1968	F	6-7	210	June 10, 1943	East Tennessee State University
Mike Woodson	1981	1991	G-F	6-5	195	March 24, 1958	Indiana University
Bob Woollard	1970	1970	C	6-10	225	July 27, 1940	Wake Forest University
Orlando Woolridge	1982	1994	F	6-9	215	December 16, 1959	University of Notre Dame
Haywoode Workman	1990	2000	G	6-2	180	January 23, 1966	Oral Roberts University
Mark Workman	1953	1954	F-C	6-9	215	March 10, 1930	West Virginia University
Tom Workman	1968	1971	F-C	6-7	218	November 14, 1944	Seattle University
Metta World Peace	2000	2017	F	6-6	260	November 13, 1979	St. John's University
Willie Worsley	1969	1969	G	5-9	175	November 13, 1945	University of Texas at El Paso
Sam Worthen	1981	1982	G	6-5	195	January 17, 1958	Marquette University
James Worthy	1983	1994	F	6-9	225	February 27, 1961	University of North Carolina
Antoine Wright	2006	2011	G-F	6-7	210	February 6, 1984	Texas A&M University
Bracey Wright	2006	2007	G	6-3	210	July 1, 1984	Indiana University
Brad Wright	1987	1988	F	6-11	225	March 26, 1962	University of California, Los Angeles
Brandan Wright	2008	2018	F-C	6-10	210	October 5, 1987	University of North Carolina
Chris Wright	2012	2014	F	6-8	226	September 30, 1988	University of Dayton
Chris Wright	2013	2013	G	6-1	210	November 4, 1989	Georgetown University
Delon Wright	2016	2018	G	6-5	183	April 26, 1992	University of Utah
Dorell Wright	2005	2015	F-G	6-9	205	December 2, 1985	\N
Howard Wright	1991	1993	F	6-8	220	December 20, 1967	Stanford University
Howie Wright	1971	1972	G	6-3	185	February 22, 1947	Austin Peay State University
Joby Wright	1973	1976	F-C	6-8	220	September 5, 1950	Indiana University
Julian Wright	2008	2011	F	6-8	225	May 20, 1987	University of Kansas
Larry Wright	1977	1982	G	6-1	160	November 23, 1954	Grambling State University
Leroy Wright	1968	1969	F	6-9	215	May 6, 1938	University of the Pacific
Lonnie Wright	1968	1972	G	6-2	205	January 23, 1945	Colorado State University
Lorenzen Wright	1997	2009	F-C	6-11	225	November 4, 1975	University of Memphis
Luther Wright	1994	1994	C	7-2	270	September 22, 1971	Seton Hall University
Sharone Wright	1995	1998	F-C	6-11	260	January 30, 1973	Clemson University
Tony Wroten	2013	2016	G	6-6	205	April 13, 1993	University of Washington
Dennis Wuycik	1973	1975	F	6-6	215	March 29, 1950	University of North Carolina
A.J. Wynder	1991	1991	G	6-2	180	September 11, 1964	Fairfield University
Guerschon Yabusele	2018	2018	F	6-7	260	December 17, 1995	\N
Vincent Yarbrough	2003	2003	G-F	6-7	210	March 21, 1981	University of Tennessee
George Yardley	1954	1960	F-G	6-5	190	November 3, 1928	Stanford University
Barry Yates	1972	1972	F	6-7	215	January 30, 1946	University of Maryland
Wayne Yates	1962	1962	C	6-8	235	November 7, 1937	University of Memphis
Charlie Yelverton	1972	1972	G-F	6-2	190	December 5, 1948	Fordham University
Rich Yonakor	1982	1982	F	6-9	220	October 3, 1958	University of North Carolina
Danny Young	1985	1995	G	6-3	175	July 26, 1962	Wake Forest University
James Young	2015	2017	G-F	6-6	215	August 16, 1995	University of Kentucky
Joe Young	2016	2018	G	6-2	180	June 27, 1992	University of Oregon
Korleone Young	1999	1999	F	6-7	213	December 31, 1978	\N
Michael Young	1985	1990	F-G	6-7	220	January 2, 1961	University of Houston
Nick Young	2008	2018	G-F	6-7	210	June 1, 1985	University of Southern California
Perry Young	1987	1987	G	6-5	210	August 4, 1963	Virginia Polytechnic Institute and State University
Sam Young	2010	2013	F	6-6	220	June 1, 1985	University of Pittsburgh
Thaddeus Young	2008	2018	F	6-8	221	June 21, 1988	Georgia Institute of Technology
Tim Young	2000	2000	C	7-0	220	February 6, 1976	Stanford University
Sun Yue	2009	2009	G	6-9	205	November 6, 1985	\N
Max Zaslofsky	1947	1956	G-F	6-2	170	December 7, 1925	St. John's University
Zeke Zawoluk	1953	1955	F-C	6-7	215	October 13, 1930	St. John's University
Cody Zeller	2014	2018	C-F	7-0	240	October 5, 1992	Indiana University
Dave Zeller	1962	1962	G	6-1	175	June 8, 1939	Miami University
Gary Zeller	1971	1972	G	6-3	205	November 20, 1947	Drake University
Harry Zeller	1947	1947	C-F	6-4	210	July 10, 1919	Washington & Jefferson College
Luke Zeller	2013	2013	C	6-11	245	April 7, 1987	University of Notre Dame
Tyler Zeller	2013	2018	F-C	7-0	253	January 17, 1990	University of North Carolina
Tony Zeno	1980	1980	F	6-8	210	October 1, 1957	Arizona State University
Phil Zevenbergen	1988	1988	C	6-10	230	April 13, 1964	University of Washington
Wang Zhizhi	2001	2005	C	7-0	255	July 8, 1977	\N
George Zidek	1996	1998	C	7-0	250	August 2, 1973	University of California, Los Angeles
Derrick Zimmerman	2006	2006	G	6-3	195	December 2, 1981	Mississippi State University
Stephen Zimmerman	2017	2017	C	7-0	240	September 9, 1996	University of Nevada, Las Vegas
Paul Zipser	2017	2018	G-F	6-8	215	February 18, 1994	\N
Ante Zizic	2018	2018	F-C	6-11	250	January 4, 1997	\N
Jim Zoet	1983	1983	C	7-1	240	December 20, 1953	Kent State University
Bill Zopf	1971	1971	G	6-1	170	June 7, 1948	Duquesne University
Ivica Zubac	2017	2018	C	7-1	265	March 18, 1997	\N
Matt Zunic	1949	1949	G-F	6-3	195	December 19, 1919	George Washington University
\.


--
-- PostgreSQL database dump complete
--

