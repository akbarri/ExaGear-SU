.class public final Lcom/google/analytics/containertag/proto/Serving$Container$Builder;
.super Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;
.source "Serving.java"

# interfaces
.implements Lcom/google/analytics/containertag/proto/Serving$ContainerOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/analytics/containertag/proto/Serving$Container;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/analytics/containertag/proto/Serving$Container;",
        "Lcom/google/analytics/containertag/proto/Serving$Container$Builder;",
        ">;",
        "Lcom/google/analytics/containertag/proto/Serving$ContainerOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private containerId_:Ljava/lang/Object;

.field private jsResource_:Lcom/google/analytics/containertag/proto/Serving$Resource;

.field private state_:Lcom/google/analytics/containertag/proto/Serving$ResourceState;

.field private version_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 688
    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 812
    invoke-static {}, Lcom/google/analytics/containertag/proto/Serving$Resource;->getDefaultInstance()Lcom/google/analytics/containertag/proto/Serving$Resource;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Container$Builder;->jsResource_:Lcom/google/analytics/containertag/proto/Serving$Resource;

    const-string v0, ""

    .line 872
    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Container$Builder;->containerId_:Ljava/lang/Object;

    .line 948
    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$ResourceState;->PREVIEW:Lcom/google/analytics/containertag/proto/Serving$ResourceState;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Container$Builder;->state_:Lcom/google/analytics/containertag/proto/Serving$ResourceState;

    const-string v0, ""

    .line 983
    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Container$Builder;->version_:Ljava/lang/Object;

    .line 689
    invoke-direct {p0}, Lcom/google/analytics/containertag/proto/Serving$Container$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method static synthetic access$100()Lcom/google/analytics/containertag/proto/Serving$Container$Builder;
    .locals 1

    .line 681
    invoke-static {}, Lcom/google/analytics/containertag/proto/Serving$Container$Builder;->create()Lcom/google/analytics/containertag/proto/Serving$Container$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/google/analytics/containertag/proto/Serving$Container$Builder;
    .locals 1

    .line 695
    new-instance v0, Lcom/google/analytics/containertag/proto/Serving$Container$Builder;

    invoke-direct {v0}, Lcom/google/analytics/containertag/proto/Serving$Container$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    return-void
.end method


