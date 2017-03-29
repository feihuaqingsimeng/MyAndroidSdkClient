.class public Lasyx/ksoap2/serialization/MarshalDate;
.super Ljava/lang/Object;
.source "MarshalDate.java"

# interfaces
.implements Lasyx/ksoap2/serialization/Marshal;


# static fields
.field public static DATE_CLASS:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lasyx/ksoap2/serialization/MarshalDate;->DATE_CLASS:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public readInstance(Lasyx/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Lasyx/ksoap2/serialization/PropertyInfo;)Ljava/lang/Object;
    .locals 2
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
    .line 37
    invoke-interface {p1}, Lasyx/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lasyx/kobjects/isodate/IsoDate;->stringToDate(Ljava/lang/String;I)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public register(Lasyx/ksoap2/serialization/SoapSerializationEnvelope;)V
    .locals 3
    .param p1, "cm"    # Lasyx/ksoap2/serialization/SoapSerializationEnvelope;

    .prologue
    .line 45
    iget-object v0, p1, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->xsd:Ljava/lang/String;

    const-string v1, "dateTime"

    sget-object v2, Lasyx/ksoap2/serialization/MarshalDate;->DATE_CLASS:Ljava/lang/Class;

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
    .line 41
    check-cast p2, Ljava/util/Date;

    .end local p2    # "obj":Ljava/lang/Object;
    const/4 v0, 0x3

    invoke-static {p2, v0}, Lasyx/kobjects/isodate/IsoDate;->dateToString(Ljava/util/Date;I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lasyx/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lasyx/xmlpull/v1/XmlSerializer;

    .line 42
    return-void
.end method
