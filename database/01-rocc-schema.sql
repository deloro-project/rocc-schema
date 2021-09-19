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
-- TOC entry 200 (class 1259 OID 16406)
-- Name: accoladedirections; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.accoladedirections (
    id character varying(10) NOT NULL
);


--
-- TOC entry 201 (class 1259 OID 16409)
-- Name: accolades; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.accolades (
    id integer NOT NULL,
    pageid integer NOT NULL,
    objectannotator integer NOT NULL,
    leftuphoriz numeric(12,6) NOT NULL,
    leftupvert numeric(12,6) NOT NULL,
    rightdownhoriz numeric(12,6) NOT NULL,
    rightdownvert numeric(12,6) NOT NULL,
    direction character varying(10) NOT NULL,
    horizcoordofpeak numeric(12,6) NOT NULL,
    vertcoordofpeak numeric(12,6) NOT NULL,
    rowcreationtimestamp timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    rowdeletiontimestamp timestamp with time zone,
    deletionuser integer
);


--
-- TOC entry 253 (class 1259 OID 17447)
-- Name: accolades_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.accolades ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.accolades_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 202 (class 1259 OID 16412)
-- Name: alignmenttypes; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.alignmenttypes (
    id character varying(10) NOT NULL
);


--
-- TOC entry 203 (class 1259 OID 16415)
-- Name: annotationlevels; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.annotationlevels (
    id character(1) NOT NULL,
    name character varying(100) NOT NULL
);


--
-- TOC entry 204 (class 1259 OID 16418)
-- Name: annotationprogress; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.annotationprogress (
    id integer NOT NULL,
    lastannotator integer,
    collectionid integer,
    lastpage integer
);


--
-- TOC entry 254 (class 1259 OID 17449)
-- Name: annotationprogress_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.annotationprogress ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.annotationprogress_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 205 (class 1259 OID 16421)
-- Name: authorbiographylines; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.authorbiographylines (
    id integer NOT NULL,
    authorid integer NOT NULL,
    bio integer
);


--
-- TOC entry 255 (class 1259 OID 17451)
-- Name: authorbiographylines_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.authorbiographylines ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.authorbiographylines_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 206 (class 1259 OID 16424)
-- Name: authornameadditions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.authornameadditions (
    id integer NOT NULL,
    authorid integer NOT NULL,
    addtoname character varying(1000)
);


--
-- TOC entry 256 (class 1259 OID 17453)
-- Name: authornameadditions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.authornameadditions ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.authornameadditions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 207 (class 1259 OID 16430)
-- Name: authors; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.authors (
    id integer NOT NULL,
    name character varying(100),
    surname character varying(100),
    content character varying(1000)
);


--
-- TOC entry 257 (class 1259 OID 17455)
-- Name: authors_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.authors ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.authors_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 208 (class 1259 OID 16436)
-- Name: bookformats; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.bookformats (
    id character varying(10) NOT NULL
);


--
-- TOC entry 209 (class 1259 OID 16439)
-- Name: centuries; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.centuries (
    id character varying(5) NOT NULL
);


--
-- TOC entry 210 (class 1259 OID 16442)
-- Name: columnpositions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.columnpositions (
    id character varying(1) NOT NULL,
    name character varying(50) NOT NULL
);


