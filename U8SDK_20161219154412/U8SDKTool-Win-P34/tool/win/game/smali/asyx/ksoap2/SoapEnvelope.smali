.class public Lasyx/ksoap2/SoapEnvelope;
.super Ljava/lang/Object;
.source "SoapEnvelope.java"


# static fields
.field public static final ENC:Ljava/lang/String; = "http://schemas.xmlsoap.org/soap/encoding/"

.field public static final ENC2003:Ljava/lang/String; = "http://www.w3.org/2003/05/soap-encoding"

.field public static final ENV:Ljava/lang/String; = "http://schemas.xmlsoap.org/soap/envelope/"

.field public static final ENV2003:Ljava/lang/String; = "http://www.w3.org/2003/05/soap-envelope"

.field public static final VER10:I = 0x64

.field public static final VER11:I = 0x6e

.field public static final VER12:I = 0x78

.field public static final XSD:Ljava/lang/String; = "http://www.w3.org/2001/XMLSchema"

.field public static final XSD1999:Ljava/lang/String; = "http://www.w3.org/1999/XMLSchema"

.field public static final XSI:Ljava/lang/String; = "http://www.w3.org/2001/XMLSchema-instance"

.field public static final XSI1999:Ljava/lang/String; = "http://www.w3.org/1999/XMLSchema-instance"


# instance fields
.field public bodyIn:Ljava/lang/Object;

.field public bodyOut:Ljava/lang/Object;

.field public enc:Ljava/lang/String;

.field public encodingStyle:Ljava/lang/String;

.field public env:Ljava/lang/String;

