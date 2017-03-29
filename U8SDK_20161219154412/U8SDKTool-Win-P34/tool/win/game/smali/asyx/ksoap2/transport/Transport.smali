.class public abstract Lasyx/ksoap2/transport/Transport;
.super Ljava/lang/Object;
.source "Transport.java"


# static fields
.field protected static final CONTENT_TYPE_SOAP_XML_CHARSET_UTF_8:Ljava/lang/String; = "application/soap+xml;charset=utf-8"

.field protected static final CONTENT_TYPE_XML_CHARSET_UTF_8:Ljava/lang/String; = "text/xml;charset=utf-8"

.field protected static final USER_AGENT:Ljava/lang/String; = "ksoap2-android/2.6.0+"


# instance fields
.field private bufferLength:I

.field public debug:Z

.field private prefixes:Ljava/util/HashMap;

.field protected proxy:Ljava/net/Proxy;

.field public requestDump:Ljava/lang/String;

.field public responseDump:Ljava/lang/String;

.field protected timeout:I

.field protected url:Ljava/lang/String;

.field private xmlVersionTag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/16 v0, 0x4e20

    iput v0, p0, Lasyx/ksoap2/transport/Transport;->timeout:I

    .line 60
    const-string v0, ""

    iput-object v0, p0, Lasyx/ksoap2/transport/Transport;->xmlVersionTag:Ljava/lang/String;

    .line 66
    const/high16 v0, 0x40000

    iput v0, p0, Lasyx/ksoap2/transport/Transport;->bufferLength:I

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lasyx/ksoap2/transport/Transport;->prefixes:Ljava/util/HashMap;

    .line 75
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lasyx/ksoap2/transport/Transport;-><init>(Ljava/net/Proxy;Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "timeout"    # I

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/16 v0, 0x4e20

    iput v0, p0, Lasyx/ksoap2/transport/Transport;->timeout:I

    .line 60
    const-string v0, ""

    iput-object v0, p0, Lasyx/ksoap2/transport/Transport;->xmlVersionTag:Ljava/lang/String;

    .line 66
    const/high16 v0, 0x40000

    iput v0, p0, Lasyx/ksoap2/transport/Transport;->bufferLength:I

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lasyx/ksoap2/transport/Transport;->prefixes:Ljava/util/HashMap;

    .line 82
    iput-object p1, p0, Lasyx/ksoap2/transport/Transport;->url:Ljava/lang/String;

    .line 83
    iput p2, p0, Lasyx/ksoap2/transport/Transport;->timeout:I

    .line 84
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "timeout"    # I
    .param p3, "bufferLength"    # I

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/16 v0, 0x4e20

    iput v0, p0, Lasyx/ksoap2/transport/Transport;->timeout:I

    .line 60
    const-string v0, ""

    iput-object v0, p0, Lasyx/ksoap2/transport/Transport;->xmlVersionTag:Ljava/lang/String;

    .line 66
    const/high16 v0, 0x40000

    iput v0, p0, Lasyx/ksoap2/transport/Transport;->bufferLength:I

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lasyx/ksoap2/transport/Transport;->prefixes:Ljava/util/HashMap;

    .line 87
    iput-object p1, p0, Lasyx/ksoap2/transport/Transport;->url:Ljava/lang/String;

    .line 88
    iput p2, p0, Lasyx/ksoap2/transport/Transport;->timeout:I

    .line 89
    iput p3, p0, Lasyx/ksoap2/transport/Transport;->bufferLength:I

    .line 90
    return-void
.end method

.method public constructor <init>(Ljava/net/Proxy;Ljava/lang/String;)V
    .locals 1
    .param p1, "proxy"    # Ljava/net/Proxy;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/16 v0, 0x4e20

    iput v0, p0, Lasyx/ksoap2/transport/Transport;->timeout:I

    .line 60
    const-string v0, ""

    iput-object v0, p0, Lasyx/ksoap2/transport/Transport;->xmlVersionTag:Ljava/lang/String;

    .line 66
    const/high16 v0, 0x40000

    iput v0, p0, Lasyx/ksoap2/transport/Transport;->bufferLength:I

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lasyx/ksoap2/transport/Transport;->prefixes:Ljava/util/HashMap;

    .line 104
    iput-object p1, p0, Lasyx/ksoap2/transport/Transport;->proxy:Ljava/net/Proxy;

    .line 105
    iput-object p2, p0, Lasyx/ksoap2/transport/Transport;->url:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public constructor <init>(Ljava/net/Proxy;Ljava/lang/String;I)V
    .locals 1
    .param p1, "proxy"    # Ljava/net/Proxy;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "timeout"    # I

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/16 v0, 0x4e20

    iput v0, p0, Lasyx/ksoap2/transport/Transport;->timeout:I

    .line 60
    const-string v0, ""

    iput-object v0, p0, Lasyx/ksoap2/transport/Transport;->xmlVersionTag:Ljava/lang/String;

    .line 66
    const/high16 v0, 0x40000

    iput v0, p0, Lasyx/ksoap2/transport/Transport;->bufferLength:I

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lasyx/ksoap2/transport/Transport;->prefixes:Ljava/util/HashMap;

    .line 109
    iput-object p1, p0, Lasyx/ksoap2/transport/Transport;->proxy:Ljava/net/Proxy;

    .line 110
    iput-object p2, p0, Lasyx/ksoap2/transport/Transport;->url:Ljava/lang/String;

    .line 111
    iput p3, p0, Lasyx/ksoap2/transport/Transport;->timeout:I

    .line 112
    return-void
.end method

.method public constructor <init>(Ljava/net/Proxy;Ljava/lang/String;II)V
    .locals 1
    .param p1, "proxy"    # Ljava/net/Proxy;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "timeout"    # I
    .param p4, "bufferLength"    # I

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/16 v0, 0x4e20

    iput v0, p0, Lasyx/ksoap2/transport/Transport;->timeout:I

    .line 60
    const-string v0, ""

    iput-object v0, p0, Lasyx/ksoap2/transport/Transport;->xmlVersionTag:Ljava/lang/String;

    .line 66
    const/high16 v0, 0x40000

    iput v0, p0, Lasyx/ksoap2/transport/Transport;->bufferLength:I

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lasyx/ksoap2/transport/Transport;->prefixes:Ljava/util/HashMap;

    .line 115
    iput-object p1, p0, Lasyx/ksoap2/transport/Transport;->proxy:Ljava/net/Proxy;

    .line 116
    iput-object p2, p0, Lasyx/ksoap2/transport/Transport;->url:Ljava/lang/String;

    .line 117
    iput p3, p0, Lasyx/ksoap2/transport/Transport;->timeout:I

    .line 118
    iput p4, p0, Lasyx/ksoap2/transport/Transport;->bufferLength:I

    .line 119
    return-void
.end method


# virtual methods
.method public abstract call(Ljava/lang/String;Lasyx/ksoap2/SoapEnvelope;Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lasyx/xmlpull/v1/XmlPullParserException;
        }
    .end annotation
.end method

.method public abstract call(Ljava/lang/String;Lasyx/ksoap2/SoapEnvelope;Ljava/util/List;Ljava/io/File;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lasyx/xmlpull/v1/XmlPullParserException;
        }
    .end annotation
.end method

.method public call(Ljava/lang/String;Lasyx/ksoap2/SoapEnvelope;)V
    .locals 1
    .param p1, "soapAction"    # Ljava/lang/String;
    .param p2, "envelope"    # Lasyx/ksoap2/SoapEnvelope;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lasyx/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 255
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lasyx/ksoap2/transport/Transport;->call(Ljava/lang/String;Lasyx/ksoap2/SoapEnvelope;Ljava/util/List;)Ljava/util/List;

    .line 256
    return-void
.end method

.method protected createRequestData(Lasyx/ksoap2/SoapEnvelope;)[B
    .locals 1
    .param p1, "envelope"    # Lasyx/ksoap2/SoapEnvelope;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 169
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lasyx/ksoap2/transport/Transport;->createRequestData(Lasyx/ksoap2/SoapEnvelope;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method protected createRequestData(Lasyx/ksoap2/SoapEnvelope;Ljava/lang/String;)[B
    .locals 6
    .param p1, "envelope"    # Lasyx/ksoap2/SoapEnvelope;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 141
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    iget v5, p0, Lasyx/ksoap2/transport/Transport;->bufferLength:I

    invoke-direct {v0, v5}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 142
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    const/4 v3, 0x0

    .line 143
    .local v3, "result":[B
    iget-object v5, p0, Lasyx/ksoap2/transport/Transport;->xmlVersionTag:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 144
    new-instance v4, Lasyx/kxml2/io/KXmlSerializer;

    invoke-direct {v4}, Lasyx/kxml2/io/KXmlSerializer;-><init>()V

    .line 146
    .local v4, "xw":Lasyx/xmlpull/v1/XmlSerializer;
    iget-object v5, p0, Lasyx/ksoap2/transport/Transport;->prefixes:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 148
    .local v2, "keysIter":Ljava/util/Iterator;
    invoke-interface {v4, v0, p2}, Lasyx/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 149
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 150
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 151
    .local v1, "key":Ljava/lang/String;
    iget-object v5, p0, Lasyx/ksoap2/transport/Transport;->prefixes:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4, v1, v5}, Lasyx/xmlpull/v1/XmlSerializer;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 153
    .end local v1    # "key":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1, v4}, Lasyx/ksoap2/SoapEnvelope;->write(Lasyx/xmlpull/v1/XmlSerializer;)V

    .line 154
    invoke-interface {v4}, Lasyx/xmlpull/v1/XmlSerializer;->flush()V

    .line 155
    const/16 v5, 0xd

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 156
    const/16 v5, 0xa

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 157
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 158
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 159
    const/4 v4, 0x0

    .line 160
    const/4 v0, 0x0

    .line 161
    return-object v3
.end method

.method public getHost()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 265
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lasyx/ksoap2/transport/Transport;->url:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 286
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lasyx/ksoap2/transport/Transport;->url:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPort()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 276
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lasyx/ksoap2/transport/Transport;->url:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->getPort()I

    move-result v0

    return v0
.end method

.method public getPrefixes()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lasyx/ksoap2/transport/Transport;->prefixes:Ljava/util/HashMap;

    return-object v0
.end method

.method public abstract getServiceConnection()Lasyx/ksoap2/transport/ServiceConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected parseResponse(Lasyx/ksoap2/SoapEnvelope;Ljava/io/InputStream;)V
    .locals 3
    .param p1, "envelope"    # Lasyx/ksoap2/SoapEnvelope;
    .param p2, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lasyx/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 126
    new-instance v0, Lasyx/kxml2/io/KXmlParser;

    invoke-direct {v0}, Lasyx/kxml2/io/KXmlParser;-><init>()V

    .line 127
    .local v0, "xp":Lasyx/xmlpull/v1/XmlPullParser;
    const-string v1, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lasyx/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 128
    const/4 v1, 0x0

    invoke-interface {v0, p2, v1}, Lasyx/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 129
    invoke-virtual {p1, v0}, Lasyx/ksoap2/SoapEnvelope;->parse(Lasyx/xmlpull/v1/XmlPullParser;)V

    .line 133
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    .line 134
    return-void
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 197
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 179
    iput-object p1, p0, Lasyx/ksoap2/transport/Transport;->url:Ljava/lang/String;

    .line 180
    return-void
.end method

.method public setXmlVersionTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 190
    iput-object p1, p0, Lasyx/ksoap2/transport/Transport;->xmlVersionTag:Ljava/lang/String;

    .line 191
    return-void
.end method