--
-- TOC entry 211 (class 1259 OID 16445)
-- Name: columns; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.columns (
    id integer NOT NULL,
    pageid integer NOT NULL,
    columnposition character varying(1) NOT NULL,
    objectannotator integer NOT NULL,
    leftuphoriz numeric(12,6) NOT NULL,
    leftupvert numeric(12,6) NOT NULL,
    rightdownhoriz numeric(12,6) NOT NULL,
    rightdownvert numeric(12,6) NOT NULL,
    rowdeletiontimestamp timestamp with time zone,
    deletionuser integer,
    rowcreationtimestamp timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


--
-- TOC entry 258 (class 1259 OID 17457)
-- Name: columns_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.columns ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.columns_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 212 (class 1259 OID 16448)
-- Name: contentdescriptions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.contentdescriptions (
    id integer NOT NULL,
    metadataid integer NOT NULL,
    style character varying(100) NOT NULL,
    subject text
);


--
-- TOC entry 259 (class 1259 OID 17459)
-- Name: contentdescriptions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.contentdescriptions ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.contentdescriptions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 213 (class 1259 OID 16454)
-- Name: corrections; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.corrections (
    id character varying(4) NOT NULL
);


--
-- TOC entry 214 (class 1259 OID 16457)
-- Name: creationlocations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.creationlocations (
    id integer NOT NULL,
    provinceid integer NOT NULL,
    country character varying(100),
    town character varying(100),
    house character varying(100)
);


--
-- TOC entry 260 (class 1259 OID 17461)
-- Name: creationlocations_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.creationlocations ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.creationlocations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 215 (class 1259 OID 16460)
-- Name: creations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.creations (
    id integer NOT NULL,
    metadataid integer NOT NULL,
    authorid integer,
    locationid integer NOT NULL,
    creationyear integer NOT NULL
);


--
-- TOC entry 261 (class 1259 OID 17463)
-- Name: creations_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.creations ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.creations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 216 (class 1259 OID 16463)
-- Name: creationsecondaryauthors; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.creationsecondaryauthors (
    creationid integer NOT NULL,
    authorid integer NOT NULL
);


--
-- TOC entry 217 (class 1259 OID 16466)
-- Name: difficultycriteria; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.difficultycriteria (
    id integer NOT NULL,
    pageid integer NOT NULL,
    damaged boolean NOT NULL,
    opaquespots boolean NOT NULL,
    transparentpaper boolean NOT NULL,
    overlayprint boolean,
    interlinewriting boolean NOT NULL,
    palimpsest boolean NOT NULL,
    corrections character varying(4) NOT NULL,
    marginalwriting character varying(4) NOT NULL
);


--
-- TOC entry 290 (class 1259 OID 20007)
-- Name: difficultycriteria_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.difficultycriteria ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.difficultycriteria_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 218 (class 1259 OID 16469)
-- Name: difficultylevels; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.difficultylevels (
    id integer NOT NULL,
    name character varying(100) NOT NULL
);


--
-- TOC entry 219 (class 1259 OID 16472)
-- Name: dimensions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.dimensions (
    id integer NOT NULL,
    publishingid integer NOT NULL,
    contentwidth numeric(12,6) NOT NULL,
    contentheight numeric(12,6) NOT NULL,
    pagewidth numeric(12,6) NOT NULL,
    pageheight numeric(12,6) NOT NULL
);


--
-- TOC entry 262 (class 1259 OID 17467)
-- Name: dimensions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.dimensions ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.dimensions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 220 (class 1259 OID 16475)
-- Name: formatdescriptions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.formatdescriptions (
    id integer NOT NULL,
    metadataid integer NOT NULL,
    content text NOT NULL
);


--
-- TOC entry 263 (class 1259 OID 17469)
-- Name: formatdescriptions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.formatdescriptions ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.formatdescriptions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 221 (class 1259 OID 16482)
-- Name: frames; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.frames (
    id integer NOT NULL,
    pageid integer NOT NULL,
    objectannotator integer NOT NULL,
    extframeleftuphoriz numeric(12,6) NOT NULL,
    extframeleftupvert numeric(12,6) NOT NULL,
    extframerightdownhoriz numeric(12,6) NOT NULL,
    extframerightdownvert numeric(12,6) NOT NULL,
    intframeleftuphoriz numeric(12,6) NOT NULL,
    intframeleftupvert numeric(12,6) NOT NULL,
    intframerightdownhoriz numeric(12,6) NOT NULL,
    intframerightdownvert numeric(12,6) NOT NULL,
    rowcreationtimestamp timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    rowdeletiontimestamp timestamp with time zone,
    deletionuser integer
);


--
-- TOC entry 264 (class 1259 OID 17471)
-- Name: frames_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.frames ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.frames_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 222 (class 1259 OID 16485)
-- Name: frontispieces; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.frontispieces (
    id integer NOT NULL,
    pageid integer NOT NULL,
    objectannotator integer NOT NULL,
    leftuphoriz numeric(12,6) NOT NULL,
    leftupvert numeric(12,6) NOT NULL,
    rightdownhoriz numeric(12,6) NOT NULL,
    rightdownvert numeric(12,6) NOT NULL,
    rowcreationtimestamp timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    rowdeletiontimestamp timestamp with time zone,
    deletionuser integer
);


--
-- TOC entry 265 (class 1259 OID 17473)
-- Name: frontispieces_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.frontispieces ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.frontispieces_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 223 (class 1259 OID 16488)
-- Name: halfcenturies; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.halfcenturies (
    id integer NOT NULL
);


--
-- TOC entry 224 (class 1259 OID 16491)
-- Name: initialletters; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.initialletters (
    id integer NOT NULL,
    pageid integer NOT NULL,
    objectannotator integer NOT NULL,
    content character varying(100),
    leftuphoriz numeric(12,6) NOT NULL,
    leftupvert numeric(12,6) NOT NULL,
    rightdownhoriz numeric(12,6) NOT NULL,
    rightdownvert numeric(12,6) NOT NULL,
    rowcreationtimestamp timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    rowdeletiontimestamp timestamp with time zone,
    deletionuser integer
);


--
-- TOC entry 266 (class 1259 OID 17475)
-- Name: initialletters_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.initialletters ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.initialletters_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 226 (class 1259 OID 16497)
-- Name: letters; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.letters (
    id integer NOT NULL,
    pageid integer NOT NULL,
    objectannotator integer NOT NULL,
    content character varying(10) NOT NULL,
    accuracy numeric(12,6),
    leftuphoriz numeric(12,6) NOT NULL,
    leftupvert numeric(12,6) NOT NULL,
    rightdownhoriz numeric(12,6) NOT NULL,
    rightdownvert numeric(12,6) NOT NULL,
    rowcreationtimestamp timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    rowdeletiontimestamp timestamp with time zone,
    deletionuser integer
);


--
-- TOC entry 287 (class 1259 OID 17865)
-- Name: letter_statistics; Type: VIEW; Schema: public; Owner: -
--

CREATE VIEW public.letter_statistics AS
 SELECT l.content AS letter,
    count(1) AS num_annotations
   FROM public.letters l
  WHERE (l.rowdeletiontimestamp IS NULL)
  GROUP BY l.content
  ORDER BY l.content;


--
-- TOC entry 225 (class 1259 OID 16494)
-- Name: letteralignments; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.letteralignments (
    id integer NOT NULL,
    letterid integer NOT NULL,
    alignmenttype character varying(10) NOT NULL,
    characteroffset integer NOT NULL,
    length integer NOT NULL
);


--
-- TOC entry 267 (class 1259 OID 17477)
-- Name: letteralignments_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.letteralignments ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.letteralignments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 268 (class 1259 OID 17479)
-- Name: letters_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.letters ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.letters_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 233 (class 1259 OID 16524)
-- Name: objectannotators; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.objectannotators (
    id integer NOT NULL,
    email character varying(100) NOT NULL,
    password character varying(500) NOT NULL,
    is_admin boolean DEFAULT false NOT NULL,
    name character varying(500),
    family_name character varying(500) NOT NULL
);


--
-- TOC entry 236 (class 1259 OID 16537)
-- Name: pagecollectionmetadata; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pagecollectionmetadata (
    roccid integer NOT NULL,
    pagecollectionid integer NOT NULL,
    pagecollectionurl character varying(255) NOT NULL,
    title text NOT NULL,
    shorttitle text NOT NULL,
    language character varying(20) NOT NULL,
    metadatacreator character varying(255) NOT NULL,
    distribution character varying(255) NOT NULL
);


--
-- TOC entry 237 (class 1259 OID 16543)
-- Name: pagecollections; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pagecollections (
    id integer NOT NULL,
    integraltranscribedtextfile character varying(256)
);


--
-- TOC entry 238 (class 1259 OID 16546)
-- Name: pages; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pages (
    pageid integer NOT NULL,
    pagecollectionid integer NOT NULL,
    pagenumber integer NOT NULL,
    pagename character varying(100) NOT NULL,
    scalefactor numeric(12,6) DEFAULT 1.00,
    pageluminosity numeric(12,6) NOT NULL,
    pageimagefile character varying(255) NOT NULL,
    textpagefile character varying(256),
    beginningofpage integer,
    endofpage integer
);


--
-- TOC entry 291 (class 1259 OID 21799)
-- Name: letters_per_page; Type: VIEW; Schema: public; Owner: -
--

CREATE VIEW public.letters_per_page AS
 WITH letter_annotations(page_id, annotator_id, letter, num_annotations) AS (
         SELECT lt.pageid AS page_id,
            lt.objectannotator AS annotator_id,
            lt.content,
            count(lt.content) AS num_annotations
           FROM public.letters lt
          WHERE (lt.rowdeletiontimestamp IS NULL)
          GROUP BY lt.pageid, lt.content, lt.objectannotator
          ORDER BY lt.content
        )
 SELECT l.page_id,
    pc.id AS collection_id,
    l.letter,
    l.num_annotations,
    l.annotator_id,
    format('%s %s'::text, a.name, a.family_name) AS annotator_name,
    p.pagenumber AS page_number,
    pcm.shorttitle AS short_title
   FROM ((((letter_annotations l
     JOIN public.pages p ON ((l.page_id = p.pageid)))
     JOIN public.pagecollections pc ON ((p.pagecollectionid = pc.id)))
     JOIN public.pagecollectionmetadata pcm ON ((pc.id = pcm.pagecollectionid)))
     JOIN public.objectannotators a ON ((l.annotator_id = a.id)));


--
-- TOC entry 227 (class 1259 OID 16500)
-- Name: letterssequences; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.letterssequences (
    sequenceid integer NOT NULL,
    letterid integer NOT NULL
);


--
-- TOC entry 228 (class 1259 OID 16503)
-- Name: lines; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.lines (
    id integer NOT NULL,
    pageid integer NOT NULL,
    objectannotator integer NOT NULL,
    incolumn character varying(10),
    content text,
    leftuphoriz numeric(12,6) NOT NULL,
    leftupvert numeric(12,6) NOT NULL,
    rightdownhoriz numeric(12,6) NOT NULL,
    rightdownvert numeric(12,6) NOT NULL,
    rowcreationtimestamp timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    rowdeletiontimestamp timestamp with time zone,
    deletionuser integer
);


--
-- TOC entry 269 (class 1259 OID 17481)
-- Name: lines_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.lines ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.lines_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 229 (class 1259 OID 16509)
-- Name: linetypes; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.linetypes (
    id character varying(10) NOT NULL
);


--
-- TOC entry 230 (class 1259 OID 16512)
-- Name: marginals; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.marginals (
    id integer NOT NULL,
    pageid integer NOT NULL,
    objectannotator integer NOT NULL,
    content character varying(100),
    leftuphoriz numeric(12,6) NOT NULL,
    leftupvert numeric(12,6) NOT NULL,
    rightdownhoriz numeric(12,6) NOT NULL,
    rightdownvert numeric(12,6) NOT NULL,
    rowcreationtimestamp timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    rowdeletiontimestamp timestamp with time zone,
    deletionuser integer
);


--
-- TOC entry 270 (class 1259 OID 17483)
-- Name: marginals_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.marginals ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.marginals_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 231 (class 1259 OID 16515)
-- Name: marginalwritings; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.marginalwritings (
    id character varying(5) NOT NULL
);


--
-- TOC entry 232 (class 1259 OID 16518)
-- Name: modifiers; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.modifiers (
    id integer NOT NULL,
    pageid integer NOT NULL,
    objectannotator integer NOT NULL,
    content character varying(100),
    leftuphoriz numeric(12,6) NOT NULL,
    leftupvert numeric(12,6) NOT NULL,
    rightdownhoriz numeric(12,6) NOT NULL,
    rightdownvert numeric(12,6) NOT NULL,
    rowcreationtimestamp timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    rowdeletiontimestamp timestamp with time zone,
    deletionuser integer
);


--
-- TOC entry 271 (class 1259 OID 17485)
-- Name: modifiers_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.modifiers ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.modifiers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 286 (class 1259 OID 17860)
-- Name: object_statistics; Type: VIEW; Schema: public; Owner: -
--

CREATE VIEW public.object_statistics AS
SELECT
    NULL::text AS table_name,
    NULL::integer AS id,
    NULL::character varying(500) AS name,
    NULL::character varying(500) AS family_name,
    NULL::bigint AS num_annotations;


--
-- TOC entry 272 (class 1259 OID 17487)
-- Name: objectannotators_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.objectannotators ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.objectannotators_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 234 (class 1259 OID 16531)
-- Name: ornaments; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.ornaments (
    id integer NOT NULL,
    pageid integer NOT NULL,
    objectannotator integer NOT NULL,
    content character varying(100),
    leftuphoriz numeric(12,6) NOT NULL,
    leftupvert numeric(12,6) NOT NULL,
    rightdownhoriz numeric(12,6) NOT NULL,
    rightdownvert numeric(12,6) NOT NULL,
    rowcreationtimestamp timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    rowdeletiontimestamp timestamp with time zone,
    deletionuser integer
);


--
-- TOC entry 273 (class 1259 OID 17489)
-- Name: ornaments_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.ornaments ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.ornaments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 235 (class 1259 OID 16534)
-- Name: outoflineletters; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.outoflineletters (
    id integer NOT NULL,
    pageid integer NOT NULL,
    objectannotator integer NOT NULL,
    content character varying(100),
    leftuphoriz numeric(12,6) NOT NULL,
    leftupvert numeric(12,6) NOT NULL,
    rightdownhoriz numeric(12,6) NOT NULL,
    rightdownvert numeric(12,6) NOT NULL,
    rowcreationtimestamp timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    rowdeletiontimestamp timestamp with time zone,
    deletionuser integer
);


--
-- TOC entry 274 (class 1259 OID 17491)
-- Name: outoflineletters_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.outoflineletters ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.outoflineletters_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 242 (class 1259 OID 16565)
-- Name: referencemarksabovelines; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.referencemarksabovelines (
    id integer NOT NULL,
    pageid integer NOT NULL,
    objectannotator integer NOT NULL,
    content character varying(100),
    leftuphoriz numeric(12,6) NOT NULL,
    leftupvert numeric(12,6) NOT NULL,
    rightdownhoriz numeric(12,6) NOT NULL,
    rightdownvert numeric(12,6) NOT NULL,
    rowcreationtimestamp timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    rowdeletiontimestamp timestamp with time zone,
    deletionuser integer
);


--
-- TOC entry 243 (class 1259 OID 16568)
-- Name: referencemarksonmargin; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.referencemarksonmargin (
    id integer NOT NULL,
    pageid integer NOT NULL,
    objectannotator integer NOT NULL,
    content character varying(100),
    leftuphoriz numeric(12,6) NOT NULL,
    leftupvert numeric(12,6) NOT NULL,
    rightdownhoriz numeric(12,6) NOT NULL,
    rightdownvert numeric(12,6) NOT NULL,
    rowcreationtimestamp timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    rowdeletiontimestamp timestamp with time zone,
    deletionuser integer
);


--
-- TOC entry 249 (class 1259 OID 16590)
-- Name: titles; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.titles (
    id integer NOT NULL,
    pageid integer NOT NULL,
    objectannotator integer NOT NULL,
    content character varying(1024) NOT NULL,
    leftuphoriz numeric(12,6) NOT NULL,
    leftupvert numeric(12,6) NOT NULL,
    rightdownhoriz numeric(12,6) NOT NULL,
    rightdownvert numeric(12,6) NOT NULL,
    rowcreationtimestamp timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    rowdeletiontimestamp timestamp with time zone,
    deletionuser integer
);


--
-- TOC entry 289 (class 1259 OID 17913)
-- Name: page_objects; Type: VIEW; Schema: public; Owner: -
--

CREATE VIEW public.page_objects AS
 SELECT 'frontispiece'::text AS objecttype,
    frontispieces.id AS objectid,
    frontispieces.pageid,
    frontispieces.objectannotator AS annotatorid,
    NULL::character varying AS content,
    frontispieces.leftuphoriz,
    frontispieces.leftupvert,
    frontispieces.rightdownhoriz,
    frontispieces.rightdownvert
   FROM public.frontispieces
  WHERE (frontispieces.rowdeletiontimestamp IS NULL)
UNION ALL
 SELECT 'ornament'::text AS objecttype,
    ornaments.id AS objectid,
    ornaments.pageid,
    ornaments.objectannotator AS annotatorid,
    ornaments.content,
    ornaments.leftuphoriz,
    ornaments.leftupvert,
    ornaments.rightdownhoriz,
    ornaments.rightdownvert
   FROM public.ornaments
  WHERE (ornaments.rowdeletiontimestamp IS NULL)
UNION ALL
 SELECT 'title'::text AS objecttype,
    titles.id AS objectid,
    titles.pageid,
    titles.objectannotator AS annotatorid,
    titles.content,
    titles.leftuphoriz,
    titles.leftupvert,
    titles.rightdownhoriz,
    titles.rightdownvert
   FROM public.titles
  WHERE (titles.rowdeletiontimestamp IS NULL)
UNION ALL
 SELECT 'column'::text AS objecttype,
    columns.id AS objectid,
    columns.pageid,
    columns.objectannotator AS annotatorid,
    NULL::character varying AS content,
    columns.leftuphoriz,
    columns.leftupvert,
    columns.rightdownhoriz,
    columns.rightdownvert
   FROM public.columns
  WHERE (columns.rowdeletiontimestamp IS NULL)
UNION ALL
 SELECT 'line'::text AS objecttype,
    lines.id AS objectid,
    lines.pageid,
    lines.objectannotator AS annotatorid,
    lines.content,
    lines.leftuphoriz,
    lines.leftupvert,
    lines.rightdownhoriz,
    lines.rightdownvert
   FROM public.lines
  WHERE (lines.rowdeletiontimestamp IS NULL)
UNION ALL
 SELECT 'letter'::text AS objecttype,
    letters.id AS objectid,
    letters.pageid,
    letters.objectannotator AS annotatorid,
    letters.content,
    letters.leftuphoriz,
    letters.leftupvert,
    letters.rightdownhoriz,
    letters.rightdownvert
   FROM public.letters
  WHERE (letters.rowdeletiontimestamp IS NULL)
UNION ALL
 SELECT 'modifier'::text AS objecttype,
    modifiers.id AS objectid,
    modifiers.pageid,
    modifiers.objectannotator AS annotatorid,
    modifiers.content,
    modifiers.leftuphoriz,
    modifiers.leftupvert,
    modifiers.rightdownhoriz,
    modifiers.rightdownvert
   FROM public.modifiers
  WHERE (modifiers.rowdeletiontimestamp IS NULL)
UNION ALL
 SELECT 'marginal'::text AS objecttype,
    marginals.id AS objectid,
    marginals.pageid,
    marginals.objectannotator AS annotatorid,
    marginals.content,
    marginals.leftuphoriz,
    marginals.leftupvert,
    marginals.rightdownhoriz,
    marginals.rightdownvert
   FROM public.marginals
  WHERE (marginals.rowdeletiontimestamp IS NULL)
UNION ALL
 SELECT 'outoflineletters'::text AS objecttype,
    outoflineletters.id AS objectid,
    outoflineletters.pageid,
    outoflineletters.objectannotator AS annotatorid,
    outoflineletters.content,
    outoflineletters.leftuphoriz,
    outoflineletters.leftupvert,
    outoflineletters.rightdownhoriz,
    outoflineletters.rightdownvert
   FROM public.outoflineletters
  WHERE (outoflineletters.rowdeletiontimestamp IS NULL)
UNION ALL
 SELECT 'initialletter'::text AS objecttype,
    initialletters.id AS objectid,
    initialletters.pageid,
    initialletters.objectannotator AS annotatorid,
    initialletters.content,
    initialletters.leftuphoriz,
    initialletters.leftupvert,
    initialletters.rightdownhoriz,
    initialletters.rightdownvert
   FROM public.initialletters
  WHERE (initialletters.rowdeletiontimestamp IS NULL)
UNION ALL
 SELECT 'referencemarkonmargin'::text AS objecttype,
    referencemarksonmargin.id AS objectid,
    referencemarksonmargin.pageid,
    referencemarksonmargin.objectannotator AS annotatorid,
    referencemarksonmargin.content,
    referencemarksonmargin.leftuphoriz,
    referencemarksonmargin.leftupvert,
    referencemarksonmargin.rightdownhoriz,
    referencemarksonmargin.rightdownvert
   FROM public.referencemarksonmargin
  WHERE (referencemarksonmargin.rowdeletiontimestamp IS NULL)
UNION ALL
 SELECT 'referencemarkaboveline'::text AS objecttype,
    referencemarksabovelines.id AS objectid,
    referencemarksabovelines.pageid,
    referencemarksabovelines.objectannotator AS annotatorid,
    referencemarksabovelines.content,
    referencemarksabovelines.leftuphoriz,
    referencemarksabovelines.leftupvert,
    referencemarksabovelines.rightdownhoriz,
    referencemarksabovelines.rightdownvert
   FROM public.referencemarksabovelines
  WHERE (referencemarksabovelines.rowdeletiontimestamp IS NULL);


--
-- TOC entry 275 (class 1259 OID 17493)
-- Name: pagecollections_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.pagecollections ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.pagecollections_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 292 (class 1259 OID 33514)
-- Name: pages_pageid_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.pages ALTER COLUMN pageid ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.pages_pageid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 239 (class 1259 OID 16553)
-- Name: provinces; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.provinces (
    id integer NOT NULL,
    name character varying(100) NOT NULL
);


--
-- TOC entry 276 (class 1259 OID 17495)
-- Name: provinces_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.provinces ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.provinces_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 240 (class 1259 OID 16556)
-- Name: publishing; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.publishing (
    id integer NOT NULL,
    metadataid integer NOT NULL,
    publishingyear integer NOT NULL,
    publisher text NOT NULL,
    noofpagesorsheets integer NOT NULL,
    pageorsheet character varying(5) NOT NULL,
    bookformat character varying(10) NOT NULL,
    publishinglocation integer
);


--
-- TOC entry 277 (class 1259 OID 17497)
-- Name: publishing_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.publishing ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.publishing_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 241 (class 1259 OID 16562)
-- Name: publishinglocations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.publishinglocations (
    id integer NOT NULL,
    provinceid integer NOT NULL,
    country character varying(100),
    town character varying(100),
    house character varying(100)
);


--
-- TOC entry 278 (class 1259 OID 17499)
-- Name: publishinglocations_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.publishinglocations ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.publishinglocations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 279 (class 1259 OID 17501)
-- Name: referencemarksabovelines_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.referencemarksabovelines ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.referencemarksabovelines_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 280 (class 1259 OID 17503)
-- Name: referencemarksonmargin_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.referencemarksonmargin ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.referencemarksonmargin_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 244 (class 1259 OID 16571)
-- Name: rocccodes; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.rocccodes (
    id integer NOT NULL,
    metadataid integer NOT NULL,
    difficultylevel integer NOT NULL,
    writingtype character(1) NOT NULL,
    annotationlevel character(1) NOT NULL,
    century character varying(5) NOT NULL,
    fiftyyears integer NOT NULL,
    printingyear integer NOT NULL
);


--
-- TOC entry 281 (class 1259 OID 17505)
-- Name: rocccodes_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.rocccodes ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.rocccodes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 245 (class 1259 OID 16574)
-- Name: rocccodezones; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.rocccodezones (
    rocccodeid integer NOT NULL,
    zone character varying(3) NOT NULL
);


--
-- TOC entry 246 (class 1259 OID 16577)
-- Name: scannedcopies; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.scannedcopies (
    id integer NOT NULL,
    metadataid integer NOT NULL,
    library character varying(255) NOT NULL,
    librarycode character varying(255) NOT NULL
);


--
-- TOC entry 282 (class 1259 OID 17507)
-- Name: scannedcopies_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.scannedcopies ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.scannedcopies_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 247 (class 1259 OID 16583)
-- Name: sequences; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.sequences (
    id integer NOT NULL,
    alignmenttype character varying(10) NOT NULL,
    characteroffset integer NOT NULL,
    characterlength integer NOT NULL,
    letterlength integer NOT NULL
);


--
-- TOC entry 283 (class 1259 OID 17509)
-- Name: sequences_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.sequences ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.sequences_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 248 (class 1259 OID 16586)
-- Name: sheettypes; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.sheettypes (
    id character varying(5) NOT NULL
);


--
-- TOC entry 284 (class 1259 OID 17511)
-- Name: titles_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.titles ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.titles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 250 (class 1259 OID 16596)
-- Name: translations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.translations (
    id integer NOT NULL,
    metadataid integer NOT NULL,
    originallanguage character varying(50) NOT NULL,
    originalauthor character varying(255),
    translator character varying(255),
    sectranslator character varying(1023)
);


--
-- TOC entry 285 (class 1259 OID 17513)
-- Name: translations_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

ALTER TABLE public.translations ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.translations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 288 (class 1259 OID 17878)
-- Name: user_annotations; Type: VIEW; Schema: public; Owner: -
--

CREATE VIEW public.user_annotations AS
 WITH total_counts AS (
         SELECT s.table_name,
            sum(s.num_annotations) AS total_annotations
           FROM public.object_statistics s
          GROUP BY s.table_name
        )
 SELECT t.table_name,
    os.id AS annotator_id,
    os.name AS first_name,
    os.family_name AS last_name,
    os.num_annotations,
    t.total_annotations
   FROM (total_counts t
     JOIN public.object_statistics os ON ((t.table_name = os.table_name)));


--
-- TOC entry 251 (class 1259 OID 16602)
-- Name: writingtypes; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.writingtypes (
    id character varying(2) NOT NULL,
    name character varying(100) NOT NULL
);


--
-- TOC entry 252 (class 1259 OID 16605)
-- Name: zones; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.zones (
    id character varying(2) NOT NULL,
    name character varying(100) NOT NULL
);


--
-- TOC entry 3907 (class 2606 OID 16609)
-- Name: accoladedirections accoladedirections_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.accoladedirections
    ADD CONSTRAINT accoladedirections_pkey PRIMARY KEY (id);


--
-- TOC entry 3909 (class 2606 OID 16611)
-- Name: accolades accolades_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.accolades
    ADD CONSTRAINT accolades_pkey PRIMARY KEY (id);


--
-- TOC entry 3911 (class 2606 OID 16613)
-- Name: alignmenttypes alignmenttypes_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.alignmenttypes
    ADD CONSTRAINT alignmenttypes_pkey PRIMARY KEY (id);


--
-- TOC entry 3913 (class 2606 OID 16615)
-- Name: annotationlevels annotationlevels_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.annotationlevels
    ADD CONSTRAINT annotationlevels_pkey PRIMARY KEY (id);


--
-- TOC entry 3917 (class 2606 OID 16619)
-- Name: annotationprogress annotationprogress_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.annotationprogress
    ADD CONSTRAINT annotationprogress_pkey PRIMARY KEY (id);


--
-- TOC entry 3919 (class 2606 OID 16621)
-- Name: authorbiographylines authorbiographylines_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.authorbiographylines
    ADD CONSTRAINT authorbiographylines_pkey PRIMARY KEY (id);


--
-- TOC entry 3921 (class 2606 OID 16623)
-- Name: authornameadditions authornameadditions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.authornameadditions
    ADD CONSTRAINT authornameadditions_pkey PRIMARY KEY (id);


--
-- TOC entry 3923 (class 2606 OID 16625)
-- Name: authors authors_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.authors
    ADD CONSTRAINT authors_pkey PRIMARY KEY (id);


--
-- TOC entry 3925 (class 2606 OID 16627)
-- Name: bookformats bookformats_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.bookformats
    ADD CONSTRAINT bookformats_pkey PRIMARY KEY (id);


--
-- TOC entry 3927 (class 2606 OID 16629)
-- Name: centuries centuries_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.centuries
    ADD CONSTRAINT centuries_pkey PRIMARY KEY (id);


--
-- TOC entry 3929 (class 2606 OID 16631)
-- Name: columnpositions columnpositions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.columnpositions
    ADD CONSTRAINT columnpositions_pkey PRIMARY KEY (id);


--
-- TOC entry 3933 (class 2606 OID 16635)
-- Name: columns columns_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.columns
    ADD CONSTRAINT columns_pkey PRIMARY KEY (id);


--
-- TOC entry 3935 (class 2606 OID 16637)
-- Name: contentdescriptions contentdescriptions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.contentdescriptions
    ADD CONSTRAINT contentdescriptions_pkey PRIMARY KEY (id);


--
-- TOC entry 3937 (class 2606 OID 16639)
-- Name: corrections corrections_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.corrections
    ADD CONSTRAINT corrections_pkey PRIMARY KEY (id);


--
-- TOC entry 3939 (class 2606 OID 16641)
-- Name: creationlocations creationlocations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.creationlocations
    ADD CONSTRAINT creationlocations_pkey PRIMARY KEY (id);


--
-- TOC entry 3941 (class 2606 OID 16643)
-- Name: creations creations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.creations
    ADD CONSTRAINT creations_pkey PRIMARY KEY (id);


--
-- TOC entry 3943 (class 2606 OID 16645)
-- Name: creationsecondaryauthors creationsecondaryauthors_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.creationsecondaryauthors
    ADD CONSTRAINT creationsecondaryauthors_pkey PRIMARY KEY (creationid, authorid);


--
-- TOC entry 3945 (class 2606 OID 16647)
-- Name: difficultycriteria difficultycriteria_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.difficultycriteria
    ADD CONSTRAINT difficultycriteria_pkey PRIMARY KEY (id);


--
-- TOC entry 3947 (class 2606 OID 16649)
-- Name: difficultylevels difficultylevels_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.difficultylevels
    ADD CONSTRAINT difficultylevels_pkey PRIMARY KEY (id);


--
-- TOC entry 3951 (class 2606 OID 16653)
-- Name: dimensions dimensions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.dimensions
    ADD CONSTRAINT dimensions_pkey PRIMARY KEY (id);


--
-- TOC entry 3953 (class 2606 OID 16655)
-- Name: formatdescriptions formatdescriptions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.formatdescriptions
    ADD CONSTRAINT formatdescriptions_pkey PRIMARY KEY (id);


--
-- TOC entry 3955 (class 2606 OID 16657)
-- Name: frames frames_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.frames
    ADD CONSTRAINT frames_pkey PRIMARY KEY (id);


--
-- TOC entry 3957 (class 2606 OID 16659)
-- Name: frontispieces frontispieces_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.frontispieces
    ADD CONSTRAINT frontispieces_pkey PRIMARY KEY (id);


--
-- TOC entry 3959 (class 2606 OID 16661)
-- Name: halfcenturies halfcenturies_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.halfcenturies
    ADD CONSTRAINT halfcenturies_pkey PRIMARY KEY (id);


--
-- TOC entry 3961 (class 2606 OID 16663)
-- Name: initialletters initialletters_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.initialletters
    ADD CONSTRAINT initialletters_pkey PRIMARY KEY (id);


--
-- TOC entry 3963 (class 2606 OID 16665)
-- Name: letteralignments letteralignments_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.letteralignments
    ADD CONSTRAINT letteralignments_pkey PRIMARY KEY (id);


--
-- TOC entry 3965 (class 2606 OID 16667)
-- Name: letters letters_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.letters
    ADD CONSTRAINT letters_pkey PRIMARY KEY (id);


--
-- TOC entry 3967 (class 2606 OID 16669)
-- Name: letterssequences letterssequences_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.letterssequences
    ADD CONSTRAINT letterssequences_pkey PRIMARY KEY (sequenceid, letterid);


--
-- TOC entry 3969 (class 2606 OID 16671)
-- Name: lines lines_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.lines
    ADD CONSTRAINT lines_pkey PRIMARY KEY (id);


--
-- TOC entry 3971 (class 2606 OID 16673)
-- Name: linetypes linetypes_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.linetypes
    ADD CONSTRAINT linetypes_pkey PRIMARY KEY (id);


--
-- TOC entry 3973 (class 2606 OID 16675)
-- Name: marginals marginals_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.marginals
    ADD CONSTRAINT marginals_pkey PRIMARY KEY (id);


--
-- TOC entry 3975 (class 2606 OID 16677)
-- Name: marginalwritings marginalwritings_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.marginalwritings
    ADD CONSTRAINT marginalwritings_pkey PRIMARY KEY (id);


--
-- TOC entry 3977 (class 2606 OID 16679)
-- Name: modifiers modifiers_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.modifiers
    ADD CONSTRAINT modifiers_pkey PRIMARY KEY (id);


--
-- TOC entry 3979 (class 2606 OID 16681)
-- Name: objectannotators objectannotators_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.objectannotators
    ADD CONSTRAINT objectannotators_pkey PRIMARY KEY (id);


--
-- TOC entry 3983 (class 2606 OID 16685)
-- Name: ornaments ornaments_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ornaments
    ADD CONSTRAINT ornaments_pkey PRIMARY KEY (id);


--
-- TOC entry 3985 (class 2606 OID 16687)
-- Name: outoflineletters outoflineletters_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.outoflineletters
    ADD CONSTRAINT outoflineletters_pkey PRIMARY KEY (id);


--
-- TOC entry 3987 (class 2606 OID 16689)
-- Name: pagecollectionmetadata pagecollectionmetadata_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pagecollectionmetadata
    ADD CONSTRAINT pagecollectionmetadata_pkey PRIMARY KEY (roccid);


--
-- TOC entry 3991 (class 2606 OID 16693)
-- Name: pagecollections pagecollections_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pagecollections
    ADD CONSTRAINT pagecollections_pkey PRIMARY KEY (id);


--
-- TOC entry 3993 (class 2606 OID 16695)
-- Name: pages pages_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages
    ADD CONSTRAINT pages_pkey PRIMARY KEY (pageid);


--
-- TOC entry 3997 (class 2606 OID 16699)
-- Name: provinces provinces_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.provinces
    ADD CONSTRAINT provinces_pkey PRIMARY KEY (id);


--
-- TOC entry 4001 (class 2606 OID 16703)
-- Name: publishing publishing_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.publishing
    ADD CONSTRAINT publishing_pkey PRIMARY KEY (id);


--
-- TOC entry 4003 (class 2606 OID 16705)
-- Name: publishinglocations publishinglocations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.publishinglocations
    ADD CONSTRAINT publishinglocations_pkey PRIMARY KEY (id);


--
-- TOC entry 4005 (class 2606 OID 16707)
-- Name: referencemarksabovelines referencemarksabovelines_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.referencemarksabovelines
    ADD CONSTRAINT referencemarksabovelines_pkey PRIMARY KEY (id);


--
-- TOC entry 4007 (class 2606 OID 16709)
-- Name: referencemarksonmargin referencemarksonmargin_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.referencemarksonmargin
    ADD CONSTRAINT referencemarksonmargin_pkey PRIMARY KEY (id);


--
-- TOC entry 4009 (class 2606 OID 16711)
-- Name: rocccodes rocccodes_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.rocccodes
    ADD CONSTRAINT rocccodes_pkey PRIMARY KEY (id);


--
-- TOC entry 4011 (class 2606 OID 16713)
-- Name: rocccodezones rocccodezones_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.rocccodezones
    ADD CONSTRAINT rocccodezones_pkey PRIMARY KEY (rocccodeid, zone);


--
-- TOC entry 4013 (class 2606 OID 16715)
-- Name: scannedcopies scannedcopies_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.scannedcopies
    ADD CONSTRAINT scannedcopies_pkey PRIMARY KEY (id);


--
-- TOC entry 4015 (class 2606 OID 16717)
-- Name: sequences sequences_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sequences
    ADD CONSTRAINT sequences_pkey PRIMARY KEY (id);


--
-- TOC entry 4017 (class 2606 OID 16719)
-- Name: sheettypes sheettypes_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sheettypes
    ADD CONSTRAINT sheettypes_pkey PRIMARY KEY (id);


--
-- TOC entry 4019 (class 2606 OID 16721)
-- Name: titles titles_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.titles
    ADD CONSTRAINT titles_pkey PRIMARY KEY (id);


--
-- TOC entry 4021 (class 2606 OID 16723)
-- Name: translations translations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.translations
    ADD CONSTRAINT translations_pkey PRIMARY KEY (id);


--
-- TOC entry 3915 (class 2606 OID 16617)
-- Name: annotationlevels ux_annotationlevels_name; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.annotationlevels
    ADD CONSTRAINT ux_annotationlevels_name UNIQUE (name);


--
-- TOC entry 3931 (class 2606 OID 16633)
-- Name: columnpositions ux_columnpositions_name; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.columnpositions
    ADD CONSTRAINT ux_columnpositions_name UNIQUE (name);


--
-- TOC entry 3949 (class 2606 OID 16651)
-- Name: difficultylevels ux_difficultylevels_name; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.difficultylevels
    ADD CONSTRAINT ux_difficultylevels_name UNIQUE (name);


--
-- TOC entry 3981 (class 2606 OID 16683)
-- Name: objectannotators ux_objectannotators_email; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.objectannotators
    ADD CONSTRAINT ux_objectannotators_email UNIQUE (email);


--
-- TOC entry 3989 (class 2606 OID 16691)
-- Name: pagecollectionmetadata ux_pagecollectionmetadata_pagecollectionurl; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pagecollectionmetadata
    ADD CONSTRAINT ux_pagecollectionmetadata_pagecollectionurl UNIQUE (pagecollectionurl);


--
-- TOC entry 3995 (class 2606 OID 16697)
-- Name: pages ux_pages_collectionid_pagenum; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages
    ADD CONSTRAINT ux_pages_collectionid_pagenum UNIQUE (pagecollectionid, pagenumber);


--
-- TOC entry 3999 (class 2606 OID 16701)
-- Name: provinces ux_provinces_name; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.provinces
    ADD CONSTRAINT ux_provinces_name UNIQUE (name);


--
-- TOC entry 4023 (class 2606 OID 16727)
-- Name: writingtypes ux_writingtypes_name; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.writingtypes
    ADD CONSTRAINT ux_writingtypes_name UNIQUE (name);


--
-- TOC entry 4027 (class 2606 OID 16731)
-- Name: zones ux_zones_name; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.zones
    ADD CONSTRAINT ux_zones_name UNIQUE (name);


--
-- TOC entry 4025 (class 2606 OID 16725)
-- Name: writingtypes writingtypes_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.writingtypes
    ADD CONSTRAINT writingtypes_pkey PRIMARY KEY (id);


--
-- TOC entry 4029 (class 2606 OID 16729)
-- Name: zones zones_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.zones
    ADD CONSTRAINT zones_pkey PRIMARY KEY (id);


--
-- TOC entry 4243 (class 2618 OID 17863)
-- Name: object_statistics _RETURN; Type: RULE; Schema: public; Owner: -
--

CREATE OR REPLACE VIEW public.object_statistics AS
 SELECT 'Acolade'::text AS table_name,
    u.id,
    u.name,
    u.family_name,
    count(a.id) AS num_annotations
   FROM (public.objectannotators u
     LEFT JOIN public.accolades a ON ((a.objectannotator = u.id)))
  WHERE (a.rowdeletiontimestamp IS NULL)
  GROUP BY u.id
UNION ALL
 SELECT 'Coloane'::text AS table_name,
    u.id,
    u.name,
    u.family_name,
    count(t.id) AS num_annotations
   FROM (public.objectannotators u
     LEFT JOIN public.columns t ON ((t.objectannotator = u.id)))
  WHERE (t.rowdeletiontimestamp IS NULL)
  GROUP BY u.id
UNION ALL
 SELECT 'Chenare'::text AS table_name,
    u.id,
    u.name,
    u.family_name,
    count(t.id) AS num_annotations
   FROM (public.objectannotators u
     LEFT JOIN public.frames t ON ((t.objectannotator = u.id)))
  WHERE (t.rowdeletiontimestamp IS NULL)
  GROUP BY u.id
UNION ALL
 SELECT 'Frontispicii'::text AS table_name,
    u.id,
    u.name,
    u.family_name,
    count(t.id) AS num_annotations
   FROM (public.objectannotators u
     LEFT JOIN public.frontispieces t ON ((t.objectannotator = u.id)))
  WHERE (t.rowdeletiontimestamp IS NULL)
  GROUP BY u.id
UNION ALL
 SELECT 'Litere ornate'::text AS table_name,
    u.id,
    u.name,
    u.family_name,
    count(t.id) AS num_annotations
   FROM (public.objectannotators u
     LEFT JOIN public.initialletters t ON ((t.objectannotator = u.id)))
  WHERE (t.rowdeletiontimestamp IS NULL)
  GROUP BY u.id
UNION ALL
 SELECT 'Litere'::text AS table_name,
    u.id,
    u.name,
    u.family_name,
    count(t.id) AS num_annotations
   FROM (public.objectannotators u
     LEFT JOIN public.letters t ON ((t.objectannotator = u.id)))
  WHERE (t.rowdeletiontimestamp IS NULL)
  GROUP BY u.id
UNION ALL
 SELECT 'Linii'::text AS table_name,
    u.id,
    u.name,
    u.family_name,
    count(t.id) AS num_annotations
   FROM (public.objectannotators u
     LEFT JOIN public.lines t ON ((t.objectannotator = u.id)))
  WHERE (t.rowdeletiontimestamp IS NULL)
  GROUP BY u.id
UNION ALL
 SELECT 'Manșete'::text AS table_name,
    u.id,
    u.name,
    u.family_name,
    count(t.id) AS num_annotations
   FROM (public.objectannotators u
     LEFT JOIN public.marginals t ON ((t.objectannotator = u.id)))
  WHERE (t.rowdeletiontimestamp IS NULL)
  GROUP BY u.id
UNION ALL
 SELECT 'Modificatori'::text AS table_name,
    u.id,
    u.name,
    u.family_name,
    count(t.id) AS num_annotations
   FROM (public.objectannotators u
     LEFT JOIN public.modifiers t ON ((t.objectannotator = u.id)))
  WHERE (t.rowdeletiontimestamp IS NULL)
  GROUP BY u.id
UNION ALL
 SELECT 'Ornamente'::text AS table_name,
    u.id,
    u.name,
    u.family_name,
    count(t.id) AS num_annotations
   FROM (public.objectannotators u
     LEFT JOIN public.ornaments t ON ((t.objectannotator = u.id)))
  WHERE (t.rowdeletiontimestamp IS NULL)
  GROUP BY u.id
UNION ALL
 SELECT 'Litere în afara liniilor'::text AS table_name,
    u.id,
    u.name,
    u.family_name,
    count(t.id) AS num_annotations
   FROM (public.objectannotators u
     LEFT JOIN public.outoflineletters t ON ((t.objectannotator = u.id)))
  WHERE (t.rowdeletiontimestamp IS NULL)
  GROUP BY u.id
UNION ALL
 SELECT 'Referințe deasupra liniilor'::text AS table_name,
    u.id,
    u.name,
    u.family_name,
    count(t.id) AS num_annotations
   FROM (public.objectannotators u
     LEFT JOIN public.referencemarksabovelines t ON ((t.objectannotator = u.id)))
  WHERE (t.rowdeletiontimestamp IS NULL)
  GROUP BY u.id
UNION ALL
 SELECT 'Referințe pe manșetă'::text AS table_name,
    u.id,
    u.name,
    u.family_name,
    count(t.id) AS num_annotations
   FROM (public.objectannotators u
     LEFT JOIN public.referencemarksonmargin t ON ((t.objectannotator = u.id)))
  WHERE (t.rowdeletiontimestamp IS NULL)
  GROUP BY u.id
UNION ALL
 SELECT 'Titluri'::text AS table_name,
    u.id,
    u.name,
    u.family_name,
    count(t.id) AS num_annotations
   FROM (public.objectannotators u
     LEFT JOIN public.titles t ON ((t.objectannotator = u.id)))
  WHERE (t.rowdeletiontimestamp IS NULL)
  GROUP BY u.id;


--
-- TOC entry 4030 (class 2606 OID 17515)
-- Name: accolades fk_accolades_accoladedirections; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.accolades
    ADD CONSTRAINT fk_accolades_accoladedirections FOREIGN KEY (direction) REFERENCES public.accoladedirections(id);


--
-- TOC entry 4032 (class 2606 OID 17790)
-- Name: accolades fk_accolades_objectannotators; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.accolades
    ADD CONSTRAINT fk_accolades_objectannotators FOREIGN KEY (objectannotator) REFERENCES public.objectannotators(id);


--
-- TOC entry 4033 (class 2606 OID 17923)
-- Name: accolades fk_accolades_objectannotators_delete; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.accolades
    ADD CONSTRAINT fk_accolades_objectannotators_delete FOREIGN KEY (deletionuser) REFERENCES public.objectannotators(id);


--
-- TOC entry 4031 (class 2606 OID 17520)
-- Name: accolades fk_accolades_pages; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.accolades
    ADD CONSTRAINT fk_accolades_pages FOREIGN KEY (pageid) REFERENCES public.pages(pageid);


--
-- TOC entry 4034 (class 2606 OID 17600)
-- Name: annotationprogress fk_annotationprogress_objectannotators; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.annotationprogress
    ADD CONSTRAINT fk_annotationprogress_objectannotators FOREIGN KEY (lastannotator) REFERENCES public.objectannotators(id);


--
-- TOC entry 4035 (class 2606 OID 17605)
-- Name: annotationprogress fk_annotationprogress_pagecollections; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.annotationprogress
    ADD CONSTRAINT fk_annotationprogress_pagecollections FOREIGN KEY (collectionid) REFERENCES public.pagecollections(id);


--
-- TOC entry 4036 (class 2606 OID 17610)
-- Name: authorbiographylines fk_authorbiographylines_authors; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.authorbiographylines
    ADD CONSTRAINT fk_authorbiographylines_authors FOREIGN KEY (authorid) REFERENCES public.authors(id);


--
-- TOC entry 4037 (class 2606 OID 17615)
-- Name: authornameadditions fk_authornameadditions_authors; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.authornameadditions
    ADD CONSTRAINT fk_authornameadditions_authors FOREIGN KEY (authorid) REFERENCES public.authors(id);


--
-- TOC entry 4038 (class 2606 OID 17620)
-- Name: columns fk_columns_columnpositions; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.columns
    ADD CONSTRAINT fk_columns_columnpositions FOREIGN KEY (columnposition) REFERENCES public.columnpositions(id);


--
-- TOC entry 4040 (class 2606 OID 17795)
-- Name: columns fk_columns_objectannotators; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.columns
    ADD CONSTRAINT fk_columns_objectannotators FOREIGN KEY (objectannotator) REFERENCES public.objectannotators(id);


--
-- TOC entry 4041 (class 2606 OID 17928)
-- Name: columns fk_columns_objectannotators_delete; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.columns
    ADD CONSTRAINT fk_columns_objectannotators_delete FOREIGN KEY (deletionuser) REFERENCES public.objectannotators(id);


--
-- TOC entry 4039 (class 2606 OID 17625)
-- Name: columns fk_columns_pages; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.columns
    ADD CONSTRAINT fk_columns_pages FOREIGN KEY (pageid) REFERENCES public.pages(pageid);


--
-- TOC entry 4042 (class 2606 OID 17630)
-- Name: contentdescriptions fk_contentdescriptions_pagecollectionmetadata; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.contentdescriptions
    ADD CONSTRAINT fk_contentdescriptions_pagecollectionmetadata FOREIGN KEY (metadataid) REFERENCES public.pagecollectionmetadata(roccid);


--
-- TOC entry 4043 (class 2606 OID 17635)
-- Name: creationlocations fk_creationlocations_provinces; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.creationlocations
    ADD CONSTRAINT fk_creationlocations_provinces FOREIGN KEY (provinceid) REFERENCES public.provinces(id);


--
-- TOC entry 4044 (class 2606 OID 17640)
-- Name: creations fk_creations_authors; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.creations
    ADD CONSTRAINT fk_creations_authors FOREIGN KEY (authorid) REFERENCES public.authors(id);


--
-- TOC entry 4045 (class 2606 OID 17645)
-- Name: creations fk_creations_creationlocations; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.creations
    ADD CONSTRAINT fk_creations_creationlocations FOREIGN KEY (locationid) REFERENCES public.creationlocations(id);


--
-- TOC entry 4046 (class 2606 OID 17650)
-- Name: creations fk_creations_pagecollectionmetadata; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.creations
    ADD CONSTRAINT fk_creations_pagecollectionmetadata FOREIGN KEY (metadataid) REFERENCES public.pagecollectionmetadata(roccid);


--
-- TOC entry 4047 (class 2606 OID 17655)
-- Name: creationsecondaryauthors fk_creationsecondaryauthors_authors; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.creationsecondaryauthors
    ADD CONSTRAINT fk_creationsecondaryauthors_authors FOREIGN KEY (authorid) REFERENCES public.authors(id);


--
-- TOC entry 4048 (class 2606 OID 17660)
-- Name: creationsecondaryauthors fk_creationsecondaryauthors_creations; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.creationsecondaryauthors
    ADD CONSTRAINT fk_creationsecondaryauthors_creations FOREIGN KEY (creationid) REFERENCES public.creations(id);


--
-- TOC entry 4049 (class 2606 OID 17665)
-- Name: difficultycriteria fk_difficultycriteria_corrections; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.difficultycriteria
    ADD CONSTRAINT fk_difficultycriteria_corrections FOREIGN KEY (corrections) REFERENCES public.corrections(id);


--
-- TOC entry 4050 (class 2606 OID 17670)
-- Name: difficultycriteria fk_difficultycriteria_marginalwritings; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.difficultycriteria
    ADD CONSTRAINT fk_difficultycriteria_marginalwritings FOREIGN KEY (marginalwriting) REFERENCES public.marginalwritings(id);


--
-- TOC entry 4051 (class 2606 OID 17675)
-- Name: difficultycriteria fk_difficultycriteria_pages; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.difficultycriteria
    ADD CONSTRAINT fk_difficultycriteria_pages FOREIGN KEY (pageid) REFERENCES public.pages(pageid);


--
-- TOC entry 4052 (class 2606 OID 17680)
-- Name: dimensions fk_dimensions_publishing; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.dimensions
    ADD CONSTRAINT fk_dimensions_publishing FOREIGN KEY (publishingid) REFERENCES public.publishing(id);


--
-- TOC entry 4053 (class 2606 OID 17685)
-- Name: formatdescriptions fk_formatdescriptions_pagecollectionmetadata; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.formatdescriptions
    ADD CONSTRAINT fk_formatdescriptions_pagecollectionmetadata FOREIGN KEY (metadataid) REFERENCES public.pagecollectionmetadata(roccid);


--
-- TOC entry 4055 (class 2606 OID 17800)
-- Name: frames fk_frames_objectannotators; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.frames
    ADD CONSTRAINT fk_frames_objectannotators FOREIGN KEY (objectannotator) REFERENCES public.objectannotators(id);


--
-- TOC entry 4056 (class 2606 OID 17934)
-- Name: frames fk_frames_objectannotators_delete; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.frames
    ADD CONSTRAINT fk_frames_objectannotators_delete FOREIGN KEY (deletionuser) REFERENCES public.objectannotators(id);


--
-- TOC entry 4054 (class 2606 OID 17690)
-- Name: frames fk_frames_pages; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.frames
    ADD CONSTRAINT fk_frames_pages FOREIGN KEY (pageid) REFERENCES public.pages(pageid);


--
-- TOC entry 4058 (class 2606 OID 17805)
-- Name: frontispieces fk_frontispieces_objectannotators; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.frontispieces
    ADD CONSTRAINT fk_frontispieces_objectannotators FOREIGN KEY (objectannotator) REFERENCES public.objectannotators(id);


--
-- TOC entry 4059 (class 2606 OID 17940)
-- Name: frontispieces fk_frontispieces_objectannotators_delete; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.frontispieces
    ADD CONSTRAINT fk_frontispieces_objectannotators_delete FOREIGN KEY (deletionuser) REFERENCES public.objectannotators(id);


--
-- TOC entry 4057 (class 2606 OID 17695)
-- Name: frontispieces fk_frontispieces_pages; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.frontispieces
    ADD CONSTRAINT fk_frontispieces_pages FOREIGN KEY (pageid) REFERENCES public.pages(pageid);


--
-- TOC entry 4061 (class 2606 OID 17810)
-- Name: initialletters fk_initialletters_objectannotators; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.initialletters
    ADD CONSTRAINT fk_initialletters_objectannotators FOREIGN KEY (objectannotator) REFERENCES public.objectannotators(id);


--
-- TOC entry 4062 (class 2606 OID 17946)
-- Name: initialletters fk_initialletters_objectannotators_delete; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.initialletters
    ADD CONSTRAINT fk_initialletters_objectannotators_delete FOREIGN KEY (deletionuser) REFERENCES public.objectannotators(id);


--
-- TOC entry 4060 (class 2606 OID 17700)
-- Name: initialletters fk_initialletters_pages; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.initialletters
    ADD CONSTRAINT fk_initialletters_pages FOREIGN KEY (pageid) REFERENCES public.pages(pageid);


--
-- TOC entry 4063 (class 2606 OID 17705)
-- Name: letteralignments fk_letteralignments_alignmenttypes; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.letteralignments
    ADD CONSTRAINT fk_letteralignments_alignmenttypes FOREIGN KEY (alignmenttype) REFERENCES public.alignmenttypes(id);


--
-- TOC entry 4064 (class 2606 OID 17710)
-- Name: letteralignments fk_letteralignments_letters; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.letteralignments
    ADD CONSTRAINT fk_letteralignments_letters FOREIGN KEY (letterid) REFERENCES public.letters(id);


--
-- TOC entry 4066 (class 2606 OID 17815)
-- Name: letters fk_letters_objectannotators; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.letters
    ADD CONSTRAINT fk_letters_objectannotators FOREIGN KEY (objectannotator) REFERENCES public.objectannotators(id);


--
-- TOC entry 4067 (class 2606 OID 17952)
-- Name: letters fk_letters_objectannotators_delete; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.letters
    ADD CONSTRAINT fk_letters_objectannotators_delete FOREIGN KEY (deletionuser) REFERENCES public.objectannotators(id);


--
-- TOC entry 4065 (class 2606 OID 17715)
-- Name: letters fk_letters_pages; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.letters
    ADD CONSTRAINT fk_letters_pages FOREIGN KEY (pageid) REFERENCES public.pages(pageid);


--
-- TOC entry 4068 (class 2606 OID 17720)
-- Name: letterssequences fk_letterssequences_letters; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.letterssequences
    ADD CONSTRAINT fk_letterssequences_letters FOREIGN KEY (letterid) REFERENCES public.letters(id);


--
-- TOC entry 4069 (class 2606 OID 17725)
-- Name: letterssequences fk_letterssequences_sequences; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.letterssequences
    ADD CONSTRAINT fk_letterssequences_sequences FOREIGN KEY (sequenceid) REFERENCES public.sequences(id);


--
-- TOC entry 4070 (class 2606 OID 17730)
-- Name: lines fk_lines_linetypes; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.lines
    ADD CONSTRAINT fk_lines_linetypes FOREIGN KEY (incolumn) REFERENCES public.linetypes(id);


--
-- TOC entry 4072 (class 2606 OID 17820)
-- Name: lines fk_lines_objectannotators; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.lines
    ADD CONSTRAINT fk_lines_objectannotators FOREIGN KEY (objectannotator) REFERENCES public.objectannotators(id);


--
-- TOC entry 4073 (class 2606 OID 17958)
-- Name: lines fk_lines_objectannotators_delete; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.lines
    ADD CONSTRAINT fk_lines_objectannotators_delete FOREIGN KEY (deletionuser) REFERENCES public.objectannotators(id);


--
-- TOC entry 4071 (class 2606 OID 17735)
-- Name: lines fk_lines_pages; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.lines
    ADD CONSTRAINT fk_lines_pages FOREIGN KEY (pageid) REFERENCES public.pages(pageid);


--
-- TOC entry 4075 (class 2606 OID 17825)
-- Name: marginals fk_marginals_objectannotators; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.marginals
    ADD CONSTRAINT fk_marginals_objectannotators FOREIGN KEY (objectannotator) REFERENCES public.objectannotators(id);


--
-- TOC entry 4076 (class 2606 OID 17964)
-- Name: marginals fk_marginals_objectannotators_delete; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.marginals
    ADD CONSTRAINT fk_marginals_objectannotators_delete FOREIGN KEY (deletionuser) REFERENCES public.objectannotators(id);


--
-- TOC entry 4074 (class 2606 OID 17740)
-- Name: marginals fk_marginals_pages; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.marginals
    ADD CONSTRAINT fk_marginals_pages FOREIGN KEY (pageid) REFERENCES public.pages(pageid);


--
-- TOC entry 4078 (class 2606 OID 17830)
-- Name: modifiers fk_modifiers_objectannotators; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.modifiers
    ADD CONSTRAINT fk_modifiers_objectannotators FOREIGN KEY (objectannotator) REFERENCES public.objectannotators(id);


--
-- TOC entry 4079 (class 2606 OID 17970)
-- Name: modifiers fk_modifiers_objectannotators_delete; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.modifiers
    ADD CONSTRAINT fk_modifiers_objectannotators_delete FOREIGN KEY (deletionuser) REFERENCES public.objectannotators(id);


--
-- TOC entry 4077 (class 2606 OID 17745)
-- Name: modifiers fk_modifiers_pages; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.modifiers
    ADD CONSTRAINT fk_modifiers_pages FOREIGN KEY (pageid) REFERENCES public.pages(pageid);


--
-- TOC entry 4087 (class 2606 OID 17765)
-- Name: pages fk_onepageimages_pagecollections; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pages
    ADD CONSTRAINT fk_onepageimages_pagecollections FOREIGN KEY (pagecollectionid) REFERENCES public.pagecollections(id);


--
-- TOC entry 4081 (class 2606 OID 17835)
-- Name: ornaments fk_ornaments_objectannotators; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ornaments
    ADD CONSTRAINT fk_ornaments_objectannotators FOREIGN KEY (objectannotator) REFERENCES public.objectannotators(id);


--
-- TOC entry 4082 (class 2606 OID 17976)
-- Name: ornaments fk_ornaments_objectannotators_delete; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ornaments
    ADD CONSTRAINT fk_ornaments_objectannotators_delete FOREIGN KEY (deletionuser) REFERENCES public.objectannotators(id);


--
-- TOC entry 4080 (class 2606 OID 17750)
-- Name: ornaments fk_ornaments_pages; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.ornaments
    ADD CONSTRAINT fk_ornaments_pages FOREIGN KEY (pageid) REFERENCES public.pages(pageid);


--
-- TOC entry 4084 (class 2606 OID 17840)
-- Name: outoflineletters fk_outoflineletters_objectannotators; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.outoflineletters
    ADD CONSTRAINT fk_outoflineletters_objectannotators FOREIGN KEY (objectannotator) REFERENCES public.objectannotators(id);


--
-- TOC entry 4085 (class 2606 OID 17982)
-- Name: outoflineletters fk_outoflineletters_objectannotators_delete; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.outoflineletters
    ADD CONSTRAINT fk_outoflineletters_objectannotators_delete FOREIGN KEY (deletionuser) REFERENCES public.objectannotators(id);


--
-- TOC entry 4083 (class 2606 OID 17755)
-- Name: outoflineletters fk_outoflineletters_pages; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.outoflineletters
    ADD CONSTRAINT fk_outoflineletters_pages FOREIGN KEY (pageid) REFERENCES public.pages(pageid);


--
-- TOC entry 4086 (class 2606 OID 17760)
-- Name: pagecollectionmetadata fk_pagecollectionmetadata_pagecollections; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pagecollectionmetadata
    ADD CONSTRAINT fk_pagecollectionmetadata_pagecollections FOREIGN KEY (pagecollectionid) REFERENCES public.pagecollections(id);


--
-- TOC entry 4088 (class 2606 OID 17525)
-- Name: publishing fk_publishing_bookformats; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.publishing
    ADD CONSTRAINT fk_publishing_bookformats FOREIGN KEY (bookformat) REFERENCES public.bookformats(id);


--
-- TOC entry 4089 (class 2606 OID 17530)
-- Name: publishing fk_publishing_pagecollectionmetadata; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.publishing
    ADD CONSTRAINT fk_publishing_pagecollectionmetadata FOREIGN KEY (metadataid) REFERENCES public.pagecollectionmetadata(roccid);


--
-- TOC entry 4090 (class 2606 OID 17535)
-- Name: publishing fk_publishing_publishinglocations; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.publishing
    ADD CONSTRAINT fk_publishing_publishinglocations FOREIGN KEY (publishinglocation) REFERENCES public.publishinglocations(id);


--
-- TOC entry 4091 (class 2606 OID 17540)
-- Name: publishing fk_publishing_sheettypes; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.publishing
    ADD CONSTRAINT fk_publishing_sheettypes FOREIGN KEY (pageorsheet) REFERENCES public.sheettypes(id);


--
-- TOC entry 4092 (class 2606 OID 17545)
-- Name: publishinglocations fk_publishinglocations_provinces; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.publishinglocations
    ADD CONSTRAINT fk_publishinglocations_provinces FOREIGN KEY (provinceid) REFERENCES public.provinces(id);


--
-- TOC entry 4094 (class 2606 OID 17845)
-- Name: referencemarksabovelines fk_referencemarksabovelines_objectannotators; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.referencemarksabovelines
    ADD CONSTRAINT fk_referencemarksabovelines_objectannotators FOREIGN KEY (objectannotator) REFERENCES public.objectannotators(id);


--
-- TOC entry 4095 (class 2606 OID 17988)
-- Name: referencemarksabovelines fk_referencemarksabovelines_objectannotators_delete; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.referencemarksabovelines
    ADD CONSTRAINT fk_referencemarksabovelines_objectannotators_delete FOREIGN KEY (deletionuser) REFERENCES public.objectannotators(id);


--
-- TOC entry 4093 (class 2606 OID 17550)
-- Name: referencemarksabovelines fk_referencemarksabovelines_pages; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.referencemarksabovelines
    ADD CONSTRAINT fk_referencemarksabovelines_pages FOREIGN KEY (pageid) REFERENCES public.pages(pageid);


--
-- TOC entry 4097 (class 2606 OID 17850)
-- Name: referencemarksonmargin fk_referencemarksonmargin_objectannotators; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.referencemarksonmargin
    ADD CONSTRAINT fk_referencemarksonmargin_objectannotators FOREIGN KEY (objectannotator) REFERENCES public.objectannotators(id);


--
-- TOC entry 4098 (class 2606 OID 17994)
-- Name: referencemarksonmargin fk_referencemarksonmargin_objectannotators_delete; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.referencemarksonmargin
    ADD CONSTRAINT fk_referencemarksonmargin_objectannotators_delete FOREIGN KEY (deletionuser) REFERENCES public.objectannotators(id);


--
-- TOC entry 4096 (class 2606 OID 17555)
-- Name: referencemarksonmargin fk_referencemarksonmargin_pages; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.referencemarksonmargin
    ADD CONSTRAINT fk_referencemarksonmargin_pages FOREIGN KEY (pageid) REFERENCES public.pages(pageid);


--
-- TOC entry 4099 (class 2606 OID 17560)
-- Name: rocccodes fk_rocccodes_annotationlevels; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.rocccodes
    ADD CONSTRAINT fk_rocccodes_annotationlevels FOREIGN KEY (annotationlevel) REFERENCES public.annotationlevels(id);


--
-- TOC entry 4100 (class 2606 OID 17565)
-- Name: rocccodes fk_rocccodes_centuries; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.rocccodes
    ADD CONSTRAINT fk_rocccodes_centuries FOREIGN KEY (century) REFERENCES public.centuries(id);


--
-- TOC entry 4101 (class 2606 OID 17570)
-- Name: rocccodes fk_rocccodes_difficultylevels; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.rocccodes
    ADD CONSTRAINT fk_rocccodes_difficultylevels FOREIGN KEY (difficultylevel) REFERENCES public.difficultylevels(id);


--
-- TOC entry 4102 (class 2606 OID 17575)
-- Name: rocccodes fk_rocccodes_halfcenturies; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.rocccodes
    ADD CONSTRAINT fk_rocccodes_halfcenturies FOREIGN KEY (fiftyyears) REFERENCES public.halfcenturies(id);


--
-- TOC entry 4103 (class 2606 OID 17580)
-- Name: rocccodes fk_rocccodes_pagecollectionmetadata; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.rocccodes
    ADD CONSTRAINT fk_rocccodes_pagecollectionmetadata FOREIGN KEY (metadataid) REFERENCES public.pagecollectionmetadata(roccid);


--
-- TOC entry 4104 (class 2606 OID 17585)
-- Name: rocccodes fk_rocccodes_writingtypes; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.rocccodes
    ADD CONSTRAINT fk_rocccodes_writingtypes FOREIGN KEY (writingtype) REFERENCES public.writingtypes(id);


--
-- TOC entry 4105 (class 2606 OID 17590)
-- Name: rocccodezones fk_rocccodezones_rocccodes; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.rocccodezones
    ADD CONSTRAINT fk_rocccodezones_rocccodes FOREIGN KEY (rocccodeid) REFERENCES public.rocccodes(id);


--
-- TOC entry 4106 (class 2606 OID 17595)
-- Name: rocccodezones fk_rocccodezones_zones; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.rocccodezones
    ADD CONSTRAINT fk_rocccodezones_zones FOREIGN KEY (zone) REFERENCES public.zones(id);


--
-- TOC entry 4107 (class 2606 OID 17770)
-- Name: scannedcopies fk_scannedcopies_pagecollectionmetadata; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.scannedcopies
    ADD CONSTRAINT fk_scannedcopies_pagecollectionmetadata FOREIGN KEY (metadataid) REFERENCES public.pagecollectionmetadata(roccid);


--
-- TOC entry 4108 (class 2606 OID 17775)
-- Name: sequences fk_sequences_alignmenttypes; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sequences
    ADD CONSTRAINT fk_sequences_alignmenttypes FOREIGN KEY (alignmenttype) REFERENCES public.alignmenttypes(id);


--
-- TOC entry 4110 (class 2606 OID 17855)
-- Name: titles fk_titles_objectannotators; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.titles
    ADD CONSTRAINT fk_titles_objectannotators FOREIGN KEY (objectannotator) REFERENCES public.objectannotators(id);


--
-- TOC entry 4111 (class 2606 OID 18000)
-- Name: titles fk_titles_objectannotators_delete; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.titles
    ADD CONSTRAINT fk_titles_objectannotators_delete FOREIGN KEY (deletionuser) REFERENCES public.objectannotators(id);


--
-- TOC entry 4109 (class 2606 OID 17780)
-- Name: titles fk_titles_pages; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.titles
    ADD CONSTRAINT fk_titles_pages FOREIGN KEY (pageid) REFERENCES public.pages(pageid);


--
-- TOC entry 4112 (class 2606 OID 17785)
-- Name: translations fk_translations_pagecollectionmetadata; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.translations
    ADD CONSTRAINT fk_translations_pagecollectionmetadata FOREIGN KEY (metadataid) REFERENCES public.pagecollectionmetadata(roccid);
