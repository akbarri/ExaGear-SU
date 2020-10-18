.class public Lcom/google/tagmanager/protobuf/GeneratedMessageLite$GeneratedExtension;
.super Ljava/lang/Object;
.source "GeneratedMessageLite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/tagmanager/protobuf/GeneratedMessageLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GeneratedExtension"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ContainingType::",
        "Lcom/google/tagmanager/protobuf/MessageLite;",
        "Type:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final containingTypeDefaultInstance:Lcom/google/tagmanager/protobuf/MessageLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TContainingType;"
        }
    .end annotation
.end field

.field final defaultValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TType;"
        }
    .end annotation
.end field

.field final descriptor:Lcom/google/tagmanager/protobuf/GeneratedMessageLite$ExtensionDescriptor;

.field final enumValueOf:Ljava/lang/reflect/Method;

.field final messageDefaultInstance:Lcom/google/tagmanager/protobuf/MessageLite;

.field final singularType:Ljava/lang/Class;


# direct methods
.method constructor <init>(Lcom/google/tagmanager/protobuf/MessageLite;Ljava/lang/Object;Lcom/google/tagmanager/protobuf/MessageLite;Lcom/google/tagmanager/protobuf/GeneratedMessageLite$ExtensionDescriptor;Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TContainingType;TType;",
            "Lcom/google/tagmanager/protobuf/MessageLite;",
            "Lcom/google/tagmanager/protobuf/GeneratedMessageLite$ExtensionDescriptor;",
            "Ljava/lang/Class;",
            ")V"
        }
    .end annotation

    .line 817
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 821
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Null containingTypeDefaultInstance"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 824
    :cond_0
    invoke-virtual {p4}, Lcom/google/tagmanager/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteType()Lcom/google/tagmanager/protobuf/WireFormat$FieldType;

    move-result-object v0

    sget-object v1, Lcom/google/tagmanager/protobuf/WireFormat$FieldType;->MESSAGE:Lcom/google/tagmanager/protobuf/WireFormat$FieldType;

    if-ne v0, v1, :cond_1

    if-nez p3, :cond_1

    .line 826
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Null messageDefaultInstance"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 829
    :cond_1
    iput-object p1, p0, Lcom/google/tagmanager/protobuf/GeneratedMessageLite$GeneratedExtension;->containingTypeDefaultInstance:Lcom/google/tagmanager/protobuf/MessageLite;

    .line 830
    iput-object p2, p0, Lcom/google/tagmanager/protobuf/GeneratedMessageLite$GeneratedExtension;->defaultValue:Ljava/lang/Object;

    .line 831
    iput-object p3, p0, Lcom/google/tagmanager/protobuf/GeneratedMessageLite$GeneratedExtension;->messageDefaultInstance:Lcom/google/tagmanager/protobuf/MessageLite;

    .line 832
    iput-object p4, p0, Lcom/google/tagmanager/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/tagmanager/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    .line 836
    iput-object p5, p0, Lcom/google/tagmanager/protobuf/GeneratedMessageLite$GeneratedExtension;->singularType:Ljava/lang/Class;

    .line 837
    const-class p1, Lcom/google/tagmanager/protobuf/Internal$EnumLite;

    invoke-virtual {p1, p5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "valueOf"

    const/4 p2, 0x1

    .line 838
    new-array p2, p2, [Ljava/lang/Class;

    const/4 p3, 0x0

    sget-object p4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object p4, p2, p3

    invoke-static {p5, p1, p2}, Lcom/google/tagmanager/protobuf/GeneratedMessageLite;->getMethodOrDie(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/google/tagmanager/protobuf/GeneratedMessageLite$GeneratedExtension;->enumValueOf:Ljava/lang/reflect/Method;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 841
    iput-object p1, p0, Lcom/google/tagmanager/protobuf/GeneratedMessageLite$GeneratedExtension;->enumValueOf:Ljava/lang/reflect/Method;

    :goto_0
    return-void
.end method


# virtual methods
.method fromFieldSetType(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 875
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/tagmanager/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 876
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/tagmanager/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteJavaType()Lcom/google/tagmanager/protobuf/WireFormat$JavaType;

    move-result-object v0

    sget-object v1, Lcom/google/tagmanager/protobuf/WireFormat$JavaType;->ENUM:Lcom/google/tagmanager/protobuf/WireFormat$JavaType;

    if-ne v0, v1, :cond_1

    .line 877
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 878
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 879
    invoke-virtual {p0, v1}, Lcom/google/tagmanager/protobuf/GeneratedMessageLite$GeneratedExtension;->singularFromFieldSetType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    return-object p1

    .line 886
    :cond_2
    invoke-virtual {p0, p1}, Lcom/google/tagmanager/protobuf/GeneratedMessageLite$GeneratedExtension;->singularFromFieldSetType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getContainingTypeDefaultInstance()Lcom/google/tagmanager/protobuf/MessageLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TContainingType;"
        }
    .end annotation

    .line 856
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/GeneratedMessageLite$GeneratedExtension;->containingTypeDefaultInstance:Lcom/google/tagmanager/protobuf/MessageLite;

    return-object v0
.end method

.method public getMessageDefaultInstance()Lcom/google/tagmanager/protobuf/MessageLite;
    .locals 1

    .line 870
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/GeneratedMessageLite$GeneratedExtension;->messageDefaultInstance:Lcom/google/tagmanager/protobuf/MessageLite;

    return-object v0
.end method

.method public getNumber()I
    .locals 1

    .line 861
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/tagmanager/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getNumber()I

    move-result v0

    return v0
.end method

.method singularFromFieldSetType(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 891
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/tagmanager/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteJavaType()Lcom/google/tagmanager/protobuf/WireFormat$JavaType;

    move-result-object v0

    sget-object v1, Lcom/google/tagmanager/protobuf/WireFormat$JavaType;->ENUM:Lcom/google/tagmanager/protobuf/WireFormat$JavaType;

    if-ne v0, v1, :cond_0

    .line 892
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/GeneratedMessageLite$GeneratedExtension;->enumValueOf:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    check-cast p1, Ljava/lang/Integer;

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/tagmanager/protobuf/GeneratedMessageLite;->invokeOrDie(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p1
.end method

.method singularToFieldSetType(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 916
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/tagmanager/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteJavaType()Lcom/google/tagmanager/protobuf/WireFormat$JavaType;

    move-result-object v0

    sget-object v1, Lcom/google/tagmanager/protobuf/WireFormat$JavaType;->ENUM:Lcom/google/tagmanager/protobuf/WireFormat$JavaType;

    if-ne v0, v1, :cond_0

    .line 917
    check-cast p1, Lcom/google/tagmanager/protobuf/Internal$EnumLite;

    invoke-interface {p1}, Lcom/google/tagmanager/protobuf/Internal$EnumLite;->getNumber()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p1
.end method

.method toFieldSetType(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 900
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/tagmanager/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 901
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/google/tagmanager/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/GeneratedMessageLite$ExtensionDescriptor;->getLiteJavaType()Lcom/google/tagmanager/protobuf/WireFormat$JavaType;

    move-result-object v0

    sget-object v1, Lcom/google/tagmanager/protobuf/WireFormat$JavaType;->ENUM:Lcom/google/tagmanager/protobuf/WireFormat$JavaType;

    if-ne v0, v1, :cond_1

    .line 902
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 903
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 904
    invoke-virtual {p0, v1}, Lcom/google/tagmanager/protobuf/GeneratedMessageLite$GeneratedExtension;->singularToFieldSetType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    return-object p1

    .line 911
    :cond_2
    invoke-virtual {p0, p1}, Lcom/google/tagmanager/protobuf/GeneratedMessageLite$GeneratedExtension;->singularToFieldSetType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
