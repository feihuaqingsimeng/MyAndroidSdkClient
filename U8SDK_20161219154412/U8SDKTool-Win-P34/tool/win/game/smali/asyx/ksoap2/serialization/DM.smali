.class Lasyx/ksoap2/serialization/DM;
.super Ljava/lang/Object;
.source "DM.java"

# interfaces
.implements Lasyx/ksoap2/serialization/Marshal;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public readInstance(Lasyx/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Lasyx/ksoap2/serialization/PropertyInfo;)Ljava/lang/Object;
    .locals 4
    .param p1, "parser"    # Lasyx/xmlpull/v1/XmlPullParser;
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "excepted"    # Lasyx/ksoap2/serialization/PropertyInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lasyx/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 38
    invoke-interface {p1}, Lasyx/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, "text":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 49
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    throw v1

    .line 43
    :sswitch_0
    new-instance v1, Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    move-object v0, v1

    .line 47
    .end local v0    # "text":Ljava/lang/String;
    :goto_0
    :sswitch_1
    return-object v0

    .line 45
    .restart local v0    # "text":Ljava/lang/String;
    :sswitch_2
    new-instance v1, Ljava/lang/Long;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    move-object v0, v1

    goto :goto_0

    .line 47
    :sswitch_3
    new-instance v1, Ljava/lang/Boolean;

    invoke-static {v0}, Lasyx/ksoap2/SoapEnvelope;->stringToBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v0, v1

    goto :goto_0

    .line 39
    nop

    :sswitch_data_0
    .sparse-switch
        0x62 -> :sswitch_3
        0x69 -> :sswitch_0
        0x6c -> :sswitch_2
        0x73 -> :sswitch_1
    .end sparse-switch
.end method

.method public register(Lasyx/ksoap2/serialization/SoapSerializationEnvelope;)V
    .locals 3
    .param p1, "cm"    # Lasyx/ksoap2/serialization/SoapSerializationEnvelope;

    .prologue
    .line 99
    iget-object v0, p1, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->xsd:Ljava/lang/String;

    const-string v1, "int"

    sget-object v2, Lasyx/ksoap2/serialization/PropertyInfo;->INTEGER_CLASS:Ljava/lang/Class;

    invoke-virtual {p1, v0, v1, v2, p0}, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->addMapping(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Lasyx/ksoap2/serialization/Marshal;)V

    .line 100
    iget-object v0, p1, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->xsd:Ljava/lang/String;

    const-string v1, "long"

    sget-object v2, Lasyx/ksoap2/serialization/PropertyInfo;->LONG_CLASS:Ljava/lang/Class;

    invoke-virtual {p1, v0, v1, v2, p0}, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->addMapping(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Lasyx/ksoap2/serialization/Marshal;)V

    .line 101
    iget-object v0, p1, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->xsd:Ljava/lang/String;

    const-string v1, "string"

    sget-object v2, Lasyx/ksoap2/serialization/PropertyInfo;->STRING_CLASS:Ljava/lang/Class;

    invoke-virtual {p1, v0, v1, v2, p0}, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->addMapping(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Lasyx/ksoap2/serialization/Marshal;)V

    .line 102
    iget-object v0, p1, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->xsd:Ljava/lang/String;

    const-string v1, "boolean"

    sget-object v2, Lasyx/ksoap2/serialization/PropertyInfo;->BOOLEAN_CLASS:Ljava/lang/Class;

    invoke-virtual {p1, v0, v1, v2, p0}, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->addMapping(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Lasyx/ksoap2/serialization/Marshal;)V

    .line 103
    return-void
.end method