# virtual methods
.method public build()Lcom/google/analytics/containertag/proto/Serving$Container;
    .locals 2

    .line 720
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Container$Builder;->buildPartial()Lcom/google/analytics/containertag/proto/Serving$Container;

    move-result-object v0

    .line 721
    invoke-virtual {v0}, Lcom/google/analytics/containertag/proto/Serving$Container;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 722
    invoke-static {v0}, Lcom/google/analytics/containertag/proto/Serving$Container$Builder;->newUninitializedMessageException(Lcom/google/tagmanager/protobuf/MessageLite;)Lcom/google/tagmanager/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/tagmanager/protobuf/MessageLite;
    .locals 1

    .line 681
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Container$Builder;->build()Lcom/google/analytics/containertag/proto/Serving$Container;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/google/analytics/containertag/proto/Serving$Container;
    .locals 5

    .line 728
    new-instance v0, Lcom/google/analytics/containertag/proto/Serving$Container;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/analytics/containertag/proto/Serving$Container;-><init>(Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;Lcom/google/analytics/containertag/proto/Serving$1;)V

    .line 729
    iget v1, p0, Lcom/google/analytics/containertag/proto/Serving$Container$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 734
    :goto_0
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Container$Builder;->jsResource_:Lcom/google/analytics/containertag/proto/Serving$Resource;

    invoke-static {v0, v2}, Lcom/google/analytics/containertag/proto/Serving$Container;->access$302(Lcom/google/analytics/containertag/proto/Serving$Container;Lcom/google/analytics/containertag/proto/Serving$Resource;)Lcom/google/analytics/containertag/proto/Serving$Resource;

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    .line 738
    :cond_1
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Container$Builder;->containerId_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/analytics/containertag/proto/Serving$Container;->access$402(Lcom/google/analytics/containertag/proto/Serving$Container;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    or-int/lit8 v3, v3, 0x4

    .line 742
    :cond_2
    iget-object v2, p0, Lcom/google/analytics/containertag/proto/Serving$Container$Builder;->state_:Lcom/google/analytics/containertag/proto/Serving$ResourceState;

    invoke-static {v0, v2}, Lcom/google/analytics/containertag/proto/Serving$Container;->access$502(Lcom/google/analytics/containertag/proto/Serving$Container;Lcom/google/analytics/containertag/proto/Serving$ResourceState;)Lcom/google/analytics/containertag/proto/Serving$ResourceState;

    const/16 v2, 0x8

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    or-int/lit8 v3, v3, 0x8

    .line 746
    :cond_3
    iget-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Container$Builder;->version_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/analytics/containertag/proto/Serving$Container;->access$602(Lcom/google/analytics/containertag/proto/Serving$Container;Ljava/lang/Object;)Ljava/lang/Object;

    .line 747
    invoke-static {v0, v3}, Lcom/google/analytics/containertag/proto/Serving$Container;->access$702(Lcom/google/analytics/containertag/proto/Serving$Container;I)I

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/tagmanager/protobuf/MessageLite;
    .locals 1

    .line 681
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Container$Builder;->buildPartial()Lcom/google/analytics/containertag/proto/Serving$Container;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/google/analytics/containertag/proto/Serving$Container$Builder;
    .locals 1

    .line 699
    invoke-super {p0}, Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;->clear()Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;

    .line 700
    invoke-static {}, Lcom/google/analytics/containertag/proto/Serving$Resource;->getDefaultInstance()Lcom/google/analytics/containertag/proto/Serving$Resource;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Container$Builder;->jsResource_:Lcom/google/analytics/containertag/proto/Serving$Resource;

    .line 701
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Container$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Container$Builder;->bitField0_:I

    const-string v0, ""

    .line 702
    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Container$Builder;->containerId_:Ljava/lang/Object;

    .line 703
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Container$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Container$Builder;->bitField0_:I

    .line 704
    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$ResourceState;->PREVIEW:Lcom/google/analytics/containertag/proto/Serving$ResourceState;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Container$Builder;->state_:Lcom/google/analytics/containertag/proto/Serving$ResourceState;

    .line 705
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Container$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Container$Builder;->bitField0_:I

    const-string v0, ""

    .line 706
    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Container$Builder;->version_:Ljava/lang/Object;

    .line 707
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Container$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Container$Builder;->bitField0_:I

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .line 681
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Container$Builder;->clear()Lcom/google/analytics/containertag/proto/Serving$Container$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/tagmanager/protobuf/MessageLite$Builder;
    .locals 1

    .line 681
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Container$Builder;->clear()Lcom/google/analytics/containertag/proto/Serving$Container$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearContainerId()Lcom/google/analytics/containertag/proto/Serving$Container$Builder;
    .locals 1

    .line 929
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Container$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Container$Builder;->bitField0_:I

    .line 930
    invoke-static {}, Lcom/google/analytics/containertag/proto/Serving$Container;->getDefaultInstance()Lcom/google/analytics/containertag/proto/Serving$Container;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/analytics/containertag/proto/Serving$Container;->getContainerId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Container$Builder;->containerId_:Ljava/lang/Object;

    return-object p0
.end method

.method public clearJsResource()Lcom/google/analytics/containertag/proto/Serving$Container$Builder;
    .locals 1

    .line 866
    invoke-static {}, Lcom/google/analytics/containertag/proto/Serving$Resource;->getDefaultInstance()Lcom/google/analytics/containertag/proto/Serving$Resource;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Container$Builder;->jsResource_:Lcom/google/analytics/containertag/proto/Serving$Resource;

    .line 868
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Container$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Container$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearState()Lcom/google/analytics/containertag/proto/Serving$Container$Builder;
    .locals 1

    .line 977
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Container$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Container$Builder;->bitField0_:I

    .line 978
    sget-object v0, Lcom/google/analytics/containertag/proto/Serving$ResourceState;->PREVIEW:Lcom/google/analytics/containertag/proto/Serving$ResourceState;

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Container$Builder;->state_:Lcom/google/analytics/containertag/proto/Serving$ResourceState;

    return-object p0
.end method

.method public clearVersion()Lcom/google/analytics/containertag/proto/Serving$Container$Builder;
    .locals 1

    .line 1040
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Container$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Container$Builder;->bitField0_:I

    .line 1041
    invoke-static {}, Lcom/google/analytics/containertag/proto/Serving$Container;->getDefaultInstance()Lcom/google/analytics/containertag/proto/Serving$Container;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/analytics/containertag/proto/Serving$Container;->getVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Container$Builder;->version_:Ljava/lang/Object;

    return-object p0
.end method

.method public clone()Lcom/google/analytics/containertag/proto/Serving$Container$Builder;
    .locals 2

    .line 712
    invoke-static {}, Lcom/google/analytics/containertag/proto/Serving$Container$Builder;->create()Lcom/google/analytics/containertag/proto/Serving$Container$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Container$Builder;->buildPartial()Lcom/google/analytics/containertag/proto/Serving$Container;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/analytics/containertag/proto/Serving$Container$Builder;->mergeFrom(Lcom/google/analytics/containertag/proto/Serving$Container;)Lcom/google/analytics/containertag/proto/Serving$Container$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/tagmanager/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 681
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Container$Builder;->clone()Lcom/google/analytics/containertag/proto/Serving$Container$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .line 681
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Container$Builder;->clone()Lcom/google/analytics/containertag/proto/Serving$Container$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/tagmanager/protobuf/MessageLite$Builder;
    .locals 1

    .line 681
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Container$Builder;->clone()Lcom/google/analytics/containertag/proto/Serving$Container$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 681
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Container$Builder;->clone()Lcom/google/analytics/containertag/proto/Serving$Container$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getContainerId()Ljava/lang/String;
    .locals 2

    .line 883
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Container$Builder;->containerId_:Ljava/lang/Object;

    .line 884
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 885
    check-cast v0, Lcom/google/tagmanager/protobuf/ByteString;

    .line 887
    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 888
    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 889
    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Container$Builder;->containerId_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 893
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getContainerIdBytes()Lcom/google/tagmanager/protobuf/ByteString;
    .locals 2

    .line 901
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Container$Builder;->containerId_:Ljava/lang/Object;

    .line 902
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 903
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/tagmanager/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object v0

    .line 906
    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Container$Builder;->containerId_:Ljava/lang/Object;

    return-object v0

    .line 909
    :cond_0
    check-cast v0, Lcom/google/tagmanager/protobuf/ByteString;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/google/analytics/containertag/proto/Serving$Container;
    .locals 1

    .line 716
    invoke-static {}, Lcom/google/analytics/containertag/proto/Serving$Container;->getDefaultInstance()Lcom/google/analytics/containertag/proto/Serving$Container;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/tagmanager/protobuf/GeneratedMessageLite;
    .locals 1

    .line 681
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Container$Builder;->getDefaultInstanceForType()Lcom/google/analytics/containertag/proto/Serving$Container;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/tagmanager/protobuf/MessageLite;
    .locals 1

    .line 681
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Container$Builder;->getDefaultInstanceForType()Lcom/google/analytics/containertag/proto/Serving$Container;

    move-result-object v0

    return-object v0
.end method

.method public getJsResource()Lcom/google/analytics/containertag/proto/Serving$Resource;
    .locals 1

    .line 823
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Container$Builder;->jsResource_:Lcom/google/analytics/containertag/proto/Serving$Resource;

    return-object v0
.end method

.method public getState()Lcom/google/analytics/containertag/proto/Serving$ResourceState;
    .locals 1

    .line 959
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Container$Builder;->state_:Lcom/google/analytics/containertag/proto/Serving$ResourceState;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 2

    .line 994
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Container$Builder;->version_:Ljava/lang/Object;

    .line 995
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 996
    check-cast v0, Lcom/google/tagmanager/protobuf/ByteString;

    .line 998
    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 999
    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1000
    iput-object v1, p0, Lcom/google/analytics/containertag/proto/Serving$Container$Builder;->version_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 1004
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getVersionBytes()Lcom/google/tagmanager/protobuf/ByteString;
    .locals 2

    .line 1012
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Container$Builder;->version_:Ljava/lang/Object;

    .line 1013
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1014
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/tagmanager/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object v0

    .line 1017
    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Container$Builder;->version_:Ljava/lang/Object;

    return-object v0

    .line 1020
    :cond_0
    check-cast v0, Lcom/google/tagmanager/protobuf/ByteString;

    return-object v0
.end method

.method public hasContainerId()Z
    .locals 2

    .line 877
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Container$Builder;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasJsResource()Z
    .locals 2

    .line 817
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Container$Builder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasState()Z
    .locals 2

    .line 953
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Container$Builder;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasVersion()Z
    .locals 2

    .line 988
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Container$Builder;->bitField0_:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 774
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Container$Builder;->hasJsResource()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 778
    :cond_0
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Container$Builder;->hasContainerId()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 782
    :cond_1
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Container$Builder;->hasState()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 786
    :cond_2
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Container$Builder;->getJsResource()Lcom/google/analytics/containertag/proto/Serving$Resource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/analytics/containertag/proto/Serving$Resource;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/google/analytics/containertag/proto/Serving$Container;)Lcom/google/analytics/containertag/proto/Serving$Container$Builder;
    .locals 1

    .line 752
    invoke-static {}, Lcom/google/analytics/containertag/proto/Serving$Container;->getDefaultInstance()Lcom/google/analytics/containertag/proto/Serving$Container;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 753
    :cond_0
    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/Serving$Container;->hasJsResource()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 754
    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/Serving$Container;->getJsResource()Lcom/google/analytics/containertag/proto/Serving$Resource;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/analytics/containertag/proto/Serving$Container$Builder;->mergeJsResource(Lcom/google/analytics/containertag/proto/Serving$Resource;)Lcom/google/analytics/containertag/proto/Serving$Container$Builder;

    .line 756
    :cond_1
    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/Serving$Container;->hasContainerId()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 757
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Container$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Container$Builder;->bitField0_:I

    .line 758
    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$Container;->access$400(Lcom/google/analytics/containertag/proto/Serving$Container;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Container$Builder;->containerId_:Ljava/lang/Object;

    .line 761
    :cond_2
    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/Serving$Container;->hasState()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 762
    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/Serving$Container;->getState()Lcom/google/analytics/containertag/proto/Serving$ResourceState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/analytics/containertag/proto/Serving$Container$Builder;->setState(Lcom/google/analytics/containertag/proto/Serving$ResourceState;)Lcom/google/analytics/containertag/proto/Serving$Container$Builder;

    .line 764
    :cond_3
    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/Serving$Container;->hasVersion()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 765
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Container$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Container$Builder;->bitField0_:I

    .line 766
    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$Container;->access$600(Lcom/google/analytics/containertag/proto/Serving$Container;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Container$Builder;->version_:Ljava/lang/Object;

    .line 769
    :cond_4
    invoke-virtual {p0}, Lcom/google/analytics/containertag/proto/Serving$Container$Builder;->getUnknownFields()Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object v0

    invoke-static {p1}, Lcom/google/analytics/containertag/proto/Serving$Container;->access$800(Lcom/google/analytics/containertag/proto/Serving$Container;)Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/tagmanager/protobuf/ByteString;->concat(Lcom/google/tagmanager/protobuf/ByteString;)Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/analytics/containertag/proto/Serving$Container$Builder;->setUnknownFields(Lcom/google/tagmanager/protobuf/ByteString;)Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;

    return-object p0
.end method

.method public mergeFrom(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Lcom/google/analytics/containertag/proto/Serving$Container$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 799
    :try_start_0
    sget-object v1, Lcom/google/analytics/containertag/proto/Serving$Container;->PARSER:Lcom/google/tagmanager/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/tagmanager/protobuf/Parser;->parsePartialFrom(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/analytics/containertag/proto/Serving$Container;
    :try_end_0
    .catch Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 805
    invoke-virtual {p0, p1}, Lcom/google/analytics/containertag/proto/Serving$Container$Builder;->mergeFrom(Lcom/google/analytics/containertag/proto/Serving$Container;)Lcom/google/analytics/containertag/proto/Serving$Container$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 801
    :try_start_1
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/tagmanager/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/analytics/containertag/proto/Serving$Container;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 802
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_1

    .line 805
    invoke-virtual {p0, v0}, Lcom/google/analytics/containertag/proto/Serving$Container$Builder;->mergeFrom(Lcom/google/analytics/containertag/proto/Serving$Container;)Lcom/google/analytics/containertag/proto/Serving$Container$Builder;

    :cond_1
    throw p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Lcom/google/tagmanager/protobuf/AbstractMessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 681
    invoke-virtual {p0, p1, p2}, Lcom/google/analytics/containertag/proto/Serving$Container$Builder;->mergeFrom(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Lcom/google/analytics/containertag/proto/Serving$Container$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/tagmanager/protobuf/GeneratedMessageLite;)Lcom/google/tagmanager/protobuf/GeneratedMessageLite$Builder;
    .locals 0

    .line 681
    check-cast p1, Lcom/google/analytics/containertag/proto/Serving$Container;

    invoke-virtual {p0, p1}, Lcom/google/analytics/containertag/proto/Serving$Container$Builder;->mergeFrom(Lcom/google/analytics/containertag/proto/Serving$Container;)Lcom/google/analytics/containertag/proto/Serving$Container$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Lcom/google/tagmanager/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 681
    invoke-virtual {p0, p1, p2}, Lcom/google/analytics/containertag/proto/Serving$Container$Builder;->mergeFrom(Lcom/google/tagmanager/protobuf/CodedInputStream;Lcom/google/tagmanager/protobuf/ExtensionRegistryLite;)Lcom/google/analytics/containertag/proto/Serving$Container$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeJsResource(Lcom/google/analytics/containertag/proto/Serving$Resource;)Lcom/google/analytics/containertag/proto/Serving$Container$Builder;
    .locals 3

    .line 851
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Container$Builder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Container$Builder;->jsResource_:Lcom/google/analytics/containertag/proto/Serving$Resource;

    invoke-static {}, Lcom/google/analytics/containertag/proto/Serving$Resource;->getDefaultInstance()Lcom/google/analytics/containertag/proto/Serving$Resource;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 853
    iget-object v0, p0, Lcom/google/analytics/containertag/proto/Serving$Container$Builder;->jsResource_:Lcom/google/analytics/containertag/proto/Serving$Resource;

    invoke-static {v0}, Lcom/google/analytics/containertag/proto/Serving$Resource;->newBuilder(Lcom/google/analytics/containertag/proto/Serving$Resource;)Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->mergeFrom(Lcom/google/analytics/containertag/proto/Serving$Resource;)Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->buildPartial()Lcom/google/analytics/containertag/proto/Serving$Resource;

    move-result-object p1

    iput-object p1, p0, Lcom/google/analytics/containertag/proto/Serving$Container$Builder;->jsResource_:Lcom/google/analytics/containertag/proto/Serving$Resource;

    goto :goto_0

    .line 856
    :cond_0
    iput-object p1, p0, Lcom/google/analytics/containertag/proto/Serving$Container$Builder;->jsResource_:Lcom/google/analytics/containertag/proto/Serving$Resource;

    .line 859
    :goto_0
    iget p1, p0, Lcom/google/analytics/containertag/proto/Serving$Container$Builder;->bitField0_:I

    or-int/2addr p1, v1

    iput p1, p0, Lcom/google/analytics/containertag/proto/Serving$Container$Builder;->bitField0_:I

    return-object p0
.end method

.method public setContainerId(Ljava/lang/String;)Lcom/google/analytics/containertag/proto/Serving$Container$Builder;
    .locals 1

    if-nez p1, :cond_0

    .line 918
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 920
    :cond_0
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Container$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Container$Builder;->bitField0_:I

    .line 921
    iput-object p1, p0, Lcom/google/analytics/containertag/proto/Serving$Container$Builder;->containerId_:Ljava/lang/Object;

    return-object p0
.end method

.method public setContainerIdBytes(Lcom/google/tagmanager/protobuf/ByteString;)Lcom/google/analytics/containertag/proto/Serving$Container$Builder;
    .locals 1

    if-nez p1, :cond_0

    .line 940
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 942
    :cond_0
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Container$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Container$Builder;->bitField0_:I

    .line 943
    iput-object p1, p0, Lcom/google/analytics/containertag/proto/Serving$Container$Builder;->containerId_:Ljava/lang/Object;

    return-object p0
.end method

.method public setJsResource(Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;)Lcom/google/analytics/containertag/proto/Serving$Container$Builder;
    .locals 0

    .line 842
    invoke-virtual {p1}, Lcom/google/analytics/containertag/proto/Serving$Resource$Builder;->build()Lcom/google/analytics/containertag/proto/Serving$Resource;

    move-result-object p1

    iput-object p1, p0, Lcom/google/analytics/containertag/proto/Serving$Container$Builder;->jsResource_:Lcom/google/analytics/containertag/proto/Serving$Resource;

    .line 844
    iget p1, p0, Lcom/google/analytics/containertag/proto/Serving$Container$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/analytics/containertag/proto/Serving$Container$Builder;->bitField0_:I

    return-object p0
.end method

.method public setJsResource(Lcom/google/analytics/containertag/proto/Serving$Resource;)Lcom/google/analytics/containertag/proto/Serving$Container$Builder;
    .locals 0

    if-nez p1, :cond_0

    .line 830
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 832
    :cond_0
    iput-object p1, p0, Lcom/google/analytics/containertag/proto/Serving$Container$Builder;->jsResource_:Lcom/google/analytics/containertag/proto/Serving$Resource;

    .line 834
    iget p1, p0, Lcom/google/analytics/containertag/proto/Serving$Container$Builder;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/analytics/containertag/proto/Serving$Container$Builder;->bitField0_:I

    return-object p0
.end method

.method public setState(Lcom/google/analytics/containertag/proto/Serving$ResourceState;)Lcom/google/analytics/containertag/proto/Serving$Container$Builder;
    .locals 1

    if-nez p1, :cond_0

    .line 966
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 968
    :cond_0
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Container$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Container$Builder;->bitField0_:I

    .line 969
    iput-object p1, p0, Lcom/google/analytics/containertag/proto/Serving$Container$Builder;->state_:Lcom/google/analytics/containertag/proto/Serving$ResourceState;

    return-object p0
.end method

.method public setVersion(Ljava/lang/String;)Lcom/google/analytics/containertag/proto/Serving$Container$Builder;
    .locals 1

    if-nez p1, :cond_0

    .line 1029
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 1031
    :cond_0
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Container$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Container$Builder;->bitField0_:I

    .line 1032
    iput-object p1, p0, Lcom/google/analytics/containertag/proto/Serving$Container$Builder;->version_:Ljava/lang/Object;

    return-object p0
.end method

.method public setVersionBytes(Lcom/google/tagmanager/protobuf/ByteString;)Lcom/google/analytics/containertag/proto/Serving$Container$Builder;
    .locals 1

    if-nez p1, :cond_0

    .line 1051
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    .line 1053
    :cond_0
    iget v0, p0, Lcom/google/analytics/containertag/proto/Serving$Container$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/analytics/containertag/proto/Serving$Container$Builder;->bitField0_:I

    .line 1054
    iput-object p1, p0, Lcom/google/analytics/containertag/proto/Serving$Container$Builder;->version_:Ljava/lang/Object;

    return-object p0
.end method
