.class public Lasyx/ksoap2/serialization/SoapSerializationEnvelope;
.super Lasyx/ksoap2/SoapEnvelope;
.source "SoapSerializationEnvelope.java"


# static fields
.field private static final ANY_TYPE_LABEL:Ljava/lang/String; = "anyType"

.field private static final ARRAY_MAPPING_NAME:Ljava/lang/String; = "Array"

.field private static final ARRAY_TYPE_LABEL:Ljava/lang/String; = "arrayType"

.field static final DEFAULT_MARSHAL:Lasyx/ksoap2/serialization/Marshal;

.field private static final HREF_LABEL:Ljava/lang/String; = "href"

.field private static final ID_LABEL:Ljava/lang/String; = "id"

.field private static final ITEM_LABEL:Ljava/lang/String; = "item"

.field protected static final NIL_LABEL:Ljava/lang/String; = "nil"

.field protected static final NULL_LABEL:Ljava/lang/String; = "null"

.field protected static final QNAME_MARSHAL:I = 0x3

.field protected static final QNAME_NAMESPACE:I = 0x0

.field protected static final QNAME_TYPE:I = 0x1

.field private static final ROOT_LABEL:Ljava/lang/String; = "root"

.field private static final TYPE_LABEL:Ljava/lang/String; = "type"

.field static class$org$ksoap2$serialization$SoapObject:Ljava/lang/Class;


# instance fields
.field protected addAdornments:Z

.field public avoidExceptionForUnknownProperty:Z

.field protected classToQName:Ljava/util/Hashtable;

.field public dotNet:Z

.field idMap:Ljava/util/Hashtable;

.field public implicitTypes:Z

.field multiRef:Ljava/util/Vector;

.field public properties:Ljava/util/Hashtable;

.field protected qNameToClass:Ljava/util/Hashtable;

.field public skipNullProperties:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Lasyx/ksoap2/serialization/DM;

    invoke-direct {v0}, Lasyx/ksoap2/serialization/DM;-><init>()V

    sput-object v0, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->DEFAULT_MARSHAL:Lasyx/ksoap2/serialization/Marshal;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "version"    # I

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lasyx/ksoap2/SoapEnvelope;-><init>(I)V

    .line 56
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->properties:Ljava/util/Hashtable;

    .line 84
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->qNameToClass:Ljava/util/Hashtable;

    .line 89
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->classToQName:Ljava/util/Hashtable;

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->addAdornments:Z

    .line 94
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->idMap:Ljava/util/Hashtable;

    .line 99
    iget-object v0, p0, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->enc:Ljava/lang/String;

    const-string v1, "Array"

    sget-object v2, Lasyx/ksoap2/serialization/PropertyInfo;->VECTOR_CLASS:Ljava/lang/Class;

    invoke-virtual {p0, v0, v1, v2}, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->addMapping(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    .line 100
    sget-object v0, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->DEFAULT_MARSHAL:Lasyx/ksoap2/serialization/Marshal;

    invoke-interface {v0, p0}, Lasyx/ksoap2/serialization/Marshal;->register(Lasyx/ksoap2/serialization/SoapSerializationEnvelope;)V

    .line 101
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 478
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

.method private getIndex(Ljava/lang/String;II)I
    .locals 3
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "dflt"    # I

    .prologue
    .line 312
    if-nez p1, :cond_1

    .line 319
    .end local p3    # "dflt":I
    :cond_0
    :goto_0
    return p3

    .line 316
    .restart local p3    # "dflt":I
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, p2

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p3

    goto :goto_0

    .line 318
    :catch_0
    move-exception v0

    .line 319
    .local v0, "ex":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private writeAttributes(Lasyx/xmlpull/v1/XmlSerializer;Lasyx/ksoap2/serialization/HasAttributes;)V
    .locals 7
    .param p1, "writer"    # Lasyx/xmlpull/v1/XmlSerializer;
    .param p2, "obj"    # Lasyx/ksoap2/serialization/HasAttributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 635
    move-object v3, p2

    .line 636
    .local v3, "soapObject":Lasyx/ksoap2/serialization/HasAttributes;
    invoke-interface {v3}, Lasyx/ksoap2/serialization/HasAttributes;->getAttributeCount()I

    move-result v1

    .line 637
    .local v1, "cnt":I
    const/4 v2, 0x0

    .local v2, "counter":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 638
    new-instance v0, Lasyx/ksoap2/serialization/AttributeInfo;

    invoke-direct {v0}, Lasyx/ksoap2/serialization/AttributeInfo;-><init>()V

    .line 639
    .local v0, "attributeInfo":Lasyx/ksoap2/serialization/AttributeInfo;
    invoke-interface {v3, v2, v0}, Lasyx/ksoap2/serialization/HasAttributes;->getAttributeInfo(ILasyx/ksoap2/serialization/AttributeInfo;)V

    .line 640
    invoke-interface {v3, v2, v0}, Lasyx/ksoap2/serialization/HasAttributes;->getAttribute(ILasyx/ksoap2/serialization/AttributeInfo;)V

    .line 641
    invoke-virtual {v0}, Lasyx/ksoap2/serialization/AttributeInfo;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 642
    invoke-virtual {v0}, Lasyx/ksoap2/serialization/AttributeInfo;->getNamespace()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lasyx/ksoap2/serialization/AttributeInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lasyx/ksoap2/serialization/AttributeInfo;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v4, v5, v6}, Lasyx/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lasyx/xmlpull/v1/XmlSerializer;

    .line 637
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 646
    .end local v0    # "attributeInfo":Lasyx/ksoap2/serialization/AttributeInfo;
    :cond_1
    return-void
.end method


