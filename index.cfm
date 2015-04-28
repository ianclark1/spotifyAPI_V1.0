<!---
Name: account.cfc
Author: Matt Gifford AKA coldfumonkeh (http://www.mattgifford.co.uk)
Date: 19.02.2010

Copyright  2010 Matt Gifford AKA coldfumonkeh. All rights reserved.
Product and company names mentioned herein may be
trademarks or trade names of their respective owners.

Subject to the conditions below, you may, without charge:

Use, copy, modify and/or merge copies of this software and
associated documentation files (the 'Software')

Any person dealing with the Software shall not misrepresent the source of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED,
INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A
PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
--->

<!--- sample album URI --->
<cfset strURI = 'spotify:album:6G9fHYDCoyEErUkHrFYfs4' />

<!--- instantiate the object --->
<cfset objSpotify = createObject('component', 'com.coldfumonkeh.spotify').init(true) />

<!--- sample call to query the album URI (above) --->
<cfdump var="#objSpotify.lookup(URI=strURI,detailLevel='off')#" />

<!--- sample call to search for the track 'Epic' --->
<cfdump var="#objSpotify.search(searchMethod='artist',query='Epic')#" />
