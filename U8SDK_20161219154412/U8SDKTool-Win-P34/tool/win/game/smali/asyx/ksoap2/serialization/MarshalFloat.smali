.class public Lasyx/ksoap2/serialization/MarshalFloat;
.super Ljava/lang/Object;
.source "MarshalFloat.java"

# interfaces
.implements Lasyx/ksoap2/serialization/Marshal;


# static fields
.field static class$java$lang$Double:Ljava/lang/Class;

.field static class$java$lang$Float:Ljava/lang/Class;

.field static class$java$math$BigDecimal:Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 51
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .local v0, "x1":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public readInstance(Lasyx/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Lasyx/ksoap2/serialization/PropertyInfo;)Ljava/lang/Object;
    .locals 4
    .param p1, "parser"    # Lasyx/xmlpull/v1/XmlPullParser;
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "propertyInfo"    # Lasyx/ksoap2/serialization/PropertyInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lasyx/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 32
    invoke-interface {p1}, Lasyx/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    .line 34
    .local v1, "stringValue":Ljava/lang/String;
    const-string v2, "float"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 35
    new-instance v0, Ljava/lang/Float;

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    .line 43
    :goto_0
    return-object v0

    .line 36
    :cond_0
    const-string v2, "double"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 37
    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, v1}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    .local v0, "result":Ljava/lang/Double;
    goto :goto_0

    .line 38
    .end local v0    # "result":Ljava/lang/Double;
    :cond_1
    const-string v2, "decimal"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 39
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .local v0, "result":Ljava/math/BigDecimal;
    goto :goto_0

    .line 41
    .end local v0    # "result":Ljava/math/BigDecimal;
    :cond_2
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "float, double, or decimal expected"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public register(Lasyx/ksoap2/serialization/SoapSerializationEnvelope;)V
    .locals 3
    .param p1, "cm"    # Lasyx/ksoap2/serialization/SoapSerializationEnvelope;

    .prologue
    .line 51
    iget-object v1, p1, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->xsd:Ljava/lang/String;

    const-string v2, "float"

    sget-object v0, Lasyx/ksoap2/serialization/MarshalFloat;->class$java$lang$Float:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "java.lang.Float"

    invoke-static {v0}, Lasyx/ksoap2/serialization/MarshalFloat;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lasyx/ksoap2/serialization/MarshalFloat;->class$java$lang$Float:Ljava/lang/Class;

    :goto_0
    invoke-virtual {p1, v1, v2, v0, p0}, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->addMapping(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Lasyx/ksoap2/serialization/Marshal;)V

    .line 52
    iget-object v1, p1, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->xsd:Ljava/lang/String;

    const-string v2, "double"

    sget-object v0, Lasyx/ksoap2/serialization/MarshalFloat;->class$java$lang$Double:Ljava/lang/Class;

    if-nez v0, :cond_1

    const-string v0, "java.lang.Double"

    invoke-static {v0}, Lasyx/ksoap2/serialization/MarshalFloat;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lasyx/ksoap2/serialization/MarshalFloat;->class$java$lang$Double:Ljava/lang/Class;

    :goto_1
    invoke-virtual {p1, v1, v2, v0, p0}, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->addMapping(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Lasyx/ksoap2/serialization/Marshal;)V

    .line 53
    iget-object v1, p1, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->xsd:Ljava/lang/String;

    const-string v2, "decimal"

    sget-object v0, Lasyx/ksoap2/serialization/MarshalFloat;->class$java$math$BigDecimal:Ljava/lang/Class;

    if-nez v0, :cond_2

    const-string v0, "java.math.BigDecimal"

    invoke-static {v0}, Lasyx/ksoap2/serialization/MarshalFloat;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lasyx/ksoap2/serialization/MarshalFloat;->class$java$math$BigDecimal:Ljava/lang/Class;

    :goto_2
    invoke-virtual {p1, v1, v2, v0, p0}, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->addMapping(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Lasyx/ksoap2/serialization/Marshal;)V

    .line 54
    return-void

    .line 51
    :cond_0
    sget-object v0, Lasyx/ksoap2/serialization/MarshalFloat;->class$java$lang$Float:Ljava/lang/Class;

    goto :goto_0

    .line 52
    :cond_1
    sget-object v0, Lasyx/ksoap2/serialization/MarshalFloat;->class$java$lang$Double:Ljava/lang/Class;

    goto :goto_1

    .line 53
    :cond_2
    sget-object v0, Lasyx/ksoap2/serialization/MarshalFloat;->class$java$math$BigDecimal:Ljava/lang/Class;

    goto :goto_2
.end method

.method public writeInstance(Lasyx/xmlpull/v1/XmlSerializer;Ljava/lang/Object;)V
    .locals 1
    .param p1, "writer"    # Lasyx/xmlpull/v1/XmlSerializer;
    .param p2, "instance"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lasyx/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lasyx/xmlpull/v1/XmlSerializer;

    .line 48
    return-void
.end method