.method public writeInstance(Lasyx/xmlpull/v1/XmlSerializer;Ljava/lang/Object;)V
    .locals 9
    .param p1, "writer"    # Lasyx/xmlpull/v1/XmlSerializer;
    .param p2, "instance"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    instance-of v6, p2, Lasyx/ksoap2/serialization/AttributeContainer;

    if-eqz v6, :cond_2

    move-object v0, p2

    .line 63
    check-cast v0, Lasyx/ksoap2/serialization/AttributeContainer;

    .line 64
    .local v0, "attributeContainer":Lasyx/ksoap2/serialization/AttributeContainer;
    invoke-virtual {v0}, Lasyx/ksoap2/serialization/AttributeContainer;->getAttributeCount()I

    move-result v2

    .line 65
    .local v2, "cnt":I
    const/4 v3, 0x0

    .local v3, "counter":I
    :goto_0
    if-ge v3, v2, :cond_5

    .line 66
    new-instance v1, Lasyx/ksoap2/serialization/AttributeInfo;

    invoke-direct {v1}, Lasyx/ksoap2/serialization/AttributeInfo;-><init>()V

    .line 67
    .local v1, "attributeInfo":Lasyx/ksoap2/serialization/AttributeInfo;
    invoke-virtual {v0, v3, v1}, Lasyx/ksoap2/serialization/AttributeContainer;->getAttributeInfo(ILasyx/ksoap2/serialization/AttributeInfo;)V

    .line 69
    :try_start_0
    invoke-virtual {v0, v3, v1}, Lasyx/ksoap2/serialization/AttributeContainer;->getAttribute(ILasyx/ksoap2/serialization/AttributeInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :goto_1
    invoke-virtual {v1}, Lasyx/ksoap2/serialization/AttributeInfo;->getValue()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 74
    invoke-virtual {v1}, Lasyx/ksoap2/serialization/AttributeInfo;->getNamespace()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Lasyx/ksoap2/serialization/AttributeInfo;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Lasyx/ksoap2/serialization/AttributeInfo;->getValue()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v1}, Lasyx/ksoap2/serialization/AttributeInfo;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_2
    invoke-interface {p1, v7, v8, v6}, Lasyx/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lasyx/xmlpull/v1/XmlSerializer;

    .line 65
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 70
    :catch_0
    move-exception v4

    .line 71
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 74
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_1
    const-string v6, ""

    goto :goto_2

    .line 78
    .end local v0    # "attributeContainer":Lasyx/ksoap2/serialization/AttributeContainer;
    .end local v1    # "attributeInfo":Lasyx/ksoap2/serialization/AttributeInfo;
    .end local v2    # "cnt":I
    .end local v3    # "counter":I
    :cond_2
    instance-of v6, p2, Lasyx/ksoap2/serialization/HasAttributes;

    if-eqz v6, :cond_5

    move-object v5, p2

    .line 79
    check-cast v5, Lasyx/ksoap2/serialization/HasAttributes;

    .line 80
    .local v5, "soapObject":Lasyx/ksoap2/serialization/HasAttributes;
    invoke-interface {v5}, Lasyx/ksoap2/serialization/HasAttributes;->getAttributeCount()I

    move-result v2

    .line 81
    .restart local v2    # "cnt":I
    const/4 v3, 0x0

    .restart local v3    # "counter":I
    :goto_3
    if-ge v3, v2, :cond_5

    .line 82
    new-instance v1, Lasyx/ksoap2/serialization/AttributeInfo;

    invoke-direct {v1}, Lasyx/ksoap2/serialization/AttributeInfo;-><init>()V

    .line 83
    .restart local v1    # "attributeInfo":Lasyx/ksoap2/serialization/AttributeInfo;
    invoke-interface {v5, v3, v1}, Lasyx/ksoap2/serialization/HasAttributes;->getAttributeInfo(ILasyx/ksoap2/serialization/AttributeInfo;)V

    .line 85
    :try_start_1
    invoke-interface {v5, v3, v1}, Lasyx/ksoap2/serialization/HasAttributes;->getAttribute(ILasyx/ksoap2/serialization/AttributeInfo;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 89
    :goto_4
    invoke-virtual {v1}, Lasyx/ksoap2/serialization/AttributeInfo;->getValue()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 90
    invoke-virtual {v1}, Lasyx/ksoap2/serialization/AttributeInfo;->getNamespace()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Lasyx/ksoap2/serialization/AttributeInfo;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Lasyx/ksoap2/serialization/AttributeInfo;->getValue()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {v1}, Lasyx/ksoap2/serialization/AttributeInfo;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_5
    invoke-interface {p1, v7, v8, v6}, Lasyx/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lasyx/xmlpull/v1/XmlSerializer;

    .line 81
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 86
    :catch_1
    move-exception v4

    .line 87
    .restart local v4    # "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 90
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_4
    const-string v6, ""

    goto :goto_5

    .line 95
    .end local v1    # "attributeInfo":Lasyx/ksoap2/serialization/AttributeInfo;
    .end local v2    # "cnt":I
    .end local v3    # "counter":I
    .end local v5    # "soapObject":Lasyx/ksoap2/serialization/HasAttributes;
    :cond_5
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Lasyx/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lasyx/xmlpull/v1/XmlSerializer;

    .line 96
    return-void
.end method