# virtual methods
.method public addMapping(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "clazz"    # Ljava/lang/Class;

    .prologue
    .line 566
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->addMapping(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Lasyx/ksoap2/serialization/Marshal;)V

    .line 567
    return-void
.end method

.method public addMapping(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Lasyx/ksoap2/serialization/Marshal;)V
    .locals 5
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "clazz"    # Ljava/lang/Class;
    .param p4, "marshal"    # Lasyx/ksoap2/serialization/Marshal;

    .prologue
    const/4 v4, 0x0

    .line 557
    iget-object v1, p0, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->qNameToClass:Ljava/util/Hashtable;

    new-instance v2, Lasyx/ksoap2/serialization/SoapPrimitive;

    invoke-direct {v2, p1, p2, v4}, Lasyx/ksoap2/serialization/SoapPrimitive;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    if-nez p4, :cond_0

    move-object v0, p3

    :goto_0
    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    iget-object v0, p0, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->classToQName:Ljava/util/Hashtable;

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    return-void

    :cond_0
    move-object v0, p4

    .line 557
    goto :goto_0
.end method

.method public addTemplate(Lasyx/ksoap2/serialization/SoapObject;)V
    .locals 5
    .param p1, "so"    # Lasyx/ksoap2/serialization/SoapObject;

    .prologue
    .line 574
    iget-object v0, p0, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->qNameToClass:Ljava/util/Hashtable;

    new-instance v1, Lasyx/ksoap2/serialization/SoapPrimitive;

    iget-object v2, p1, Lasyx/ksoap2/serialization/SoapObject;->namespace:Ljava/lang/String;

    iget-object v3, p1, Lasyx/ksoap2/serialization/SoapObject;->name:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lasyx/ksoap2/serialization/SoapPrimitive;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
    return-void
.end method

.method protected getIdFromHref(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "hrefValue"    # Ljava/lang/String;

    .prologue
    .line 368
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInfo(Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 10
    .param p1, "type"    # Ljava/lang/Object;
    .param p2, "instance"    # Ljava/lang/Object;

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 528
    if-nez p1, :cond_1

    .line 529
    instance-of v3, p2, Lasyx/ksoap2/serialization/SoapObject;

    if-nez v3, :cond_0

    instance-of v3, p2, Lasyx/ksoap2/serialization/SoapPrimitive;

    if-eqz v3, :cond_3

    .line 530
    :cond_0
    move-object p1, p2

    .line 535
    .end local p1    # "type":Ljava/lang/Object;
    :cond_1
    :goto_0
    instance-of v3, p1, Lasyx/ksoap2/serialization/SoapObject;

    if-eqz v3, :cond_4

    move-object v0, p1

    .line 536
    check-cast v0, Lasyx/ksoap2/serialization/SoapObject;

    .line 537
    .local v0, "so":Lasyx/ksoap2/serialization/SoapObject;
    const/4 v3, 0x4

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Lasyx/ksoap2/serialization/SoapObject;->getNamespace()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v0}, Lasyx/ksoap2/serialization/SoapObject;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    aput-object v5, v2, v8

    aput-object v5, v2, v9

    .line 549
    .end local v0    # "so":Lasyx/ksoap2/serialization/SoapObject;
    :cond_2
    :goto_1
    return-object v2

    .line 532
    .restart local p1    # "type":Ljava/lang/Object;
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .local p1, "type":Ljava/lang/Class;
    goto :goto_0

    .line 539
    .end local p1    # "type":Ljava/lang/Class;
    :cond_4
    instance-of v3, p1, Lasyx/ksoap2/serialization/SoapPrimitive;

    if-eqz v3, :cond_5

    move-object v1, p1

    .line 540
    check-cast v1, Lasyx/ksoap2/serialization/SoapPrimitive;

    .line 541
    .local v1, "sp":Lasyx/ksoap2/serialization/SoapPrimitive;
    const/4 v3, 0x4

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v1}, Lasyx/ksoap2/serialization/SoapPrimitive;->getNamespace()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v1}, Lasyx/ksoap2/serialization/SoapPrimitive;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    aput-object v5, v2, v8

    sget-object v3, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->DEFAULT_MARSHAL:Lasyx/ksoap2/serialization/Marshal;

    aput-object v3, v2, v9

    goto :goto_1

    .line 543
    .end local v1    # "sp":Lasyx/ksoap2/serialization/SoapPrimitive;
    :cond_5
    instance-of v3, p1, Ljava/lang/Class;

    if-eqz v3, :cond_6

    sget-object v3, Lasyx/ksoap2/serialization/PropertyInfo;->OBJECT_CLASS:Ljava/lang/Class;

    if-eq p1, v3, :cond_6

    .line 544
    iget-object v3, p0, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->classToQName:Ljava/util/Hashtable;

    check-cast p1, Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    move-object v2, v3

    check-cast v2, [Ljava/lang/Object;

    .line 545
    .local v2, "tmp":[Ljava/lang/Object;
    if-nez v2, :cond_2

    .line 549
    .end local v2    # "tmp":[Ljava/lang/Object;
    :cond_6
    const/4 v3, 0x4

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->xsd:Ljava/lang/String;

    aput-object v3, v2, v6

    const-string v3, "anyType"

    aput-object v3, v2, v7

    aput-object v5, v2, v8

    aput-object v5, v2, v9

    goto :goto_1
.end method

.method public getResponse()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lasyx/ksoap2/SoapFault;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 585
    iget-object v3, p0, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->bodyIn:Ljava/lang/Object;

    if-nez v3, :cond_1

    .line 602
    :cond_0
    :goto_0
    return-object v2

    .line 588
    :cond_1
    iget-object v3, p0, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->bodyIn:Ljava/lang/Object;

    instance-of v3, v3, Lasyx/ksoap2/SoapFault;

    if-eqz v3, :cond_2

    .line 589
    iget-object v3, p0, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->bodyIn:Ljava/lang/Object;

    check-cast v3, Lasyx/ksoap2/SoapFault;

    throw v3

    .line 591
    :cond_2
    iget-object v1, p0, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->bodyIn:Ljava/lang/Object;

    check-cast v1, Lasyx/ksoap2/serialization/KvmSerializable;

    .line 593
    .local v1, "ks":Lasyx/ksoap2/serialization/KvmSerializable;
    invoke-interface {v1}, Lasyx/ksoap2/serialization/KvmSerializable;->getPropertyCount()I

    move-result v3

    if-eqz v3, :cond_0

    .line 595
    invoke-interface {v1}, Lasyx/ksoap2/serialization/KvmSerializable;->getPropertyCount()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 596
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Lasyx/ksoap2/serialization/KvmSerializable;->getProperty(I)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 598
    :cond_3
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 599
    .local v2, "ret":Ljava/util/Vector;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {v1}, Lasyx/ksoap2/serialization/KvmSerializable;->getPropertyCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 600
    invoke-interface {v1, v0}, Lasyx/ksoap2/serialization/KvmSerializable;->getProperty(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 599
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public isAddAdornments()Z
    .locals 1

    .prologue
    .line 107
    iget-boolean v0, p0, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->addAdornments:Z

    return v0
.end method

.method public parseBody(Lasyx/xmlpull/v1/XmlPullParser;)V
    .locals 11
    .param p1, "parser"    # Lasyx/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lasyx/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v10, 0x2

    .line 131
    iput-object v2, p0, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->bodyIn:Ljava/lang/Object;

    .line 132
    invoke-interface {p1}, Lasyx/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 133
    invoke-interface {p1}, Lasyx/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    if-ne v0, v10, :cond_2

    invoke-interface {p1}, Lasyx/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->env:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lasyx/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Fault"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 136
    iget v0, p0, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->version:I

    const/16 v1, 0x78

    if-ge v0, v1, :cond_1

    .line 137
    new-instance v7, Lasyx/ksoap2/SoapFault;

    iget v0, p0, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->version:I

    invoke-direct {v7, v0}, Lasyx/ksoap2/SoapFault;-><init>(I)V

    .line 141
    .local v7, "fault":Lasyx/ksoap2/SoapFault;
    :goto_0
    invoke-virtual {v7, p1}, Lasyx/ksoap2/SoapFault;->parse(Lasyx/xmlpull/v1/XmlPullParser;)V

    .line 142
    iput-object v7, p0, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->bodyIn:Ljava/lang/Object;

    .line 155
    .end local v7    # "fault":Lasyx/ksoap2/SoapFault;
    :cond_0
    return-void

    .line 139
    :cond_1
    new-instance v7, Lasyx/ksoap2/SoapFault12;

    iget v0, p0, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->version:I

    invoke-direct {v7, v0}, Lasyx/ksoap2/SoapFault12;-><init>(I)V

    .restart local v7    # "fault":Lasyx/ksoap2/SoapFault;
    goto :goto_0

    .line 144
    .end local v7    # "fault":Lasyx/ksoap2/SoapFault;
    :cond_2
    :goto_1
    invoke-interface {p1}, Lasyx/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    if-ne v0, v10, :cond_0

    .line 145
    iget-object v0, p0, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->enc:Ljava/lang/String;

    const-string v1, "root"

    invoke-interface {p1, v0, v1}, Lasyx/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 147
    .local v9, "rootAttr":Ljava/lang/String;
    const/4 v3, -0x1

    invoke-interface {p1}, Lasyx/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Lasyx/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lasyx/ksoap2/serialization/PropertyInfo;->OBJECT_TYPE:Lasyx/ksoap2/serialization/PropertyInfo;

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->read(Lasyx/xmlpull/v1/XmlPullParser;Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;Lasyx/ksoap2/serialization/PropertyInfo;)Ljava/lang/Object;

    move-result-object v8

    .line 149
    .local v8, "o":Ljava/lang/Object;
    const-string v0, "1"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->bodyIn:Ljava/lang/Object;

    if-nez v0, :cond_4

    .line 150
    :cond_3
    iput-object v8, p0, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->bodyIn:Ljava/lang/Object;

    .line 152
    :cond_4
    invoke-interface {p1}, Lasyx/xmlpull/v1/XmlPullParser;->nextTag()I

    goto :goto_1
.end method

.method public read(Lasyx/xmlpull/v1/XmlPullParser;Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;Lasyx/ksoap2/serialization/PropertyInfo;)Ljava/lang/Object;
    .locals 17
    .param p1, "parser"    # Lasyx/xmlpull/v1/XmlPullParser;
    .param p2, "owner"    # Ljava/lang/Object;
    .param p3, "index"    # I
    .param p4, "namespace"    # Ljava/lang/String;
    .param p5, "name"    # Ljava/lang/String;
    .param p6, "expected"    # Lasyx/ksoap2/serialization/PropertyInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lasyx/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 379
    invoke-interface/range {p1 .. p1}, Lasyx/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 380
    .local v6, "elementName":Ljava/lang/String;
    const/4 v15, 0x0

    const-string v16, "href"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v15, v1}, Lasyx/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 382
    .local v8, "href":Ljava/lang/String;
    if-eqz v8, :cond_4

    .line 383
    if-nez p2, :cond_0

    .line 384
    new-instance v15, Ljava/lang/RuntimeException;

    const-string v16, "href at root level?!?"

    invoke-direct/range {v15 .. v16}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 386
    :cond_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->getIdFromHref(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 387
    move-object/from16 v0, p0

    iget-object v15, v0, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->idMap:Ljava/util/Hashtable;

    invoke-virtual {v15, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 388
    .local v12, "obj":Ljava/lang/Object;
    if-eqz v12, :cond_1

    instance-of v15, v12, Lasyx/ksoap2/serialization/FwdRef;

    if-eqz v15, :cond_2

    .line 389
    :cond_1
    new-instance v7, Lasyx/ksoap2/serialization/FwdRef;

    invoke-direct {v7}, Lasyx/ksoap2/serialization/FwdRef;-><init>()V

    .line 390
    .local v7, "f":Lasyx/ksoap2/serialization/FwdRef;
    check-cast v12, Lasyx/ksoap2/serialization/FwdRef;

    .end local v12    # "obj":Ljava/lang/Object;
    iput-object v12, v7, Lasyx/ksoap2/serialization/FwdRef;->next:Lasyx/ksoap2/serialization/FwdRef;

    .line 391
    move-object/from16 v0, p2

    iput-object v0, v7, Lasyx/ksoap2/serialization/FwdRef;->obj:Ljava/lang/Object;

    .line 392
    move/from16 v0, p3

    iput v0, v7, Lasyx/ksoap2/serialization/FwdRef;->index:I

    .line 393
    move-object/from16 v0, p0

    iget-object v15, v0, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->idMap:Ljava/util/Hashtable;

    invoke-virtual {v15, v8, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    const/4 v12, 0x0

    .line 396
    .end local v7    # "f":Lasyx/ksoap2/serialization/FwdRef;
    :cond_2
    invoke-interface/range {p1 .. p1}, Lasyx/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 397
    const/4 v15, 0x3

    const/16 v16, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v15, v1, v6}, Lasyx/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 441
    :cond_3
    :goto_0
    const/4 v15, 0x3

    const/16 v16, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v15, v1, v6}, Lasyx/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 442
    return-object v12

    .line 399
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->xsi:Ljava/lang/String;

    const-string v16, "nil"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v15, v1}, Lasyx/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 400
    .local v11, "nullAttr":Ljava/lang/String;
    const/4 v15, 0x0

    const-string v16, "id"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v15, v1}, Lasyx/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 401
    .local v9, "id":Ljava/lang/String;
    if-nez v11, :cond_5

    .line 402
    move-object/from16 v0, p0

    iget-object v15, v0, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->xsi:Ljava/lang/String;

    const-string v16, "null"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v15, v1}, Lasyx/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 404
    :cond_5
    if-eqz v11, :cond_7

    invoke-static {v11}, Lasyx/ksoap2/SoapEnvelope;->stringToBoolean(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 405
    const/4 v12, 0x0

    .line 406
    .restart local v12    # "obj":Ljava/lang/Object;
    invoke-interface/range {p1 .. p1}, Lasyx/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 407
    const/4 v15, 0x3

    const/16 v16, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v15, v1, v6}, Lasyx/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 435
    .end local v12    # "obj":Ljava/lang/Object;
    :cond_6
    :goto_1
    if-eqz v9, :cond_3

    .line 436
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v12}, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->resolveReference(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 409
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->xsi:Ljava/lang/String;

    const-string v16, "type"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v15, v1}, Lasyx/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 410
    .local v14, "type":Ljava/lang/String;
    if-eqz v14, :cond_b

    .line 411
    const/16 v15, 0x3a

    invoke-virtual {v14, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 412
    .local v5, "cut":I
    add-int/lit8 v15, v5, 0x1

    invoke-virtual {v14, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p5

    .line 413
    const/4 v15, -0x1

    if-ne v5, v15, :cond_a

    const-string v13, ""

    .line 414
    .local v13, "prefix":Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Lasyx/xmlpull/v1/XmlPullParser;->getNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 426
    .end local v5    # "cut":I
    .end local v13    # "prefix":Ljava/lang/String;
    :cond_8
    :goto_3
    if-nez v14, :cond_9

    .line 427
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->implicitTypes:Z

    .line 429
    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    invoke-virtual {v0, v1, v2, v3, v4}, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->readInstance(Lasyx/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Lasyx/ksoap2/serialization/PropertyInfo;)Ljava/lang/Object;

    move-result-object v12

    .line 430
    .restart local v12    # "obj":Ljava/lang/Object;
    if-nez v12, :cond_6

    .line 431
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    invoke-virtual {v0, v1, v2, v3}, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->readUnknown(Lasyx/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    goto :goto_1

    .line 413
    .end local v12    # "obj":Ljava/lang/Object;
    .restart local v5    # "cut":I
    :cond_a
    const/4 v15, 0x0

    invoke-virtual {v14, v15, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    goto :goto_2

    .line 415
    .end local v5    # "cut":I
    :cond_b
    if-nez p5, :cond_8

    if-nez p4, :cond_8

    .line 416
    move-object/from16 v0, p0

    iget-object v15, v0, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->enc:Ljava/lang/String;

    const-string v16, "arrayType"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v15, v1}, Lasyx/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_c

    .line 417
    move-object/from16 v0, p0

    iget-object v0, v0, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->enc:Ljava/lang/String;

    move-object/from16 p4, v0

    .line 418
    const-string p5, "Array"

    goto :goto_3

    .line 420
    :cond_c
    move-object/from16 v0, p6

    iget-object v15, v0, Lasyx/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->getInfo(Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    .line 421
    .local v10, "names":[Ljava/lang/Object;
    const/4 v15, 0x0

    aget-object p4, v10, v15

    .end local p4    # "namespace":Ljava/lang/String;
    check-cast p4, Ljava/lang/String;

    .line 422
    .restart local p4    # "namespace":Ljava/lang/String;
    const/4 v15, 0x1

    aget-object p5, v10, v15

    .end local p5    # "name":Ljava/lang/String;
    check-cast p5, Ljava/lang/String;

    .restart local p5    # "name":Ljava/lang/String;
    goto :goto_3
.end method

.method public readInstance(Lasyx/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Lasyx/ksoap2/serialization/PropertyInfo;)Ljava/lang/Object;
    .locals 9
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
    const/4 v6, 0x0

    .line 470
    iget-object v7, p0, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->qNameToClass:Ljava/util/Hashtable;

    new-instance v8, Lasyx/ksoap2/serialization/SoapPrimitive;

    invoke-direct {v8, p2, p3, v6}, Lasyx/ksoap2/serialization/SoapPrimitive;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v7, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 471
    .local v4, "obj":Ljava/lang/Object;
    if-nez v4, :cond_0

    move-object v4, v6

    .line 519
    .end local v4    # "obj":Ljava/lang/Object;
    :goto_0
    return-object v4

    .line 474
    .restart local v4    # "obj":Ljava/lang/Object;
    :cond_0
    instance-of v6, v4, Lasyx/ksoap2/serialization/Marshal;

    if-eqz v6, :cond_1

    .line 475
    check-cast v4, Lasyx/ksoap2/serialization/Marshal;

    .end local v4    # "obj":Ljava/lang/Object;
    invoke-interface {v4, p1, p2, p3, p4}, Lasyx/ksoap2/serialization/Marshal;->readInstance(Lasyx/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;Lasyx/ksoap2/serialization/PropertyInfo;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    .line 476
    .restart local v4    # "obj":Ljava/lang/Object;
    :cond_1
    instance-of v6, v4, Lasyx/ksoap2/serialization/SoapObject;

    if-eqz v6, :cond_2

    .line 477
    check-cast v4, Lasyx/ksoap2/serialization/SoapObject;

    .end local v4    # "obj":Ljava/lang/Object;
    invoke-virtual {v4}, Lasyx/ksoap2/serialization/SoapObject;->newInstance()Lasyx/ksoap2/serialization/SoapObject;

    move-result-object v4

    .line 487
    :goto_1
    instance-of v6, v4, Lasyx/ksoap2/serialization/HasAttributes;

    if-eqz v6, :cond_5

    move-object v5, v4

    .line 488
    check-cast v5, Lasyx/ksoap2/serialization/HasAttributes;

    .line 489
    .local v5, "soapObject":Lasyx/ksoap2/serialization/HasAttributes;
    invoke-interface {p1}, Lasyx/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v1

    .line 490
    .local v1, "cnt":I
    const/4 v2, 0x0

    .local v2, "counter":I
    :goto_2
    if-ge v2, v1, :cond_5

    .line 492
    new-instance v0, Lasyx/ksoap2/serialization/AttributeInfo;

    invoke-direct {v0}, Lasyx/ksoap2/serialization/AttributeInfo;-><init>()V

    .line 493
    .local v0, "attributeInfo":Lasyx/ksoap2/serialization/AttributeInfo;
    invoke-interface {p1, v2}, Lasyx/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lasyx/ksoap2/serialization/AttributeInfo;->setName(Ljava/lang/String;)V

    .line 494
    invoke-interface {p1, v2}, Lasyx/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lasyx/ksoap2/serialization/AttributeInfo;->setValue(Ljava/lang/Object;)V

    .line 495
    invoke-interface {p1, v2}, Lasyx/xmlpull/v1/XmlPullParser;->getAttributeNamespace(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lasyx/ksoap2/serialization/AttributeInfo;->setNamespace(Ljava/lang/String;)V

    .line 496
    invoke-interface {p1, v2}, Lasyx/xmlpull/v1/XmlPullParser;->getAttributeType(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lasyx/ksoap2/serialization/AttributeInfo;->setType(Ljava/lang/Object;)V

    .line 498
    invoke-interface {v5, v0}, Lasyx/ksoap2/serialization/HasAttributes;->setAttribute(Lasyx/ksoap2/serialization/AttributeInfo;)V

    .line 490
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 478
    .end local v0    # "attributeInfo":Lasyx/ksoap2/serialization/AttributeInfo;
    .end local v1    # "cnt":I
    .end local v2    # "counter":I
    .end local v5    # "soapObject":Lasyx/ksoap2/serialization/HasAttributes;
    .restart local v4    # "obj":Ljava/lang/Object;
    :cond_2
    sget-object v6, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->class$org$ksoap2$serialization$SoapObject:Ljava/lang/Class;

    if-nez v6, :cond_3

    const-string v6, "asyx.ksoap2.serialization.SoapObject"

    invoke-static {v6}, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    sput-object v6, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->class$org$ksoap2$serialization$SoapObject:Ljava/lang/Class;

    :goto_3
    if-ne v4, v6, :cond_4

    .line 479
    new-instance v4, Lasyx/ksoap2/serialization/SoapObject;

    .end local v4    # "obj":Ljava/lang/Object;
    invoke-direct {v4, p2, p3}, Lasyx/ksoap2/serialization/SoapObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v4, "obj":Lasyx/ksoap2/serialization/SoapObject;
    goto :goto_1

    .line 478
    .local v4, "obj":Ljava/lang/Object;
    :cond_3
    sget-object v6, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->class$org$ksoap2$serialization$SoapObject:Ljava/lang/Class;

    goto :goto_3

    .line 482
    :cond_4
    :try_start_0
    check-cast v4, Ljava/lang/Class;

    .end local v4    # "obj":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .restart local v4    # "obj":Ljava/lang/Object;
    goto :goto_1

    .line 483
    .end local v4    # "obj":Ljava/lang/Object;
    :catch_0
    move-exception v3

    .line 484
    .local v3, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 504
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_5
    instance-of v6, v4, Lasyx/ksoap2/serialization/SoapObject;

    if-eqz v6, :cond_6

    move-object v6, v4

    .line 505
    check-cast v6, Lasyx/ksoap2/serialization/SoapObject;

    invoke-virtual {p0, p1, v6}, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->readSerializable(Lasyx/xmlpull/v1/XmlPullParser;Lasyx/ksoap2/serialization/SoapObject;)V

    goto :goto_0

    .line 507
    :cond_6
    instance-of v6, v4, Lasyx/ksoap2/serialization/KvmSerializable;

    if-eqz v6, :cond_8

    move-object v6, v4

    .line 509
    check-cast v6, Lasyx/ksoap2/serialization/KvmSerializable;

    invoke-interface {p1}, Lasyx/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_7

    invoke-interface {p1}, Lasyx/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v7

    :goto_4
    invoke-interface {v6, v7}, Lasyx/ksoap2/serialization/KvmSerializable;->setInnerText(Ljava/lang/String;)V

    move-object v6, v4

    .line 510
    check-cast v6, Lasyx/ksoap2/serialization/KvmSerializable;

    invoke-virtual {p0, p1, v6}, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->readSerializable(Lasyx/xmlpull/v1/XmlPullParser;Lasyx/ksoap2/serialization/KvmSerializable;)V

    goto/16 :goto_0

    .line 509
    :cond_7
    const-string v7, ""

    goto :goto_4

    .line 512
    :cond_8
    instance-of v6, v4, Ljava/util/Vector;

    if-eqz v6, :cond_9

    move-object v6, v4

    .line 513
    check-cast v6, Ljava/util/Vector;

    iget-object v7, p4, Lasyx/ksoap2/serialization/PropertyInfo;->elementType:Lasyx/ksoap2/serialization/PropertyInfo;

    invoke-virtual {p0, p1, v6, v7}, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->readVector(Lasyx/xmlpull/v1/XmlPullParser;Ljava/util/Vector;Lasyx/ksoap2/serialization/PropertyInfo;)V

    goto/16 :goto_0

    .line 516
    :cond_9
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "no deserializer for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method protected readSerializable(Lasyx/xmlpull/v1/XmlPullParser;Lasyx/ksoap2/serialization/KvmSerializable;)V
    .locals 24
    .param p1, "parser"    # Lasyx/xmlpull/v1/XmlPullParser;
    .param p2, "obj"    # Lasyx/ksoap2/serialization/KvmSerializable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lasyx/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 175
    const/16 v23, 0x0

    .line 177
    .local v23, "tag":I
    :try_start_0
    invoke-interface/range {p1 .. p1}, Lasyx/xmlpull/v1/XmlPullParser;->nextTag()I
    :try_end_0
    .catch Lasyx/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v23

    .line 182
    :goto_0
    const/4 v2, 0x3

    move/from16 v0, v23

    if-eq v0, v2, :cond_c

    .line 183
    invoke-interface/range {p1 .. p1}, Lasyx/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v14

    .line 184
    .local v14, "name":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->implicitTypes:Z

    if-eqz v2, :cond_0

    move-object/from16 v0, p2

    instance-of v2, v0, Lasyx/ksoap2/serialization/SoapObject;

    if-nez v2, :cond_a

    .line 185
    :cond_0
    new-instance v8, Lasyx/ksoap2/serialization/PropertyInfo;

    invoke-direct {v8}, Lasyx/ksoap2/serialization/PropertyInfo;-><init>()V

    .line 186
    .local v8, "info":Lasyx/ksoap2/serialization/PropertyInfo;
    invoke-interface/range {p2 .. p2}, Lasyx/ksoap2/serialization/KvmSerializable;->getPropertyCount()I

    move-result v20

    .line 187
    .local v20, "propertyCount":I
    const/16 v21, 0x0

    .line 189
    .local v21, "propertyFound":Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    move/from16 v0, v20

    if-ge v5, v0, :cond_5

    if-nez v21, :cond_5

    .line 190
    invoke-virtual {v8}, Lasyx/ksoap2/serialization/PropertyInfo;->clear()V

    .line 191
    move-object/from16 v0, p0

    iget-object v2, v0, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->properties:Ljava/util/Hashtable;

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v2, v8}, Lasyx/ksoap2/serialization/KvmSerializable;->getPropertyInfo(ILjava/util/Hashtable;Lasyx/ksoap2/serialization/PropertyInfo;)V

    .line 193
    iget-object v2, v8, Lasyx/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v8, Lasyx/ksoap2/serialization/PropertyInfo;->namespace:Ljava/lang/String;

    if-eqz v2, :cond_2

    :cond_1
    iget-object v2, v8, Lasyx/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface/range {p1 .. p1}, Lasyx/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v8, Lasyx/ksoap2/serialization/PropertyInfo;->namespace:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 195
    :cond_2
    const/16 v21, 0x1

    .line 196
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-virtual/range {v2 .. v8}, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->read(Lasyx/xmlpull/v1/XmlPullParser;Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;Lasyx/ksoap2/serialization/PropertyInfo;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v2}, Lasyx/ksoap2/serialization/KvmSerializable;->setProperty(ILjava/lang/Object;)V

    .line 189
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 178
    .end local v5    # "i":I
    .end local v8    # "info":Lasyx/ksoap2/serialization/PropertyInfo;
    .end local v14    # "name":Ljava/lang/String;
    .end local v20    # "propertyCount":I
    .end local v21    # "propertyFound":Z
    :catch_0
    move-exception v19

    .line 179
    .local v19, "e":Lasyx/xmlpull/v1/XmlPullParserException;
    invoke-interface/range {p1 .. p1}, Lasyx/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-interface/range {p1 .. p1}, Lasyx/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    :goto_2
    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Lasyx/ksoap2/serialization/KvmSerializable;->setInnerText(Ljava/lang/String;)V

    .line 180
    invoke-interface/range {p1 .. p1}, Lasyx/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v23

    goto :goto_0

    .line 179
    :cond_4
    const-string v2, ""

    goto :goto_2

    .line 200
    .end local v19    # "e":Lasyx/xmlpull/v1/XmlPullParserException;
    .restart local v5    # "i":I
    .restart local v8    # "info":Lasyx/ksoap2/serialization/PropertyInfo;
    .restart local v14    # "name":Ljava/lang/String;
    .restart local v20    # "propertyCount":I
    .restart local v21    # "propertyFound":Z
    :cond_5
    if-nez v21, :cond_9

    .line 201
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->avoidExceptionForUnknownProperty:Z

    if-eqz v2, :cond_8

    .line 203
    :cond_6
    invoke-interface/range {p1 .. p1}, Lasyx/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_6

    invoke-interface/range {p1 .. p1}, Lasyx/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 231
    .end local v5    # "i":I
    .end local v8    # "info":Lasyx/ksoap2/serialization/PropertyInfo;
    .end local v20    # "propertyCount":I
    .end local v21    # "propertyFound":Z
    :cond_7
    :goto_3
    :try_start_1
    invoke-interface/range {p1 .. p1}, Lasyx/xmlpull/v1/XmlPullParser;->nextTag()I
    :try_end_1
    .catch Lasyx/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v23

    goto/16 :goto_0

    .line 207
    .restart local v5    # "i":I
    .restart local v8    # "info":Lasyx/ksoap2/serialization/PropertyInfo;
    .restart local v20    # "propertyCount":I
    .restart local v21    # "propertyFound":Z
    :cond_8
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Unknown Property: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 210
    :cond_9
    move-object/from16 v0, p2

    instance-of v2, v0, Lasyx/ksoap2/serialization/HasAttributes;

    if-eqz v2, :cond_7

    move-object/from16 v22, p2

    .line 211
    check-cast v22, Lasyx/ksoap2/serialization/HasAttributes;

    .line 212
    .local v22, "soapObject":Lasyx/ksoap2/serialization/HasAttributes;
    invoke-interface/range {p1 .. p1}, Lasyx/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v17

    .line 213
    .local v17, "cnt":I
    const/16 v18, 0x0

    .local v18, "counter":I
    :goto_4
    move/from16 v0, v18

    move/from16 v1, v17

    if-ge v0, v1, :cond_7

    .line 214
    new-instance v16, Lasyx/ksoap2/serialization/AttributeInfo;

    invoke-direct/range {v16 .. v16}, Lasyx/ksoap2/serialization/AttributeInfo;-><init>()V

    .line 215
    .local v16, "attributeInfo":Lasyx/ksoap2/serialization/AttributeInfo;
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Lasyx/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lasyx/ksoap2/serialization/AttributeInfo;->setName(Ljava/lang/String;)V

    .line 216
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Lasyx/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lasyx/ksoap2/serialization/AttributeInfo;->setValue(Ljava/lang/Object;)V

    .line 217
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Lasyx/xmlpull/v1/XmlPullParser;->getAttributeNamespace(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lasyx/ksoap2/serialization/AttributeInfo;->setNamespace(Ljava/lang/String;)V

    .line 218
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Lasyx/xmlpull/v1/XmlPullParser;->getAttributeType(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lasyx/ksoap2/serialization/AttributeInfo;->setType(Ljava/lang/Object;)V

    .line 219
    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Lasyx/ksoap2/serialization/HasAttributes;->setAttribute(Lasyx/ksoap2/serialization/AttributeInfo;)V

    .line 213
    add-int/lit8 v18, v18, 0x1

    goto :goto_4

    .end local v5    # "i":I
    .end local v8    # "info":Lasyx/ksoap2/serialization/PropertyInfo;
    .end local v16    # "attributeInfo":Lasyx/ksoap2/serialization/AttributeInfo;
    .end local v17    # "cnt":I
    .end local v18    # "counter":I
    .end local v20    # "propertyCount":I
    .end local v21    # "propertyFound":Z
    .end local v22    # "soapObject":Lasyx/ksoap2/serialization/HasAttributes;
    :cond_a
    move-object/from16 v2, p2

    .line 227
    check-cast v2, Lasyx/ksoap2/serialization/SoapObject;

    invoke-interface/range {p1 .. p1}, Lasyx/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface/range {p2 .. p2}, Lasyx/ksoap2/serialization/KvmSerializable;->getPropertyCount()I

    move-result v12

    move-object/from16 v3, p2

    check-cast v3, Lasyx/ksoap2/serialization/SoapObject;

    invoke-virtual {v3}, Lasyx/ksoap2/serialization/SoapObject;->getNamespace()Ljava/lang/String;

    move-result-object v13

    sget-object v15, Lasyx/ksoap2/serialization/PropertyInfo;->OBJECT_TYPE:Lasyx/ksoap2/serialization/PropertyInfo;

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    invoke-virtual/range {v9 .. v15}, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->read(Lasyx/xmlpull/v1/XmlPullParser;Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;Lasyx/ksoap2/serialization/PropertyInfo;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lasyx/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lasyx/ksoap2/serialization/SoapObject;

    goto/16 :goto_3

    .line 232
    :catch_1
    move-exception v19

    .line 233
    .restart local v19    # "e":Lasyx/xmlpull/v1/XmlPullParserException;
    invoke-interface/range {p1 .. p1}, Lasyx/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-interface/range {p1 .. p1}, Lasyx/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    :goto_5
    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Lasyx/ksoap2/serialization/KvmSerializable;->setInnerText(Ljava/lang/String;)V

    .line 234
    invoke-interface/range {p1 .. p1}, Lasyx/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v23

    goto/16 :goto_0

    .line 233
    :cond_b
    const-string v2, ""

    goto :goto_5

    .line 238
    .end local v14    # "name":Ljava/lang/String;
    .end local v19    # "e":Lasyx/xmlpull/v1/XmlPullParserException;
    :cond_c
    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v2, v3, v4}, Lasyx/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 239
    return-void
.end method

.method protected readSerializable(Lasyx/xmlpull/v1/XmlPullParser;Lasyx/ksoap2/serialization/SoapObject;)V
    .locals 4
    .param p1, "parser"    # Lasyx/xmlpull/v1/XmlPullParser;
    .param p2, "obj"    # Lasyx/ksoap2/serialization/SoapObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lasyx/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 162
    const/4 v1, 0x0

    .local v1, "counter":I
    :goto_0
    invoke-interface {p1}, Lasyx/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 163
    invoke-interface {p1, v1}, Lasyx/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, "attributeName":Ljava/lang/String;
    invoke-interface {p1, v1}, Lasyx/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    .line 165
    .local v2, "value":Ljava/lang/String;
    invoke-virtual {p2, v0, v2}, Lasyx/ksoap2/serialization/SoapObject;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 162
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 167
    .end local v0    # "attributeName":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, p1, p2}, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->readSerializable(Lasyx/xmlpull/v1/XmlPullParser;Lasyx/ksoap2/serialization/KvmSerializable;)V

    .line 168
    return-void
.end method

.method protected readUnknown(Lasyx/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 21
    .param p1, "parser"    # Lasyx/xmlpull/v1/XmlPullParser;
    .param p2, "typeNamespace"    # Ljava/lang/String;
    .param p3, "typeName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lasyx/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 255
    invoke-interface/range {p1 .. p1}, Lasyx/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    .line 256
    .local v15, "name":Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lasyx/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v16

    .line 259
    .local v16, "namespace":Ljava/lang/String;
    new-instance v13, Ljava/util/Vector;

    invoke-direct {v13}, Ljava/util/Vector;-><init>()V

    .line 260
    .local v13, "attributeInfoVector":Ljava/util/Vector;
    const/4 v11, 0x0

    .local v11, "attributeCount":I
    :goto_0
    invoke-interface/range {p1 .. p1}, Lasyx/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v4

    if-ge v11, v4, :cond_0

    .line 261
    new-instance v12, Lasyx/ksoap2/serialization/AttributeInfo;

    invoke-direct {v12}, Lasyx/ksoap2/serialization/AttributeInfo;-><init>()V

    .line 262
    .local v12, "attributeInfo":Lasyx/ksoap2/serialization/AttributeInfo;
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Lasyx/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Lasyx/ksoap2/serialization/AttributeInfo;->setName(Ljava/lang/String;)V

    .line 263
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Lasyx/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Lasyx/ksoap2/serialization/AttributeInfo;->setValue(Ljava/lang/Object;)V

    .line 264
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Lasyx/xmlpull/v1/XmlPullParser;->getAttributeNamespace(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Lasyx/ksoap2/serialization/AttributeInfo;->setNamespace(Ljava/lang/String;)V

    .line 265
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Lasyx/xmlpull/v1/XmlPullParser;->getAttributeType(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Lasyx/ksoap2/serialization/AttributeInfo;->setType(Ljava/lang/Object;)V

    .line 266
    invoke-virtual {v13, v12}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 260
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 269
    .end local v12    # "attributeInfo":Lasyx/ksoap2/serialization/AttributeInfo;
    :cond_0
    invoke-interface/range {p1 .. p1}, Lasyx/xmlpull/v1/XmlPullParser;->next()I

    .line 270
    const/16 v17, 0x0

    .line 271
    .local v17, "result":Ljava/lang/Object;
    const/16 v19, 0x0

    .line 272
    .local v19, "text":Ljava/lang/String;
    invoke-interface/range {p1 .. p1}, Lasyx/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_3

    .line 273
    invoke-interface/range {p1 .. p1}, Lasyx/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v19

    .line 274
    new-instance v18, Lasyx/ksoap2/serialization/SoapPrimitive;

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lasyx/ksoap2/serialization/SoapPrimitive;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 275
    .local v18, "sp":Lasyx/ksoap2/serialization/SoapPrimitive;
    move-object/from16 v17, v18

    .line 277
    .local v17, "result":Lasyx/ksoap2/serialization/SoapPrimitive;
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_1
    invoke-virtual {v13}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v14, v4, :cond_1

    .line 278
    invoke-virtual {v13, v14}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lasyx/ksoap2/serialization/AttributeInfo;

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lasyx/ksoap2/serialization/SoapPrimitive;->addAttribute(Lasyx/ksoap2/serialization/AttributeInfo;)V

    .line 277
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 280
    :cond_1
    invoke-interface/range {p1 .. p1}, Lasyx/xmlpull/v1/XmlPullParser;->next()I

    .line 290
    .end local v14    # "i":I
    .end local v17    # "result":Lasyx/ksoap2/serialization/SoapPrimitive;
    .end local v18    # "sp":Lasyx/ksoap2/serialization/SoapPrimitive;
    :cond_2
    :goto_2
    invoke-interface/range {p1 .. p1}, Lasyx/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_8

    .line 291
    if-eqz v19, :cond_5

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_5

    .line 292
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Malformed input: Mixed content"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 281
    .local v17, "result":Ljava/lang/Object;
    :cond_3
    invoke-interface/range {p1 .. p1}, Lasyx/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    .line 282
    new-instance v6, Lasyx/ksoap2/serialization/SoapObject;

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-direct {v6, v0, v1}, Lasyx/ksoap2/serialization/SoapObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    .local v6, "so":Lasyx/ksoap2/serialization/SoapObject;
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_3
    invoke-virtual {v13}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v14, v4, :cond_4

    .line 285
    invoke-virtual {v13, v14}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lasyx/ksoap2/serialization/AttributeInfo;

    invoke-virtual {v6, v4}, Lasyx/ksoap2/serialization/SoapObject;->addAttribute(Lasyx/ksoap2/serialization/AttributeInfo;)V

    .line 284
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 287
    :cond_4
    move-object/from16 v17, v6

    .local v17, "result":Lasyx/ksoap2/serialization/SoapObject;
    goto :goto_2

    .line 294
    .end local v6    # "so":Lasyx/ksoap2/serialization/SoapObject;
    .end local v14    # "i":I
    .end local v17    # "result":Lasyx/ksoap2/serialization/SoapObject;
    :cond_5
    new-instance v6, Lasyx/ksoap2/serialization/SoapObject;

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-direct {v6, v0, v1}, Lasyx/ksoap2/serialization/SoapObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    .restart local v6    # "so":Lasyx/ksoap2/serialization/SoapObject;
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_4
    invoke-virtual {v13}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v14, v4, :cond_6

    .line 297
    invoke-virtual {v13, v14}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lasyx/ksoap2/serialization/AttributeInfo;

    invoke-virtual {v6, v4}, Lasyx/ksoap2/serialization/SoapObject;->addAttribute(Lasyx/ksoap2/serialization/AttributeInfo;)V

    .line 296
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 300
    :cond_6
    :goto_5
    invoke-interface/range {p1 .. p1}, Lasyx/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_7

    .line 301
    invoke-interface/range {p1 .. p1}, Lasyx/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-virtual {v6}, Lasyx/ksoap2/serialization/SoapObject;->getPropertyCount()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    sget-object v10, Lasyx/ksoap2/serialization/PropertyInfo;->OBJECT_TYPE:Lasyx/ksoap2/serialization/PropertyInfo;

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-virtual/range {v4 .. v10}, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->read(Lasyx/xmlpull/v1/XmlPullParser;Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;Lasyx/ksoap2/serialization/PropertyInfo;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v6, v0, v4}, Lasyx/ksoap2/serialization/SoapObject;->addProperty(Ljava/lang/String;Ljava/lang/Object;)Lasyx/ksoap2/serialization/SoapObject;

    .line 303
    invoke-interface/range {p1 .. p1}, Lasyx/xmlpull/v1/XmlPullParser;->nextTag()I

    goto :goto_5

    .line 305
    :cond_7
    move-object/from16 v17, v6

    .line 307
    .end local v6    # "so":Lasyx/ksoap2/serialization/SoapObject;
    .end local v14    # "i":I
    :cond_8
    const/4 v4, 0x3

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v4, v1, v15}, Lasyx/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 308
    return-object v17
.end method

.method protected readVector(Lasyx/xmlpull/v1/XmlPullParser;Ljava/util/Vector;Lasyx/ksoap2/serialization/PropertyInfo;)V
    .locals 13
    .param p1, "parser"    # Lasyx/xmlpull/v1/XmlPullParser;
    .param p2, "v"    # Ljava/util/Vector;
    .param p3, "elementType"    # Lasyx/ksoap2/serialization/PropertyInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lasyx/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 325
    const/4 v4, 0x0

    .line 326
    .local v4, "namespace":Ljava/lang/String;
    const/4 v5, 0x0

    .line 327
    .local v5, "name":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v11

    .line 328
    .local v11, "size":I
    const/4 v9, 0x1

    .line 329
    .local v9, "dynamic":Z
    iget-object v0, p0, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->enc:Ljava/lang/String;

    const-string v1, "arrayType"

    invoke-interface {p1, v0, v1}, Lasyx/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 330
    .local v12, "type":Ljava/lang/String;
    if-eqz v12, :cond_0

    .line 331
    const/16 v0, 0x3a

    invoke-virtual {v12, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 332
    .local v7, "cut0":I
    const-string v0, "["

    invoke-virtual {v12, v0, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v8

    .line 333
    .local v8, "cut1":I
    add-int/lit8 v0, v7, 0x1

    invoke-virtual {v12, v0, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 334
    const/4 v0, -0x1

    if-ne v7, v0, :cond_3

    const-string v10, ""

    .line 335
    .local v10, "prefix":Ljava/lang/String;
    :goto_0
    invoke-interface {p1, v10}, Lasyx/xmlpull/v1/XmlPullParser;->getNamespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 336
    const/4 v0, -0x1

    invoke-direct {p0, v12, v8, v0}, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->getIndex(Ljava/lang/String;II)I

    move-result v11

    .line 337
    const/4 v0, -0x1

    if-eq v11, v0, :cond_0

    .line 338
    invoke-virtual {p2, v11}, Ljava/util/Vector;->setSize(I)V

    .line 339
    const/4 v9, 0x0

    .line 342
    .end local v7    # "cut0":I
    .end local v8    # "cut1":I
    .end local v10    # "prefix":Ljava/lang/String;
    :cond_0
    if-nez p3, :cond_1

    .line 343
    sget-object p3, Lasyx/ksoap2/serialization/PropertyInfo;->OBJECT_TYPE:Lasyx/ksoap2/serialization/PropertyInfo;

    .line 345
    :cond_1
    invoke-interface {p1}, Lasyx/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 346
    iget-object v0, p0, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->enc:Ljava/lang/String;

    const-string v1, "offset"

    invoke-interface {p1, v0, v1}, Lasyx/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->getIndex(Ljava/lang/String;II)I

    move-result v3

    .line 347
    .local v3, "position":I
    :goto_1
    invoke-interface {p1}, Lasyx/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    .line 349
    iget-object v0, p0, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->enc:Ljava/lang/String;

    const-string v1, "position"

    invoke-interface {p1, v0, v1}, Lasyx/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v3}, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->getIndex(Ljava/lang/String;II)I

    move-result v3

    .line 350
    if-eqz v9, :cond_2

    if-lt v3, v11, :cond_2

    .line 351
    add-int/lit8 v11, v3, 0x1

    .line 352
    invoke-virtual {p2, v11}, Ljava/util/Vector;->setSize(I)V

    :cond_2
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v6, p3

    .line 355
    invoke-virtual/range {v0 .. v6}, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->read(Lasyx/xmlpull/v1/XmlPullParser;Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;Lasyx/ksoap2/serialization/PropertyInfo;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0, v3}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 356
    add-int/lit8 v3, v3, 0x1

    .line 357
    invoke-interface {p1}, Lasyx/xmlpull/v1/XmlPullParser;->nextTag()I

    goto :goto_1

    .line 334
    .end local v3    # "position":I
    .restart local v7    # "cut0":I
    .restart local v8    # "cut1":I
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {v12, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    .line 359
    .end local v7    # "cut0":I
    .end local v8    # "cut1":I
    .restart local v3    # "position":I
    :cond_4
    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lasyx/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 360
    return-void
.end method

.method protected resolveReference(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 446
    iget-object v2, p0, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->idMap:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 447
    .local v1, "hlp":Ljava/lang/Object;
    instance-of v2, v1, Lasyx/ksoap2/serialization/FwdRef;

    if-eqz v2, :cond_3

    move-object v0, v1

    .line 448
    check-cast v0, Lasyx/ksoap2/serialization/FwdRef;

    .line 450
    .local v0, "f":Lasyx/ksoap2/serialization/FwdRef;
    :cond_0
    iget-object v2, v0, Lasyx/ksoap2/serialization/FwdRef;->obj:Ljava/lang/Object;

    instance-of v2, v2, Lasyx/ksoap2/serialization/KvmSerializable;

    if-eqz v2, :cond_2

    .line 451
    iget-object v2, v0, Lasyx/ksoap2/serialization/FwdRef;->obj:Ljava/lang/Object;

    check-cast v2, Lasyx/ksoap2/serialization/KvmSerializable;

    iget v3, v0, Lasyx/ksoap2/serialization/FwdRef;->index:I

    invoke-interface {v2, v3, p2}, Lasyx/ksoap2/serialization/KvmSerializable;->setProperty(ILjava/lang/Object;)V

    .line 455
    :goto_0
    iget-object v0, v0, Lasyx/ksoap2/serialization/FwdRef;->next:Lasyx/ksoap2/serialization/FwdRef;

    .line 457
    if-nez v0, :cond_0

    .line 461
    .end local v0    # "f":Lasyx/ksoap2/serialization/FwdRef;
    :cond_1
    iget-object v2, p0, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->idMap:Ljava/util/Hashtable;

    invoke-virtual {v2, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    return-void

    .line 453
    .restart local v0    # "f":Lasyx/ksoap2/serialization/FwdRef;
    :cond_2
    iget-object v2, v0, Lasyx/ksoap2/serialization/FwdRef;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/util/Vector;

    iget v3, v0, Lasyx/ksoap2/serialization/FwdRef;->index:I

    invoke-virtual {v2, p2, v3}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    goto :goto_0

    .line 458
    .end local v0    # "f":Lasyx/ksoap2/serialization/FwdRef;
    :cond_3
    if-eqz v1, :cond_1

    .line 459
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "double ID"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setAddAdornments(Z)V
    .locals 0
    .param p1, "addAdornments"    # Z

    .prologue
    .line 114
    iput-boolean p1, p0, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->addAdornments:Z

    .line 115
    return-void
.end method

.method public setBodyOutEmpty(Z)V
    .locals 1
    .param p1, "emptyBody"    # Z

    .prologue
    .line 125
    if-eqz p1, :cond_0

    .line 126
    const/4 v0, 0x0

    iput-object v0, p0, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->bodyOut:Ljava/lang/Object;

    .line 128
    :cond_0
    return-void
.end method

.method protected writeArrayListBody(Lasyx/xmlpull/v1/XmlSerializer;Ljava/util/ArrayList;)V
    .locals 18
    .param p1, "writer"    # Lasyx/xmlpull/v1/XmlSerializer;
    .param p2, "list"    # Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 769
    move-object/from16 v7, p2

    check-cast v7, Lasyx/ksoap2/serialization/KvmSerializable;

    .line 770
    .local v7, "obj":Lasyx/ksoap2/serialization/KvmSerializable;
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 771
    .local v2, "cnt":I
    new-instance v11, Lasyx/ksoap2/serialization/PropertyInfo;

    invoke-direct {v11}, Lasyx/ksoap2/serialization/PropertyInfo;-><init>()V

    .line 775
    .local v11, "propertyInfo":Lasyx/ksoap2/serialization/PropertyInfo;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_6

    .line 777
    invoke-interface {v7, v3}, Lasyx/ksoap2/serialization/KvmSerializable;->getProperty(I)Ljava/lang/Object;

    move-result-object v10

    .line 779
    .local v10, "prop":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v14, v0, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->properties:Ljava/util/Hashtable;

    invoke-interface {v7, v3, v14, v11}, Lasyx/ksoap2/serialization/KvmSerializable;->getPropertyInfo(ILjava/util/Hashtable;Lasyx/ksoap2/serialization/PropertyInfo;)V

    .line 781
    instance-of v14, v10, Lasyx/ksoap2/serialization/SoapObject;

    if-nez v14, :cond_2

    .line 783
    iget v14, v11, Lasyx/ksoap2/serialization/PropertyInfo;->flags:I

    and-int/lit8 v14, v14, 0x1

    if-nez v14, :cond_1

    .line 784
    invoke-interface {v7, v3}, Lasyx/ksoap2/serialization/KvmSerializable;->getProperty(I)Ljava/lang/Object;

    move-result-object v8

    .line 785
    .local v8, "objValue":Ljava/lang/Object;
    if-nez v10, :cond_0

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->skipNullProperties:Z

    if-nez v14, :cond_1

    :cond_0
    sget-object v14, Lasyx/ksoap2/serialization/SoapPrimitive;->NullSkip:Ljava/lang/Object;

    if-eq v8, v14, :cond_1

    .line 786
    iget-object v14, v11, Lasyx/ksoap2/serialization/PropertyInfo;->namespace:Ljava/lang/String;

    iget-object v15, v11, Lasyx/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-interface {v0, v14, v15}, Lasyx/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lasyx/xmlpull/v1/XmlSerializer;

    .line 787
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v8, v11}, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->writeProperty(Lasyx/xmlpull/v1/XmlSerializer;Ljava/lang/Object;Lasyx/ksoap2/serialization/PropertyInfo;)V

    .line 788
    iget-object v14, v11, Lasyx/ksoap2/serialization/PropertyInfo;->namespace:Ljava/lang/String;

    iget-object v15, v11, Lasyx/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-interface {v0, v14, v15}, Lasyx/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lasyx/xmlpull/v1/XmlSerializer;

    .line 775
    .end local v8    # "objValue":Ljava/lang/Object;
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    move-object v6, v10

    .line 794
    check-cast v6, Lasyx/ksoap2/serialization/SoapObject;

    .line 796
    .local v6, "nestedSoap":Lasyx/ksoap2/serialization/SoapObject;
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v6}, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->getInfo(Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    .line 797
    .local v12, "qName":[Ljava/lang/Object;
    const/4 v14, 0x0

    aget-object v5, v12, v14

    check-cast v5, Ljava/lang/String;

    .line 798
    .local v5, "namespace":Ljava/lang/String;
    const/4 v14, 0x1

    aget-object v13, v12, v14

    check-cast v13, Ljava/lang/String;

    .line 801
    .local v13, "type":Ljava/lang/String;
    iget-object v14, v11, Lasyx/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    if-eqz v14, :cond_4

    iget-object v14, v11, Lasyx/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_4

    .line 802
    iget-object v4, v11, Lasyx/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    .line 808
    .local v4, "name":Ljava/lang/String;
    :goto_2
    iget-object v14, v11, Lasyx/ksoap2/serialization/PropertyInfo;->namespace:Ljava/lang/String;

    if-eqz v14, :cond_5

    iget-object v14, v11, Lasyx/ksoap2/serialization/PropertyInfo;->namespace:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_5

    .line 809
    iget-object v5, v11, Lasyx/ksoap2/serialization/PropertyInfo;->namespace:Ljava/lang/String;

    .line 814
    :goto_3
    move-object/from16 v0, p1

    invoke-interface {v0, v5, v4}, Lasyx/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lasyx/xmlpull/v1/XmlSerializer;

    .line 815
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->implicitTypes:Z

    if-nez v14, :cond_3

    .line 816
    const/4 v14, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v5, v14}, Lasyx/xmlpull/v1/XmlSerializer;->getPrefix(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v9

    .line 817
    .local v9, "prefix":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->xsi:Ljava/lang/String;

    const-string v15, "type"

    new-instance v16, Ljava/lang/StringBuffer;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    const-string v17, ":"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v14, v15, v1}, Lasyx/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lasyx/xmlpull/v1/XmlSerializer;

    .line 819
    .end local v9    # "prefix":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6}, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->writeObjectBodyWithAttributes(Lasyx/xmlpull/v1/XmlSerializer;Lasyx/ksoap2/serialization/KvmSerializable;)V

    .line 820
    move-object/from16 v0, p1

    invoke-interface {v0, v5, v4}, Lasyx/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lasyx/xmlpull/v1/XmlSerializer;

    goto :goto_1

    .line 804
    .end local v4    # "name":Ljava/lang/String;
    :cond_4
    const/4 v14, 0x1

    aget-object v4, v12, v14

    check-cast v4, Ljava/lang/String;

    .restart local v4    # "name":Ljava/lang/String;
    goto :goto_2

    .line 811
    :cond_5
    const/4 v14, 0x0

    aget-object v5, v12, v14

    .end local v5    # "namespace":Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .restart local v5    # "namespace":Ljava/lang/String;
    goto :goto_3

    .line 823
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "namespace":Ljava/lang/String;
    .end local v6    # "nestedSoap":Lasyx/ksoap2/serialization/SoapObject;
    .end local v10    # "prop":Ljava/lang/Object;
    .end local v12    # "qName":[Ljava/lang/Object;
    .end local v13    # "type":Ljava/lang/String;
    :cond_6
    invoke-interface {v7}, Lasyx/ksoap2/serialization/KvmSerializable;->getInnerText()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_7

    .line 824
    invoke-interface {v7}, Lasyx/ksoap2/serialization/KvmSerializable;->getInnerText()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Lasyx/xmlpull/v1/XmlSerializer;->cdsect(Ljava/lang/String;)V

    .line 828
    :cond_7
    return-void
.end method

.method public writeArrayListBodyWithAttributes(Lasyx/xmlpull/v1/XmlSerializer;Lasyx/ksoap2/serialization/KvmSerializable;)V
    .locals 1
    .param p1, "writer"    # Lasyx/xmlpull/v1/XmlSerializer;
    .param p2, "obj"    # Lasyx/ksoap2/serialization/KvmSerializable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 649
    instance-of v0, p2, Lasyx/ksoap2/serialization/HasAttributes;

    if-eqz v0, :cond_0

    move-object v0, p2

    .line 650
    check-cast v0, Lasyx/ksoap2/serialization/HasAttributes;

    invoke-direct {p0, p1, v0}, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->writeAttributes(Lasyx/xmlpull/v1/XmlSerializer;Lasyx/ksoap2/serialization/HasAttributes;)V

    .line 652
    :cond_0
    check-cast p2, Ljava/util/ArrayList;

    .end local p2    # "obj":Lasyx/ksoap2/serialization/KvmSerializable;
    invoke-virtual {p0, p1, p2}, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->writeArrayListBody(Lasyx/xmlpull/v1/XmlSerializer;Ljava/util/ArrayList;)V

    .line 653
    return-void
.end method

.method public writeBody(Lasyx/xmlpull/v1/XmlSerializer;)V
    .locals 7
    .param p1, "writer"    # Lasyx/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 614
    iget-object v1, p0, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->bodyOut:Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 615
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->multiRef:Ljava/util/Vector;

    .line 616
    iget-object v1, p0, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->multiRef:Ljava/util/Vector;

    iget-object v2, p0, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->bodyOut:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 617
    iget-object v1, p0, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->bodyOut:Ljava/lang/Object;

    invoke-virtual {p0, v4, v1}, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->getInfo(Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 619
    .local v0, "qName":[Ljava/lang/Object;
    iget-boolean v1, p0, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->dotNet:Z

    if-eqz v1, :cond_3

    const-string v1, ""

    move-object v2, v1

    :goto_0
    aget-object v1, v0, v6

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v2, v1}, Lasyx/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lasyx/xmlpull/v1/XmlSerializer;

    .line 621
    iget-boolean v1, p0, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->dotNet:Z

    if-eqz v1, :cond_0

    .line 622
    const-string v2, "xmlns"

    aget-object v1, v0, v5

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v4, v2, v1}, Lasyx/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lasyx/xmlpull/v1/XmlSerializer;

    .line 625
    :cond_0
    iget-boolean v1, p0, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->addAdornments:Z

    if-eqz v1, :cond_1

    .line 626
    const-string v2, "id"

    aget-object v1, v0, v3

    if-nez v1, :cond_4

    const-string v1, "o0"

    :goto_1
    invoke-interface {p1, v4, v2, v1}, Lasyx/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lasyx/xmlpull/v1/XmlSerializer;

    .line 627
    iget-object v1, p0, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->enc:Ljava/lang/String;

    const-string v2, "root"

    const-string v3, "1"

    invoke-interface {p1, v1, v2, v3}, Lasyx/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lasyx/xmlpull/v1/XmlSerializer;

    .line 629
    :cond_1
    iget-object v1, p0, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->bodyOut:Ljava/lang/Object;

    const/4 v2, 0x3

    aget-object v2, v0, v2

    invoke-virtual {p0, p1, v1, v4, v2}, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->writeElement(Lasyx/xmlpull/v1/XmlSerializer;Ljava/lang/Object;Lasyx/ksoap2/serialization/PropertyInfo;Ljava/lang/Object;)V

    .line 630
    iget-boolean v1, p0, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->dotNet:Z

    if-eqz v1, :cond_5

    const-string v1, ""

    move-object v2, v1

    :goto_2
    aget-object v1, v0, v6

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v2, v1}, Lasyx/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lasyx/xmlpull/v1/XmlSerializer;

    .line 632
    .end local v0    # "qName":[Ljava/lang/Object;
    :cond_2
    return-void

    .line 619
    .restart local v0    # "qName":[Ljava/lang/Object;
    :cond_3
    aget-object v1, v0, v5

    check-cast v1, Ljava/lang/String;

    move-object v2, v1

    goto :goto_0

    .line 626
    :cond_4
    aget-object v1, v0, v3

    check-cast v1, Ljava/lang/String;

    goto :goto_1

    .line 630
    :cond_5
    aget-object v1, v0, v5

    check-cast v1, Ljava/lang/String;

    move-object v2, v1

    goto :goto_2
.end method

.method protected writeElement(Lasyx/xmlpull/v1/XmlSerializer;Ljava/lang/Object;Lasyx/ksoap2/serialization/PropertyInfo;Ljava/lang/Object;)V
    .locals 3
    .param p1, "writer"    # Lasyx/xmlpull/v1/XmlSerializer;
    .param p2, "element"    # Ljava/lang/Object;
    .param p3, "type"    # Lasyx/ksoap2/serialization/PropertyInfo;
    .param p4, "marshal"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 749
    if-eqz p4, :cond_0

    .line 750
    check-cast p4, Lasyx/ksoap2/serialization/Marshal;

    .end local p4    # "marshal":Ljava/lang/Object;
    invoke-interface {p4, p1, p2}, Lasyx/ksoap2/serialization/Marshal;->writeInstance(Lasyx/xmlpull/v1/XmlSerializer;Ljava/lang/Object;)V

    .line 765
    .end local p2    # "element":Ljava/lang/Object;
    :goto_0
    return-void

    .line 751
    .restart local p2    # "element":Ljava/lang/Object;
    .restart local p4    # "marshal":Ljava/lang/Object;
    :cond_0
    instance-of v0, p2, Lasyx/ksoap2/serialization/KvmSerializable;

    if-nez v0, :cond_1

    sget-object v0, Lasyx/ksoap2/serialization/SoapPrimitive;->NullNilElement:Ljava/lang/Object;

    if-eq p2, v0, :cond_1

    sget-object v0, Lasyx/ksoap2/serialization/SoapPrimitive;->NullSkip:Ljava/lang/Object;

    if-ne p2, v0, :cond_3

    .line 753
    :cond_1
    instance-of v0, p2, Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 754
    check-cast p2, Lasyx/ksoap2/serialization/KvmSerializable;

    .end local p2    # "element":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->writeArrayListBodyWithAttributes(Lasyx/xmlpull/v1/XmlSerializer;Lasyx/ksoap2/serialization/KvmSerializable;)V

    goto :goto_0

    .line 756
    .restart local p2    # "element":Ljava/lang/Object;
    :cond_2
    check-cast p2, Lasyx/ksoap2/serialization/KvmSerializable;

    .end local p2    # "element":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->writeObjectBodyWithAttributes(Lasyx/xmlpull/v1/XmlSerializer;Lasyx/ksoap2/serialization/KvmSerializable;)V

    goto :goto_0

    .line 758
    .restart local p2    # "element":Ljava/lang/Object;
    :cond_3
    instance-of v0, p2, Lasyx/ksoap2/serialization/HasAttributes;

    if-eqz v0, :cond_4

    .line 759
    check-cast p2, Lasyx/ksoap2/serialization/HasAttributes;

    .end local p2    # "element":Ljava/lang/Object;
    invoke-direct {p0, p1, p2}, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->writeAttributes(Lasyx/xmlpull/v1/XmlSerializer;Lasyx/ksoap2/serialization/HasAttributes;)V

    goto :goto_0

    .line 760
    .restart local p2    # "element":Ljava/lang/Object;
    :cond_4
    instance-of v0, p2, Ljava/util/Vector;

    if-eqz v0, :cond_5

    .line 761
    check-cast p2, Ljava/util/Vector;

    .end local p2    # "element":Ljava/lang/Object;
    iget-object v0, p3, Lasyx/ksoap2/serialization/PropertyInfo;->elementType:Lasyx/ksoap2/serialization/PropertyInfo;

    invoke-virtual {p0, p1, p2, v0}, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->writeVectorBody(Lasyx/xmlpull/v1/XmlSerializer;Ljava/util/Vector;Lasyx/ksoap2/serialization/PropertyInfo;)V

    goto :goto_0

    .line 763
    .restart local p2    # "element":Ljava/lang/Object;
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Cannot serialize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeObjectBody(Lasyx/xmlpull/v1/XmlSerializer;Lasyx/ksoap2/serialization/KvmSerializable;)V
    .locals 17
    .param p1, "writer"    # Lasyx/xmlpull/v1/XmlSerializer;
    .param p2, "obj"    # Lasyx/ksoap2/serialization/KvmSerializable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 666
    invoke-interface/range {p2 .. p2}, Lasyx/ksoap2/serialization/KvmSerializable;->getPropertyCount()I

    move-result v2

    .line 667
    .local v2, "cnt":I
    new-instance v10, Lasyx/ksoap2/serialization/PropertyInfo;

    invoke-direct {v10}, Lasyx/ksoap2/serialization/PropertyInfo;-><init>()V

    .line 671
    .local v10, "propertyInfo":Lasyx/ksoap2/serialization/PropertyInfo;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_6

    .line 673
    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Lasyx/ksoap2/serialization/KvmSerializable;->getProperty(I)Ljava/lang/Object;

    move-result-object v9

    .line 675
    .local v9, "prop":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v13, v0, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->properties:Ljava/util/Hashtable;

    move-object/from16 v0, p2

    invoke-interface {v0, v3, v13, v10}, Lasyx/ksoap2/serialization/KvmSerializable;->getPropertyInfo(ILjava/util/Hashtable;Lasyx/ksoap2/serialization/PropertyInfo;)V

    .line 677
    instance-of v13, v9, Lasyx/ksoap2/serialization/SoapObject;

    if-nez v13, :cond_2

    .line 679
    iget v13, v10, Lasyx/ksoap2/serialization/PropertyInfo;->flags:I

    and-int/lit8 v13, v13, 0x1

    if-nez v13, :cond_1

    .line 680
    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Lasyx/ksoap2/serialization/KvmSerializable;->getProperty(I)Ljava/lang/Object;

    move-result-object v7

    .line 681
    .local v7, "objValue":Ljava/lang/Object;
    if-nez v9, :cond_0

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->skipNullProperties:Z

    if-nez v13, :cond_1

    :cond_0
    sget-object v13, Lasyx/ksoap2/serialization/SoapPrimitive;->NullSkip:Ljava/lang/Object;

    if-eq v7, v13, :cond_1

    .line 682
    iget-object v13, v10, Lasyx/ksoap2/serialization/PropertyInfo;->namespace:Ljava/lang/String;

    iget-object v14, v10, Lasyx/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-interface {v0, v13, v14}, Lasyx/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lasyx/xmlpull/v1/XmlSerializer;

    .line 683
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v7, v10}, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->writeProperty(Lasyx/xmlpull/v1/XmlSerializer;Ljava/lang/Object;Lasyx/ksoap2/serialization/PropertyInfo;)V

    .line 684
    iget-object v13, v10, Lasyx/ksoap2/serialization/PropertyInfo;->namespace:Ljava/lang/String;

    iget-object v14, v10, Lasyx/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-interface {v0, v13, v14}, Lasyx/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lasyx/xmlpull/v1/XmlSerializer;

    .line 671
    .end local v7    # "objValue":Ljava/lang/Object;
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    move-object v6, v9

    .line 690
    check-cast v6, Lasyx/ksoap2/serialization/SoapObject;

    .line 692
    .local v6, "nestedSoap":Lasyx/ksoap2/serialization/SoapObject;
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v6}, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->getInfo(Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    .line 693
    .local v11, "qName":[Ljava/lang/Object;
    const/4 v13, 0x0

    aget-object v5, v11, v13

    check-cast v5, Ljava/lang/String;

    .line 694
    .local v5, "namespace":Ljava/lang/String;
    const/4 v13, 0x1

    aget-object v12, v11, v13

    check-cast v12, Ljava/lang/String;

    .line 697
    .local v12, "type":Ljava/lang/String;
    iget-object v13, v10, Lasyx/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    if-eqz v13, :cond_4

    iget-object v13, v10, Lasyx/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_4

    .line 698
    iget-object v4, v10, Lasyx/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    .line 704
    .local v4, "name":Ljava/lang/String;
    :goto_2
    iget-object v13, v10, Lasyx/ksoap2/serialization/PropertyInfo;->namespace:Ljava/lang/String;

    if-eqz v13, :cond_5

    iget-object v13, v10, Lasyx/ksoap2/serialization/PropertyInfo;->namespace:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_5

    .line 705
    iget-object v5, v10, Lasyx/ksoap2/serialization/PropertyInfo;->namespace:Ljava/lang/String;

    .line 710
    :goto_3
    move-object/from16 v0, p1

    invoke-interface {v0, v5, v4}, Lasyx/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lasyx/xmlpull/v1/XmlSerializer;

    .line 711
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->implicitTypes:Z

    if-nez v13, :cond_3

    .line 712
    const/4 v13, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v5, v13}, Lasyx/xmlpull/v1/XmlSerializer;->getPrefix(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    .line 713
    .local v8, "prefix":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->xsi:Ljava/lang/String;

    const-string v14, "type"

    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v15, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    const-string v16, ":"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-interface {v0, v13, v14, v15}, Lasyx/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lasyx/xmlpull/v1/XmlSerializer;

    .line 715
    .end local v8    # "prefix":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6}, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->writeObjectBodyWithAttributes(Lasyx/xmlpull/v1/XmlSerializer;Lasyx/ksoap2/serialization/KvmSerializable;)V

    .line 716
    move-object/from16 v0, p1

    invoke-interface {v0, v5, v4}, Lasyx/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lasyx/xmlpull/v1/XmlSerializer;

    goto :goto_1

    .line 700
    .end local v4    # "name":Ljava/lang/String;
    :cond_4
    const/4 v13, 0x1

    aget-object v4, v11, v13

    check-cast v4, Ljava/lang/String;

    .restart local v4    # "name":Ljava/lang/String;
    goto :goto_2

    .line 707
    :cond_5
    const/4 v13, 0x0

    aget-object v5, v11, v13

    .end local v5    # "namespace":Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .restart local v5    # "namespace":Ljava/lang/String;
    goto :goto_3

    .line 719
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "namespace":Ljava/lang/String;
    .end local v6    # "nestedSoap":Lasyx/ksoap2/serialization/SoapObject;
    .end local v9    # "prop":Ljava/lang/Object;
    .end local v11    # "qName":[Ljava/lang/Object;
    .end local v12    # "type":Ljava/lang/String;
    :cond_6
    invoke-interface/range {p2 .. p2}, Lasyx/ksoap2/serialization/KvmSerializable;->getInnerText()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_7

    .line 720
    invoke-interface/range {p2 .. p2}, Lasyx/ksoap2/serialization/KvmSerializable;->getInnerText()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Lasyx/xmlpull/v1/XmlSerializer;->cdsect(Ljava/lang/String;)V

    .line 723
    :cond_7
    return-void
.end method

.method public writeObjectBodyWithAttributes(Lasyx/xmlpull/v1/XmlSerializer;Lasyx/ksoap2/serialization/KvmSerializable;)V
    .locals 1
    .param p1, "writer"    # Lasyx/xmlpull/v1/XmlSerializer;
    .param p2, "obj"    # Lasyx/ksoap2/serialization/KvmSerializable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 656
    instance-of v0, p2, Lasyx/ksoap2/serialization/HasAttributes;

    if-eqz v0, :cond_0

    move-object v0, p2

    .line 657
    check-cast v0, Lasyx/ksoap2/serialization/HasAttributes;

    invoke-direct {p0, p1, v0}, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->writeAttributes(Lasyx/xmlpull/v1/XmlSerializer;Lasyx/ksoap2/serialization/HasAttributes;)V

    .line 659
    :cond_0
    invoke-virtual {p0, p1, p2}, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->writeObjectBody(Lasyx/xmlpull/v1/XmlSerializer;Lasyx/ksoap2/serialization/KvmSerializable;)V

    .line 660
    return-void
.end method

.method protected writeProperty(Lasyx/xmlpull/v1/XmlSerializer;Ljava/lang/Object;Lasyx/ksoap2/serialization/PropertyInfo;)V
    .locals 9
    .param p1, "writer"    # Lasyx/xmlpull/v1/XmlSerializer;
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "type"    # Lasyx/ksoap2/serialization/PropertyInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x2

    .line 726
    if-eqz p2, :cond_0

    sget-object v3, Lasyx/ksoap2/serialization/SoapPrimitive;->NullNilElement:Ljava/lang/Object;

    if-ne p2, v3, :cond_2

    .line 727
    :cond_0
    iget-object v4, p0, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->xsi:Ljava/lang/String;

    iget v3, p0, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->version:I

    const/16 v5, 0x78

    if-lt v3, v5, :cond_1

    const-string v3, "nil"

    :goto_0
    const-string v5, "true"

    invoke-interface {p1, v4, v3, v5}, Lasyx/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lasyx/xmlpull/v1/XmlSerializer;

    .line 745
    :goto_1
    return-void

    .line 727
    :cond_1
    const-string v3, "null"

    goto :goto_0

    .line 730
    :cond_2
    invoke-virtual {p0, v8, p2}, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->getInfo(Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    .line 731
    .local v2, "qName":[Ljava/lang/Object;
    iget-boolean v3, p3, Lasyx/ksoap2/serialization/PropertyInfo;->multiRef:Z

    if-nez v3, :cond_3

    aget-object v3, v2, v6

    if-eqz v3, :cond_6

    .line 732
    :cond_3
    iget-object v3, p0, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->multiRef:Ljava/util/Vector;

    invoke-virtual {v3, p2}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 733
    .local v0, "i":I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_4

    .line 734
    iget-object v3, p0, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->multiRef:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v0

    .line 735
    iget-object v3, p0, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->multiRef:Ljava/util/Vector;

    invoke-virtual {v3, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 737
    :cond_4
    const-string v4, "href"

    aget-object v3, v2, v6

    if-nez v3, :cond_5

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "#o"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-interface {p1, v8, v4, v3}, Lasyx/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lasyx/xmlpull/v1/XmlSerializer;

    goto :goto_1

    :cond_5
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "#"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    aget-object v5, v2, v6

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 739
    .end local v0    # "i":I
    :cond_6
    iget-boolean v3, p0, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->implicitTypes:Z

    if-eqz v3, :cond_7

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    iget-object v4, p3, Lasyx/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    if-eq v3, v4, :cond_8

    .line 740
    :cond_7
    const/4 v3, 0x0

    aget-object v3, v2, v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {p1, v3, v7}, Lasyx/xmlpull/v1/XmlSerializer;->getPrefix(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 741
    .local v1, "prefix":Ljava/lang/String;
    iget-object v3, p0, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->xsi:Ljava/lang/String;

    const-string v4, "type"

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    aget-object v6, v2, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v3, v4, v5}, Lasyx/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lasyx/xmlpull/v1/XmlSerializer;

    .line 743
    .end local v1    # "prefix":Ljava/lang/String;
    :cond_8
    const/4 v3, 0x3

    aget-object v3, v2, v3

    invoke-virtual {p0, p1, p2, p3, v3}, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->writeElement(Lasyx/xmlpull/v1/XmlSerializer;Ljava/lang/Object;Lasyx/ksoap2/serialization/PropertyInfo;Ljava/lang/Object;)V

    goto/16 :goto_1
.end method

.method protected writeVectorBody(Lasyx/xmlpull/v1/XmlSerializer;Ljava/util/Vector;Lasyx/ksoap2/serialization/PropertyInfo;)V
    .locals 11
    .param p1, "writer"    # Lasyx/xmlpull/v1/XmlSerializer;
    .param p2, "vector"    # Ljava/util/Vector;
    .param p3, "elementType"    # Lasyx/ksoap2/serialization/PropertyInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 832
    const-string v4, "item"

    .line 833
    .local v4, "itemsTagName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 835
    .local v3, "itemsNamespace":Ljava/lang/String;
    if-nez p3, :cond_2

    .line 836
    sget-object p3, Lasyx/ksoap2/serialization/PropertyInfo;->OBJECT_TYPE:Lasyx/ksoap2/serialization/PropertyInfo;

    .line 844
    :cond_0
    :goto_0
    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v1

    .line 845
    .local v1, "cnt":I
    iget-object v6, p3, Lasyx/ksoap2/serialization/PropertyInfo;->type:Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7}, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->getInfo(Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .line 848
    .local v0, "arrType":[Ljava/lang/Object;
    iget-boolean v6, p0, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->implicitTypes:Z

    if-nez v6, :cond_3

    .line 849
    iget-object v7, p0, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->enc:Ljava/lang/String;

    const-string v8, "arrayType"

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    aget-object v6, v0, v10

    check-cast v6, Ljava/lang/String;

    invoke-interface {p1, v6, v10}, Lasyx/xmlpull/v1/XmlSerializer;->getPrefix(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v9, ":"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const/4 v9, 0x1

    aget-object v9, v0, v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v9, "["

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v9, "]"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v7, v8, v6}, Lasyx/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lasyx/xmlpull/v1/XmlSerializer;

    .line 858
    :cond_1
    :goto_1
    const/4 v5, 0x0

    .line 859
    .local v5, "skipped":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v1, :cond_6

    .line 860
    invoke-virtual {p2, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_4

    .line 861
    const/4 v5, 0x1

    .line 859
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 837
    .end local v0    # "arrType":[Ljava/lang/Object;
    .end local v1    # "cnt":I
    .end local v2    # "i":I
    .end local v5    # "skipped":Z
    :cond_2
    instance-of v6, p3, Lasyx/ksoap2/serialization/PropertyInfo;

    if-eqz v6, :cond_0

    .line 838
    iget-object v6, p3, Lasyx/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 839
    iget-object v4, p3, Lasyx/ksoap2/serialization/PropertyInfo;->name:Ljava/lang/String;

    .line 840
    iget-object v3, p3, Lasyx/ksoap2/serialization/PropertyInfo;->namespace:Ljava/lang/String;

    goto :goto_0

    .line 853
    .restart local v0    # "arrType":[Ljava/lang/Object;
    .restart local v1    # "cnt":I
    :cond_3
    if-nez v3, :cond_1

    .line 854
    aget-object v3, v0, v10

    .end local v3    # "itemsNamespace":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .restart local v3    # "itemsNamespace":Ljava/lang/String;
    goto :goto_1

    .line 863
    .restart local v2    # "i":I
    .restart local v5    # "skipped":Z
    :cond_4
    invoke-interface {p1, v3, v4}, Lasyx/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lasyx/xmlpull/v1/XmlSerializer;

    .line 864
    if-eqz v5, :cond_5

    .line 865
    iget-object v6, p0, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->enc:Ljava/lang/String;

    const-string v7, "position"

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v6, v7, v8}, Lasyx/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lasyx/xmlpull/v1/XmlSerializer;

    .line 866
    const/4 v5, 0x0

    .line 868
    :cond_5
    invoke-virtual {p2, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, p1, v6, p3}, Lasyx/ksoap2/serialization/SoapSerializationEnvelope;->writeProperty(Lasyx/xmlpull/v1/XmlSerializer;Ljava/lang/Object;Lasyx/ksoap2/serialization/PropertyInfo;)V

    .line 869
    invoke-interface {p1, v3, v4}, Lasyx/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lasyx/xmlpull/v1/XmlSerializer;

    goto :goto_3

    .line 872
    :cond_6
    return-void
.end method
