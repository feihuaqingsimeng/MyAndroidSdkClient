.class public Lasyx/ksoap2/SoapFault12;
.super Lasyx/ksoap2/SoapFault;
.source "SoapFault12.java"


# static fields
.field private static final serialVersionUID:J = 0xf7121L


# instance fields
.field public Code:Lasyx/kxml2/kdom/Node;

.field public Detail:Lasyx/kxml2/kdom/Node;

.field public Node:Lasyx/kxml2/kdom/Node;

.field public Reason:Lasyx/kxml2/kdom/Node;

.field public Role:Lasyx/kxml2/kdom/Node;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lasyx/ksoap2/SoapFault;-><init>()V

    .line 51
    const/16 v0, 0x78

    iput v0, p0, Lasyx/ksoap2/SoapFault12;->version:I

    .line 52
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "version"    # I

    .prologue
    .line 55
    invoke-direct {p0}, Lasyx/ksoap2/SoapFault;-><init>()V

    .line 56
    iput p1, p0, Lasyx/ksoap2/SoapFault12;->version:I

    .line 57
    return-void
.end method

.method private parseSelf(Lasyx/xmlpull/v1/XmlPullParser;)V
    .locals 6
    .param p1, "parser"    # Lasyx/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lasyx/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    .line 73
    const-string v2, "http://www.w3.org/2003/05/soap-envelope"

    const-string v3, "Fault"

    invoke-interface {p1, v4, v2, v3}, Lasyx/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 75
    :goto_0
    invoke-interface {p1}, Lasyx/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v2

    if-ne v2, v4, :cond_5

    .line 76
    invoke-interface {p1}, Lasyx/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "name":Ljava/lang/String;
    invoke-interface {p1}, Lasyx/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v1

    .line 78
    .local v1, "namespace":Ljava/lang/String;
    invoke-interface {p1}, Lasyx/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 79
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Code"

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 80
    new-instance v2, Lasyx/kxml2/kdom/Node;

    invoke-direct {v2}, Lasyx/kxml2/kdom/Node;-><init>()V

    iput-object v2, p0, Lasyx/ksoap2/SoapFault12;->Code:Lasyx/kxml2/kdom/Node;

    .line 81
    iget-object v2, p0, Lasyx/ksoap2/SoapFault12;->Code:Lasyx/kxml2/kdom/Node;

    invoke-virtual {v2, p1}, Lasyx/kxml2/kdom/Node;->parse(Lasyx/xmlpull/v1/XmlPullParser;)V

    .line 98
    :goto_1
    invoke-interface {p1, v5, v1, v0}, Lasyx/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 82
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Reason"

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 83
    new-instance v2, Lasyx/kxml2/kdom/Node;

    invoke-direct {v2}, Lasyx/kxml2/kdom/Node;-><init>()V

    iput-object v2, p0, Lasyx/ksoap2/SoapFault12;->Reason:Lasyx/kxml2/kdom/Node;

    .line 84
    iget-object v2, p0, Lasyx/ksoap2/SoapFault12;->Reason:Lasyx/kxml2/kdom/Node;

    invoke-virtual {v2, p1}, Lasyx/kxml2/kdom/Node;->parse(Lasyx/xmlpull/v1/XmlPullParser;)V

    goto :goto_1

    .line 85
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Node"

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 86
    new-instance v2, Lasyx/kxml2/kdom/Node;

    invoke-direct {v2}, Lasyx/kxml2/kdom/Node;-><init>()V

    iput-object v2, p0, Lasyx/ksoap2/SoapFault12;->Node:Lasyx/kxml2/kdom/Node;

    .line 87
    iget-object v2, p0, Lasyx/ksoap2/SoapFault12;->Node:Lasyx/kxml2/kdom/Node;

    invoke-virtual {v2, p1}, Lasyx/kxml2/kdom/Node;->parse(Lasyx/xmlpull/v1/XmlPullParser;)V

    goto :goto_1

    .line 88
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Role"

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 89
    new-instance v2, Lasyx/kxml2/kdom/Node;

    invoke-direct {v2}, Lasyx/kxml2/kdom/Node;-><init>()V

    iput-object v2, p0, Lasyx/ksoap2/SoapFault12;->Role:Lasyx/kxml2/kdom/Node;

    .line 90
    iget-object v2, p0, Lasyx/ksoap2/SoapFault12;->Role:Lasyx/kxml2/kdom/Node;

    invoke-virtual {v2, p1}, Lasyx/kxml2/kdom/Node;->parse(Lasyx/xmlpull/v1/XmlPullParser;)V

    goto :goto_1

    .line 91
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Detail"

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 92
    new-instance v2, Lasyx/kxml2/kdom/Node;

    invoke-direct {v2}, Lasyx/kxml2/kdom/Node;-><init>()V

    iput-object v2, p0, Lasyx/ksoap2/SoapFault12;->Detail:Lasyx/kxml2/kdom/Node;

    .line 93
    iget-object v2, p0, Lasyx/ksoap2/SoapFault12;->Detail:Lasyx/kxml2/kdom/Node;

    invoke-virtual {v2, p1}, Lasyx/kxml2/kdom/Node;->parse(Lasyx/xmlpull/v1/XmlPullParser;)V

    goto :goto_1

    .line 95
    :cond_4
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "unexpected tag:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 100
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "namespace":Ljava/lang/String;
    :cond_5
    const-string v2, "http://www.w3.org/2003/05/soap-envelope"

    const-string v3, "Fault"

    invoke-interface {p1, v5, v2, v3}, Lasyx/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-interface {p1}, Lasyx/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 103
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 141
    iget-object v0, p0, Lasyx/ksoap2/SoapFault12;->Reason:Lasyx/kxml2/kdom/Node;

    const-string v1, "http://www.w3.org/2003/05/soap-envelope"

    const-string v2, "Text"

    invoke-virtual {v0, v1, v2}, Lasyx/kxml2/kdom/Node;->getElement(Ljava/lang/String;Ljava/lang/String;)Lasyx/kxml2/kdom/Element;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lasyx/kxml2/kdom/Element;->getText(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

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
    const/4 v3, 0x0

    .line 63
    invoke-direct {p0, p1}, Lasyx/ksoap2/SoapFault12;->parseSelf(Lasyx/xmlpull/v1/XmlPullParser;)V

    .line 65
    iget-object v0, p0, Lasyx/ksoap2/SoapFault12;->Code:Lasyx/kxml2/kdom/Node;

    const-string v1, "http://www.w3.org/2003/05/soap-envelope"

    const-string v2, "Value"

    invoke-virtual {v0, v1, v2}, Lasyx/kxml2/kdom/Node;->getElement(Ljava/lang/String;Ljava/lang/String;)Lasyx/kxml2/kdom/Element;

    move-result-object v0

    invoke-virtual {v0, v3}, Lasyx/kxml2/kdom/Element;->getText(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lasyx/ksoap2/SoapFault12;->faultcode:Ljava/lang/String;

    .line 66
    iget-object v0, p0, Lasyx/ksoap2/SoapFault12;->Reason:Lasyx/kxml2/kdom/Node;

    const-string v1, "http://www.w3.org/2003/05/soap-envelope"

    const-string v2, "Text"

    invoke-virtual {v0, v1, v2}, Lasyx/kxml2/kdom/Node;->getElement(Ljava/lang/String;Ljava/lang/String;)Lasyx/kxml2/kdom/Element;

    move-result-object v0

    invoke-virtual {v0, v3}, Lasyx/kxml2/kdom/Element;->getText(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lasyx/ksoap2/SoapFault12;->faultstring:Ljava/lang/String;

    .line 67
    iget-object v0, p0, Lasyx/ksoap2/SoapFault12;->Detail:Lasyx/kxml2/kdom/Node;

    iput-object v0, p0, Lasyx/ksoap2/SoapFault12;->detail:Lasyx/kxml2/kdom/Node;

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lasyx/ksoap2/SoapFault12;->faultactor:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 146
    iget-object v2, p0, Lasyx/ksoap2/SoapFault12;->Reason:Lasyx/kxml2/kdom/Node;

    const-string v3, "http://www.w3.org/2003/05/soap-envelope"

    const-string v4, "Text"

    invoke-virtual {v2, v3, v4}, Lasyx/kxml2/kdom/Node;->getElement(Ljava/lang/String;Ljava/lang/String;)Lasyx/kxml2/kdom/Element;

    move-result-object v2

    invoke-virtual {v2, v5}, Lasyx/kxml2/kdom/Element;->getText(I)Ljava/lang/String;

    move-result-object v1

    .line 147
    .local v1, "reason":Ljava/lang/String;
    iget-object v2, p0, Lasyx/ksoap2/SoapFault12;->Code:Lasyx/kxml2/kdom/Node;

    const-string v3, "http://www.w3.org/2003/05/soap-envelope"

    const-string v4, "Value"

    invoke-virtual {v2, v3, v4}, Lasyx/kxml2/kdom/Node;->getElement(Ljava/lang/String;Ljava/lang/String;)Lasyx/kxml2/kdom/Element;

    move-result-object v2

    invoke-virtual {v2, v5}, Lasyx/kxml2/kdom/Element;->getText(I)Ljava/lang/String;

    move-result-object v0

    .line 148
    .local v0, "code":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", Reason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public write(Lasyx/xmlpull/v1/XmlSerializer;)V
    .locals 2
    .param p1, "xw"    # Lasyx/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    const-string v0, "http://www.w3.org/2003/05/soap-envelope"

    const-string v1, "Fault"

    invoke-interface {p1, v0, v1}, Lasyx/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lasyx/xmlpull/v1/XmlSerializer;

    .line 111
    const-string v0, "http://www.w3.org/2003/05/soap-envelope"

    const-string v1, "Code"

    invoke-interface {p1, v0, v1}, Lasyx/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lasyx/xmlpull/v1/XmlSerializer;

    .line 112
    iget-object v0, p0, Lasyx/ksoap2/SoapFault12;->Code:Lasyx/kxml2/kdom/Node;

    invoke-virtual {v0, p1}, Lasyx/kxml2/kdom/Node;->write(Lasyx/xmlpull/v1/XmlSerializer;)V

    .line 113
    const-string v0, "http://www.w3.org/2003/05/soap-envelope"

    const-string v1, "Code"

    invoke-interface {p1, v0, v1}, Lasyx/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lasyx/xmlpull/v1/XmlSerializer;

    .line 114
    const-string v0, "http://www.w3.org/2003/05/soap-envelope"

    const-string v1, "Reason"

    invoke-interface {p1, v0, v1}, Lasyx/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lasyx/xmlpull/v1/XmlSerializer;

    .line 115
    iget-object v0, p0, Lasyx/ksoap2/SoapFault12;->Reason:Lasyx/kxml2/kdom/Node;

    invoke-virtual {v0, p1}, Lasyx/kxml2/kdom/Node;->write(Lasyx/xmlpull/v1/XmlSerializer;)V

    .line 116
    const-string v0, "http://www.w3.org/2003/05/soap-envelope"

    const-string v1, "Reason"

    invoke-interface {p1, v0, v1}, Lasyx/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lasyx/xmlpull/v1/XmlSerializer;

    .line 118
    iget-object v0, p0, Lasyx/ksoap2/SoapFault12;->Node:Lasyx/kxml2/kdom/Node;

    if-eqz v0, :cond_0

    .line 119
    const-string v0, "http://www.w3.org/2003/05/soap-envelope"

    const-string v1, "Node"

    invoke-interface {p1, v0, v1}, Lasyx/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lasyx/xmlpull/v1/XmlSerializer;

    .line 120
    iget-object v0, p0, Lasyx/ksoap2/SoapFault12;->Node:Lasyx/kxml2/kdom/Node;

    invoke-virtual {v0, p1}, Lasyx/kxml2/kdom/Node;->write(Lasyx/xmlpull/v1/XmlSerializer;)V

    .line 121
    const-string v0, "http://www.w3.org/2003/05/soap-envelope"

    const-string v1, "Node"

    invoke-interface {p1, v0, v1}, Lasyx/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lasyx/xmlpull/v1/XmlSerializer;

    .line 123
    :cond_0
    iget-object v0, p0, Lasyx/ksoap2/SoapFault12;->Role:Lasyx/kxml2/kdom/Node;

    if-eqz v0, :cond_1

    .line 124
    const-string v0, "http://www.w3.org/2003/05/soap-envelope"

    const-string v1, "Role"

    invoke-interface {p1, v0, v1}, Lasyx/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lasyx/xmlpull/v1/XmlSerializer;

    .line 125
    iget-object v0, p0, Lasyx/ksoap2/SoapFault12;->Role:Lasyx/kxml2/kdom/Node;

    invoke-virtual {v0, p1}, Lasyx/kxml2/kdom/Node;->write(Lasyx/xmlpull/v1/XmlSerializer;)V

    .line 126
    const-string v0, "http://www.w3.org/2003/05/soap-envelope"

    const-string v1, "Role"

    invoke-interface {p1, v0, v1}, Lasyx/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lasyx/xmlpull/v1/XmlSerializer;

    .line 129
    :cond_1
    iget-object v0, p0, Lasyx/ksoap2/SoapFault12;->Detail:Lasyx/kxml2/kdom/Node;

    if-eqz v0, :cond_2

    .line 130
    const-string v0, "http://www.w3.org/2003/05/soap-envelope"

    const-string v1, "Detail"

    invoke-interface {p1, v0, v1}, Lasyx/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lasyx/xmlpull/v1/XmlSerializer;

    .line 131
    iget-object v0, p0, Lasyx/ksoap2/SoapFault12;->Detail:Lasyx/kxml2/kdom/Node;

    invoke-virtual {v0, p1}, Lasyx/kxml2/kdom/Node;->write(Lasyx/xmlpull/v1/XmlSerializer;)V

    .line 132
    const-string v0, "http://www.w3.org/2003/05/soap-envelope"

    const-string v1, "Detail"

    invoke-interface {p1, v0, v1}, Lasyx/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lasyx/xmlpull/v1/XmlSerializer;

    .line 134
    :cond_2
    const-string v0, "http://www.w3.org/2003/05/soap-envelope"

    const-string v1, "Fault"

    invoke-interface {p1, v0, v1}, Lasyx/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lasyx/xmlpull/v1/XmlSerializer;

    .line 135
    return-void
.end method
