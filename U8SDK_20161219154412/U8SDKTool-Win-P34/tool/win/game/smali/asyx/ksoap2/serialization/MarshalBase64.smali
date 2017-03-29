.class public Lasyx/ksoap2/serialization/MarshalBase64;
.super Ljava/lang/Object;
.source "MarshalBase64.java"

# interfaces
.implements Lasyx/ksoap2/serialization/Marshal;


# static fields
.field public static BYTE_ARRAY_CLASS:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lasyx/ksoap2/serialization/MarshalBase64;->BYTE_ARRAY_CLASS:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public readInstance(Lasyx/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Lasyx/ksoap2/serialization/PropertyInfo;)Ljava/lang/Object;
    .locals 1
    .param p1, "parser"    # Lasyx/xmlpull/v1/XmlPullParser;
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "expected"    # Lasyx/ksoap2/serialization/PropertyInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lasyx/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 36
    invoke-interface {p1}, Lasyx/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lasyx/kobjects/base64/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public register(Lasyx/ksoap2/serialization/SoapSerializationEnvelope;)V
    .locals 3
    .param p1, "cm"    # Lasyx/ksoap2/serialization/SoapSerializationEnvelope;

    .prologue
    .line 44
    iget-object v0, p1, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->xsd:Ljava/lang/String;

    const-string v1, "base64Binary"

    sget-object v2, Lasyx/ksoap2/serialization/MarshalBase64;->BYTE_ARRAY_CLASS:Ljava/lang/Class;

    invoke-virtual {p1, v0, v1, v2, p0}, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->addMapping(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Lasyx/ksoap2/serialization/Marshal;)V

    .line 45
    const-string v0, "http://schemas.xmlsoap.org/soap/encoding/"

    const-string v1, "base64"

    sget-object v2, Lasyx/ksoap2/serialization/MarshalBase64;->BYTE_ARRAY_CLASS:Ljava/lang/Class;

    invoke-virtual {p1, v0, v1, v2, p0}, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->addMapping(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Lasyx/ksoap2/serialization/Marshal;)V

    .line 46
    return-void
.end method

.method public writeInstance(Lasyx/xmlpull/v1/XmlSerializer;Ljava/lang/Object;)V
    .locals 1
    .param p1, "writer"    # Lasyx/xmlpull/v1/XmlSerializer;
    .param p2, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    check-cast p2, [B

    .end local p2    # "obj":Ljava/lang/Object;
    check-cast p2, [B

    invoke-static {p2}, Lasyx/kobjects/base64/Base64;->encode([B)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lasyx/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lasyx/xmlpull/v1/XmlSerializer;

    .line 41
    return-void
.end method
