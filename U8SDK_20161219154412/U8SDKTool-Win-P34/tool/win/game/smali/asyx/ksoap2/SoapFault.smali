.class public Lasyx/ksoap2/SoapFault;
.super Ljava/io/IOException;
.source "SoapFault.java"


# static fields
.field private static final serialVersionUID:J = 0xf6d39L


# instance fields
.field public detail:Lasyx/kxml2/kdom/Node;

.field public faultactor:Ljava/lang/String;

.field public faultcode:Ljava/lang/String;

.field public faultstring:Ljava/lang/String;

.field public version:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 49
    const/16 v0, 0x6e

    iput v0, p0, Lasyx/ksoap2/SoapFault;->version:I

    .line 50
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "version"    # I

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 54
    iput p1, p0, Lasyx/ksoap2/SoapFault;->version:I

    .line 55
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lasyx/ksoap2/SoapFault;->faultstring:Ljava/lang/String;

    return-object v0
.end method

.method public parse(Lasyx/xmlpull/v1/XmlPullParser;)V
    .locals 5
    .param p1, "parser"    # Lasyx/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lasyx/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    .line 59
    const-string v1, "http://schemas.xmlsoap.org/soap/envelope/"

    const-string v2, "Fault"

    invoke-interface {p1, v3, v1, v2}, Lasyx/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 60
    :cond_0
    :goto_0
    invoke-interface {p1}, Lasyx/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 61
    invoke-interface {p1}, Lasyx/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "name":Ljava/lang/String;
    const-string v1, "detail"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 63
    new-instance v1, Lasyx/kxml2/kdom/Node;

    invoke-direct {v1}, Lasyx/kxml2/kdom/Node;-><init>()V

    iput-object v1, p0, Lasyx/ksoap2/SoapFault;->detail:Lasyx/kxml2/kdom/Node;

    .line 64
    iget-object v1, p0, Lasyx/ksoap2/SoapFault;->detail:Lasyx/kxml2/kdom/Node;

    invoke-virtual {v1, p1}, Lasyx/kxml2/kdom/Node;->parse(Lasyx/xmlpull/v1/XmlPullParser;)V

    .line 66
    invoke-interface {p1}, Lasyx/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v1

    const-string v2, "http://schemas.xmlsoap.org/soap/envelope/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Lasyx/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Fault"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    .end local v0    # "name":Ljava/lang/String;
    :cond_1
    const-string v1, "http://schemas.xmlsoap.org/soap/envelope/"

    const-string v2, "Fault"

    invoke-interface {p1, v4, v1, v2}, Lasyx/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-interface {p1}, Lasyx/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 83
    return-void

    .line 70
    .restart local v0    # "name":Ljava/lang/String;
    :cond_2
    const-string v1, "faultcode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 71
    invoke-interface {p1}, Lasyx/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lasyx/ksoap2/SoapFault;->faultcode:Ljava/lang/String;

    .line 79
    :goto_1
    const/4 v1, 0x0

    invoke-interface {p1, v4, v1, v0}, Lasyx/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 72
    :cond_3
    const-string v1, "faultstring"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 73
    invoke-interface {p1}, Lasyx/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lasyx/ksoap2/SoapFault;->faultstring:Ljava/lang/String;

    goto :goto_1

    .line 74
    :cond_4
    const-string v1, "faultactor"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 75
    invoke-interface {p1}, Lasyx/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lasyx/ksoap2/SoapFault;->faultactor:Ljava/lang/String;

    goto :goto_1

    .line 77
    :cond_5
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "unexpected tag:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 111
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "SoapFault - faultcode: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lasyx/ksoap2/SoapFault;->faultcode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\' faultstring: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lasyx/ksoap2/SoapFault;->faultstring:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\' faultactor: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lasyx/ksoap2/SoapFault;->faultactor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\' detail: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lasyx/ksoap2/SoapFault;->detail:Lasyx/kxml2/kdom/Node;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lasyx/xmlpull/v1/XmlSerializer;)V
    .locals 3
    .param p1, "xw"    # Lasyx/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 87
    const-string v0, "http://schemas.xmlsoap.org/soap/envelope/"

    const-string v1, "Fault"

    invoke-interface {p1, v0, v1}, Lasyx/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lasyx/xmlpull/v1/XmlSerializer;

    .line 88
    const-string v0, "faultcode"

    invoke-interface {p1, v2, v0}, Lasyx/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lasyx/xmlpull/v1/XmlSerializer;

    .line 89
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lasyx/ksoap2/SoapFault;->faultcode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lasyx/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lasyx/xmlpull/v1/XmlSerializer;

    .line 90
    const-string v0, "faultcode"

    invoke-interface {p1, v2, v0}, Lasyx/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lasyx/xmlpull/v1/XmlSerializer;

    .line 91
    const-string v0, "faultstring"

    invoke-interface {p1, v2, v0}, Lasyx/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lasyx/xmlpull/v1/XmlSerializer;

    .line 92
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lasyx/ksoap2/SoapFault;->faultstring:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lasyx/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lasyx/xmlpull/v1/XmlSerializer;

    .line 93
    const-string v0, "faultstring"

    invoke-interface {p1, v2, v0}, Lasyx/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lasyx/xmlpull/v1/XmlSerializer;

    .line 94
    const-string v0, "detail"

    invoke-interface {p1, v2, v0}, Lasyx/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lasyx/xmlpull/v1/XmlSerializer;

    .line 95
    iget-object v0, p0, Lasyx/ksoap2/SoapFault;->detail:Lasyx/kxml2/kdom/Node;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lasyx/ksoap2/SoapFault;->detail:Lasyx/kxml2/kdom/Node;

    invoke-virtual {v0, p1}, Lasyx/kxml2/kdom/Node;->write(Lasyx/xmlpull/v1/XmlSerializer;)V

    .line 98
    :cond_0
    const-string v0, "detail"

    invoke-interface {p1, v2, v0}, Lasyx/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lasyx/xmlpull/v1/XmlSerializer;

    .line 99
    const-string v0, "http://schemas.xmlsoap.org/soap/envelope/"

    const-string v1, "Fault"

    invoke-interface {p1, v0, v1}, Lasyx/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lasyx/xmlpull/v1/XmlSerializer;

    .line 100
    return-void
.end method