.field public headerIn:[Lasyx/kxml2/kdom/Element;

.field public headerOut:[Lasyx/kxml2/kdom/Element;

.field public version:I

.field public xsd:Ljava/lang/String;

.field public xsi:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "version"    # I

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput p1, p0, Lasyx/ksoap2/SoapEnvelope;->version:I

    .line 109
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    .line 110
    const-string v0, "http://www.w3.org/1999/XMLSchema-instance"

    iput-object v0, p0, Lasyx/ksoap2/SoapEnvelope;->xsi:Ljava/lang/String;

    .line 111
    const-string v0, "http://www.w3.org/1999/XMLSchema"

    iput-object v0, p0, Lasyx/ksoap2/SoapEnvelope;->xsd:Ljava/lang/String;

    .line 116
    :goto_0
    const/16 v0, 0x78

    if-ge p1, v0, :cond_1

    .line 117
    const-string v0, "http://schemas.xmlsoap.org/soap/encoding/"

    iput-object v0, p0, Lasyx/ksoap2/SoapEnvelope;->enc:Ljava/lang/String;

    .line 118
    const-string v0, "http://schemas.xmlsoap.org/soap/envelope/"

    iput-object v0, p0, Lasyx/ksoap2/SoapEnvelope;->env:Ljava/lang/String;

    .line 123
    :goto_1
    return-void

    .line 113
    :cond_0
    const-string v0, "http://www.w3.org/2001/XMLSchema-instance"

    iput-object v0, p0, Lasyx/ksoap2/SoapEnvelope;->xsi:Ljava/lang/String;

    .line 114
    const-string v0, "http://www.w3.org/2001/XMLSchema"

    iput-object v0, p0, Lasyx/ksoap2/SoapEnvelope;->xsd:Ljava/lang/String;

    goto :goto_0

    .line 120
    :cond_1
    const-string v0, "http://www.w3.org/2003/05/soap-encoding"

    iput-object v0, p0, Lasyx/ksoap2/SoapEnvelope;->enc:Ljava/lang/String;

    .line 121
    const-string v0, "http://www.w3.org/2003/05/soap-envelope"

    iput-object v0, p0, Lasyx/ksoap2/SoapEnvelope;->env:Ljava/lang/String;

    goto :goto_1
.end method

.method public static stringToBoolean(Ljava/lang/String;)Z
    .locals 2
    .param p0, "booleanAsString"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 62
    if-nez p0, :cond_1

    .line 66
    :cond_0
    :goto_0
    return v0

    .line 65
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 66
    const-string v1, "1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "true"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public parse(Lasyx/xmlpull/v1/XmlPullParser;)V
    .locals 4
    .param p1, "parser"    # Lasyx/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lasyx/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    .line 127
    invoke-interface {p1}, Lasyx/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 128
    iget-object v0, p0, Lasyx/ksoap2/SoapEnvelope;->env:Ljava/lang/String;

    const-string v1, "Envelope"

    invoke-interface {p1, v2, v0, v1}, Lasyx/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lasyx/ksoap2/SoapEnvelope;->env:Ljava/lang/String;

    const-string v1, "encodingStyle"

    invoke-interface {p1, v0, v1}, Lasyx/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lasyx/ksoap2/SoapEnvelope;->encodingStyle:Ljava/lang/String;

    .line 130
    invoke-interface {p1}, Lasyx/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 131
    invoke-interface {p1}, Lasyx/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    if-ne v0, v2, :cond_0

    invoke-interface {p1}, Lasyx/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lasyx/ksoap2/SoapEnvelope;->env:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lasyx/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Header"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {p0, p1}, Lasyx/ksoap2/SoapEnvelope;->parseHeader(Lasyx/xmlpull/v1/XmlPullParser;)V

    .line 135
    iget-object v0, p0, Lasyx/ksoap2/SoapEnvelope;->env:Ljava/lang/String;

    const-string v1, "Header"

    invoke-interface {p1, v3, v0, v1}, Lasyx/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-interface {p1}, Lasyx/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 138
    :cond_0
    iget-object v0, p0, Lasyx/ksoap2/SoapEnvelope;->env:Ljava/lang/String;

    const-string v1, "Body"

    invoke-interface {p1, v2, v0, v1}, Lasyx/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lasyx/ksoap2/SoapEnvelope;->env:Ljava/lang/String;

    const-string v1, "encodingStyle"

    invoke-interface {p1, v0, v1}, Lasyx/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lasyx/ksoap2/SoapEnvelope;->encodingStyle:Ljava/lang/String;

    .line 140
    invoke-virtual {p0, p1}, Lasyx/ksoap2/SoapEnvelope;->parseBody(Lasyx/xmlpull/v1/XmlPullParser;)V

    .line 141
    iget-object v0, p0, Lasyx/ksoap2/SoapEnvelope;->env:Ljava/lang/String;

    const-string v1, "Body"

    invoke-interface {p1, v3, v0, v1}, Lasyx/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-interface {p1}, Lasyx/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 143
    iget-object v0, p0, Lasyx/ksoap2/SoapEnvelope;->env:Ljava/lang/String;

    const-string v1, "Envelope"

    invoke-interface {p1, v3, v0, v1}, Lasyx/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method public parseBody(Lasyx/xmlpull/v1/XmlPullParser;)V
    .locals 4
    .param p1, "parser"    # Lasyx/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lasyx/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 170
    invoke-interface {p1}, Lasyx/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 172
    invoke-interface {p1}, Lasyx/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    invoke-interface {p1}, Lasyx/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lasyx/ksoap2/SoapEnvelope;->env:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Lasyx/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Fault"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 177
    iget v2, p0, Lasyx/ksoap2/SoapEnvelope;->version:I

    const/16 v3, 0x78

    if-ge v2, v3, :cond_0

    .line 178
    new-instance v0, Lasyx/ksoap2/SoapFault;

    iget v2, p0, Lasyx/ksoap2/SoapEnvelope;->version:I

    invoke-direct {v0, v2}, Lasyx/ksoap2/SoapFault;-><init>(I)V

    .line 182
    .local v0, "fault":Lasyx/ksoap2/SoapFault;
    :goto_0
    invoke-virtual {v0, p1}, Lasyx/ksoap2/SoapFault;->parse(Lasyx/xmlpull/v1/XmlPullParser;)V

    .line 183
    iput-object v0, p0, Lasyx/ksoap2/SoapEnvelope;->bodyIn:Ljava/lang/Object;

    .line 189
    .end local v0    # "fault":Lasyx/ksoap2/SoapFault;
    :goto_1
    return-void

    .line 180
    :cond_0
    new-instance v0, Lasyx/ksoap2/SoapFault12;

    iget v2, p0, Lasyx/ksoap2/SoapEnvelope;->version:I

    invoke-direct {v0, v2}, Lasyx/ksoap2/SoapFault12;-><init>(I)V

    .restart local v0    # "fault":Lasyx/ksoap2/SoapFault;
    goto :goto_0

    .line 185
    .end local v0    # "fault":Lasyx/ksoap2/SoapFault;
    :cond_1
    iget-object v2, p0, Lasyx/ksoap2/SoapEnvelope;->bodyIn:Ljava/lang/Object;

    instance-of v2, v2, Lasyx/kxml2/kdom/Node;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lasyx/ksoap2/SoapEnvelope;->bodyIn:Ljava/lang/Object;

    check-cast v2, Lasyx/kxml2/kdom/Node;

    move-object v1, v2

    .line 186
    .local v1, "node":Lasyx/kxml2/kdom/Node;
    :goto_2
    invoke-virtual {v1, p1}, Lasyx/kxml2/kdom/Node;->parse(Lasyx/xmlpull/v1/XmlPullParser;)V

    .line 187
    iput-object v1, p0, Lasyx/ksoap2/SoapEnvelope;->bodyIn:Ljava/lang/Object;

    goto :goto_1

    .line 185
    .end local v1    # "node":Lasyx/kxml2/kdom/Node;
    :cond_2
    new-instance v1, Lasyx/kxml2/kdom/Node;

    invoke-direct {v1}, Lasyx/kxml2/kdom/Node;-><init>()V

    goto :goto_2
.end method

.method public parseHeader(Lasyx/xmlpull/v1/XmlPullParser;)V
    .locals 6
    .param p1, "parser"    # Lasyx/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lasyx/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 148
    invoke-interface {p1}, Lasyx/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 150
    new-instance v3, Lasyx/kxml2/kdom/Node;

    invoke-direct {v3}, Lasyx/kxml2/kdom/Node;-><init>()V

    .line 151
    .local v3, "headers":Lasyx/kxml2/kdom/Node;
    invoke-virtual {v3, p1}, Lasyx/kxml2/kdom/Node;->parse(Lasyx/xmlpull/v1/XmlPullParser;)V

    .line 152
    const/4 v1, 0x0

    .line 153
    .local v1, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v3}, Lasyx/kxml2/kdom/Node;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 154
    invoke-virtual {v3, v4}, Lasyx/kxml2/kdom/Node;->getElement(I)Lasyx/kxml2/kdom/Element;

    move-result-object v0

    .line 155
    .local v0, "child":Lasyx/kxml2/kdom/Element;
    if-eqz v0, :cond_0

    .line 156
    add-int/lit8 v1, v1, 0x1

    .line 153
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 159
    .end local v0    # "child":Lasyx/kxml2/kdom/Element;
    :cond_1
    new-array v5, v1, [Lasyx/kxml2/kdom/Element;

    iput-object v5, p0, Lasyx/ksoap2/SoapEnvelope;->headerIn:[Lasyx/kxml2/kdom/Element;

    .line 160
    const/4 v1, 0x0

    .line 161
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v3}, Lasyx/kxml2/kdom/Node;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 162
    invoke-virtual {v3, v4}, Lasyx/kxml2/kdom/Node;->getElement(I)Lasyx/kxml2/kdom/Element;

    move-result-object v0

    .line 163
    .restart local v0    # "child":Lasyx/kxml2/kdom/Element;
    if-eqz v0, :cond_2

    .line 164
    iget-object v5, p0, Lasyx/ksoap2/SoapEnvelope;->headerIn:[Lasyx/kxml2/kdom/Element;

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "count":I
    .local v2, "count":I
    aput-object v0, v5, v1

    move v1, v2

    .line 161
    .end local v2    # "count":I
    .restart local v1    # "count":I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 167
    .end local v0    # "child":Lasyx/kxml2/kdom/Element;
    :cond_3
    return-void
.end method

.method public setOutputSoapObject(Ljava/lang/Object;)V
    .locals 0
    .param p1, "soapObject"    # Ljava/lang/Object;

    .prologue
    .line 237
    iput-object p1, p0, Lasyx/ksoap2/SoapEnvelope;->bodyOut:Ljava/lang/Object;

    .line 238
    return-void
.end method

.method public write(Lasyx/xmlpull/v1/XmlSerializer;)V
    .locals 2
    .param p1, "writer"    # Lasyx/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 196
    const-string v0, "i"

    iget-object v1, p0, Lasyx/ksoap2/SoapEnvelope;->xsi:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lasyx/xmlpull/v1/XmlSerializer;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const-string v0, "d"

    iget-object v1, p0, Lasyx/ksoap2/SoapEnvelope;->xsd:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lasyx/xmlpull/v1/XmlSerializer;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const-string v0, "c"

    iget-object v1, p0, Lasyx/ksoap2/SoapEnvelope;->enc:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lasyx/xmlpull/v1/XmlSerializer;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const-string v0, "v"

    iget-object v1, p0, Lasyx/ksoap2/SoapEnvelope;->env:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lasyx/xmlpull/v1/XmlSerializer;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lasyx/ksoap2/SoapEnvelope;->env:Ljava/lang/String;

    const-string v1, "Envelope"

    invoke-interface {p1, v0, v1}, Lasyx/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lasyx/xmlpull/v1/XmlSerializer;

    .line 201
    iget-object v0, p0, Lasyx/ksoap2/SoapEnvelope;->env:Ljava/lang/String;

    const-string v1, "Header"

    invoke-interface {p1, v0, v1}, Lasyx/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lasyx/xmlpull/v1/XmlSerializer;

    .line 202
    invoke-virtual {p0, p1}, Lasyx/ksoap2/SoapEnvelope;->writeHeader(Lasyx/xmlpull/v1/XmlSerializer;)V

    .line 203
    iget-object v0, p0, Lasyx/ksoap2/SoapEnvelope;->env:Ljava/lang/String;

    const-string v1, "Header"

    invoke-interface {p1, v0, v1}, Lasyx/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lasyx/xmlpull/v1/XmlSerializer;

    .line 204
    iget-object v0, p0, Lasyx/ksoap2/SoapEnvelope;->env:Ljava/lang/String;

    const-string v1, "Body"

    invoke-interface {p1, v0, v1}, Lasyx/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lasyx/xmlpull/v1/XmlSerializer;

    .line 205
    invoke-virtual {p0, p1}, Lasyx/ksoap2/SoapEnvelope;->writeBody(Lasyx/xmlpull/v1/XmlSerializer;)V

    .line 206
    iget-object v0, p0, Lasyx/ksoap2/SoapEnvelope;->env:Ljava/lang/String;

    const-string v1, "Body"

    invoke-interface {p1, v0, v1}, Lasyx/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lasyx/xmlpull/v1/XmlSerializer;

    .line 207
    iget-object v0, p0, Lasyx/ksoap2/SoapEnvelope;->env:Ljava/lang/String;

    const-string v1, "Envelope"

    invoke-interface {p1, v0, v1}, Lasyx/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lasyx/xmlpull/v1/XmlSerializer;

    .line 208
    return-void
.end method

.method public writeBody(Lasyx/xmlpull/v1/XmlSerializer;)V
    .locals 3
    .param p1, "writer"    # Lasyx/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 226
    iget-object v0, p0, Lasyx/ksoap2/SoapEnvelope;->encodingStyle:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lasyx/ksoap2/SoapEnvelope;->env:Ljava/lang/String;

    const-string v1, "encodingStyle"

    iget-object v2, p0, Lasyx/ksoap2/SoapEnvelope;->encodingStyle:Ljava/lang/String;

    invoke-interface {p1, v0, v1, v2}, Lasyx/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lasyx/xmlpull/v1/XmlSerializer;

    .line 229
    :cond_0
    iget-object v0, p0, Lasyx/ksoap2/SoapEnvelope;->bodyOut:Ljava/lang/Object;

    check-cast v0, Lasyx/kxml2/kdom/Node;

    invoke-virtual {v0, p1}, Lasyx/kxml2/kdom/Node;->write(Lasyx/xmlpull/v1/XmlSerializer;)V

    .line 230
    return-void
.end method

.method public writeHeader(Lasyx/xmlpull/v1/XmlSerializer;)V
    .locals 2
    .param p1, "writer"    # Lasyx/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 214
    iget-object v1, p0, Lasyx/ksoap2/SoapEnvelope;->headerOut:[Lasyx/kxml2/kdom/Element;

    if-eqz v1, :cond_0

    .line 215
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lasyx/ksoap2/SoapEnvelope;->headerOut:[Lasyx/kxml2/kdom/Element;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 216
    iget-object v1, p0, Lasyx/ksoap2/SoapEnvelope;->headerOut:[Lasyx/kxml2/kdom/Element;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lasyx/kxml2/kdom/Element;->write(Lasyx/xmlpull/v1/XmlSerializer;)V

    .line 215
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 219
    .end local v0    # "i":I
    :cond_0
    return-void
.end method
