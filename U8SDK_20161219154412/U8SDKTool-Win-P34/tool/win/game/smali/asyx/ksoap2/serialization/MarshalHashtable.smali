.class public Lasyx/ksoap2/serialization/MarshalHashtable;
.super Ljava/lang/Object;
.source "MarshalHashtable.java"

# interfaces
.implements Lasyx/ksoap2/serialization/Marshal;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lasyx/ksoap2/serialization/MarshalHashtable$ItemSoapObject;
    }
.end annotation


# static fields
.field public static final HASHTABLE_CLASS:Ljava/lang/Class;

.field public static final NAME:Ljava/lang/String; = "Map"

.field public static final NAMESPACE:Ljava/lang/String; = "http://xml.apache.org/xml-soap"


# instance fields
.field envelope:Lasyx/ksoap2/serialization/SoapSerializationEnvelope;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lasyx/ksoap2/serialization/MarshalHashtable;->HASHTABLE_CLASS:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    return-void
.end method


# virtual methods
.method public readInstance(Lasyx/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Lasyx/ksoap2/serialization/PropertyInfo;)Ljava/lang/Object;
    .locals 11
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
    .line 51
    new-instance v8, Ljava/util/Hashtable;

    invoke-direct {v8}, Ljava/util/Hashtable;-><init>()V

    .line 52
    .local v8, "instance":Ljava/util/Hashtable;
    invoke-interface {p1}, Lasyx/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 53
    .local v7, "elementName":Ljava/lang/String;
    :goto_0
    invoke-interface {p1}, Lasyx/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    .line 54
    new-instance v2, Lasyx/ksoap2/serialization/MarshalHashtable$ItemSoapObject;

    invoke-direct {v2, p0, v8}, Lasyx/ksoap2/serialization/MarshalHashtable$ItemSoapObject;-><init>(Lasyx/ksoap2/serialization/MarshalHashtable;Ljava/util/Hashtable;)V

    .line 55
    .local v2, "item":Lasyx/ksoap2/serialization/SoapObject;
    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v3, "item"

    invoke-interface {p1, v0, v1, v3}, Lasyx/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-interface {p1}, Lasyx/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 57
    iget-object v0, p0, Lasyx/ksoap2/serialization/MarshalHashtable;->envelope:Lasyx/ksoap2/serialization/SoapSerializationEnvelope;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-object v6, Lasyx/ksoap2/serialization/PropertyInfo;->OBJECT_TYPE:Lasyx/ksoap2/serialization/PropertyInfo;

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->read(Lasyx/xmlpull/v1/XmlPullParser;Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;Lasyx/ksoap2/serialization/PropertyInfo;)Ljava/lang/Object;

    move-result-object v9

    .line 58
    .local v9, "key":Ljava/lang/Object;
    invoke-interface {p1}, Lasyx/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 59
    if-eqz v9, :cond_0

    .line 60
    const/4 v0, 0x0

    invoke-virtual {v2, v0, v9}, Lasyx/ksoap2/serialization/SoapObject;->setProperty(ILjava/lang/Object;)V

    .line 62
    :cond_0
    iget-object v0, p0, Lasyx/ksoap2/serialization/MarshalHashtable;->envelope:Lasyx/ksoap2/serialization/SoapSerializationEnvelope;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-object v6, Lasyx/ksoap2/serialization/PropertyInfo;->OBJECT_TYPE:Lasyx/ksoap2/serialization/PropertyInfo;

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->read(Lasyx/xmlpull/v1/XmlPullParser;Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;Lasyx/ksoap2/serialization/PropertyInfo;)Ljava/lang/Object;

    move-result-object v10

    .line 63
    .local v10, "value":Ljava/lang/Object;
    invoke-interface {p1}, Lasyx/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 64
    if-eqz v10, :cond_1

    .line 65
    const/4 v0, 0x1

    invoke-virtual {v2, v0, v10}, Lasyx/ksoap2/serialization/SoapObject;->setProperty(ILjava/lang/Object;)V

    .line 67
    :cond_1
    const/4 v0, 0x3

    const/4 v1, 0x0

    const-string v3, "item"

    invoke-interface {p1, v0, v1, v3}, Lasyx/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 69
    .end local v2    # "item":Lasyx/ksoap2/serialization/SoapObject;
    .end local v9    # "key":Ljava/lang/Object;
    .end local v10    # "value":Ljava/lang/Object;
    :cond_2
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1, v7}, Lasyx/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 70
    return-object v8
.end method

.method public register(Lasyx/ksoap2/serialization/SoapSerializationEnvelope;)V
    .locals 3
    .param p1, "cm"    # Lasyx/ksoap2/serialization/SoapSerializationEnvelope;

    .prologue
    .line 116
    iput-object p1, p0, Lasyx/ksoap2/serialization/MarshalHashtable;->envelope:Lasyx/ksoap2/serialization/SoapSerializationEnvelope;

    .line 117
    const-string v0, "http://xml.apache.org/xml-soap"

    const-string v1, "Map"

    sget-object v2, Lasyx/ksoap2/serialization/MarshalHashtable;->HASHTABLE_CLASS:Ljava/lang/Class;

    invoke-virtual {p1, v0, v1, v2, p0}, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->addMapping(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Lasyx/ksoap2/serialization/Marshal;)V

    .line 118
    return-void
.end method

.method public writeInstance(Lasyx/xmlpull/v1/XmlSerializer;Ljava/lang/Object;)V
    .locals 6
    .param p1, "writer"    # Lasyx/xmlpull/v1/XmlSerializer;
    .param p2, "instance"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 74
    move-object v0, p2

    check-cast v0, Ljava/util/Hashtable;

    .line 75
    .local v0, "h":Ljava/util/Hashtable;
    new-instance v1, Lasyx/ksoap2/serialization/SoapObject;

    invoke-direct {v1, v5, v5}, Lasyx/ksoap2/serialization/SoapObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .local v1, "item":Lasyx/ksoap2/serialization/SoapObject;
    const-string v4, "key"

    invoke-virtual {v1, v4, v5}, Lasyx/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lasyx/ksoap2/serialization/SoapObject;

    .line 77
    const-string v4, "value"

    invoke-virtual {v1, v4, v5}, Lasyx/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lasyx/ksoap2/serialization/SoapObject;

    .line 78
    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v3

    .local v3, "keys":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 79
    const-string v4, ""

    const-string v5, "item"

    invoke-interface {p1, v4, v5}, Lasyx/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lasyx/xmlpull/v1/XmlSerializer;

    .line 80
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    .line 81
    .local v2, "key":Ljava/lang/Object;
    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2}, Lasyx/ksoap2/serialization/SoapObject;->setProperty(ILjava/lang/Object;)V

    .line 82
    const/4 v4, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lasyx/ksoap2/serialization/SoapObject;->setProperty(ILjava/lang/Object;)V

    .line 83
    iget-object v4, p0, Lasyx/ksoap2/serialization/MarshalHashtable;->envelope:Lasyx/ksoap2/serialization/SoapSerializationEnvelope;

    invoke-virtual {v4, p1, v1}, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->writeObjectBodyWithAttributes(Lasyx/xmlpull/v1/XmlSerializer;Lasyx/ksoap2/serialization/KvmSerializable;)V

    .line 84
    const-string v4, ""

    const-string v5, "item"

    invoke-interface {p1, v4, v5}, Lasyx/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lasyx/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 86
    .end local v2    # "key":Ljava/lang/Object;
    :cond_0
    return-void
.end method
