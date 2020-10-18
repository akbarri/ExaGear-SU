.class Lcom/google/tagmanager/protobuf/RopeByteString$Balancer;
.super Ljava/lang/Object;
.source "RopeByteString.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/tagmanager/protobuf/RopeByteString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Balancer"
.end annotation


# instance fields
.field private final prefixesStack:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/google/tagmanager/protobuf/ByteString;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 574
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 578
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-static {}, Lcom/google/tagmanager/protobuf/RopeByteString;->access$300()[I

    move-result-object v1

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/google/tagmanager/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/Deque;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/tagmanager/protobuf/RopeByteString$1;)V
    .locals 0

    .line 574
    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/RopeByteString$Balancer;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/tagmanager/protobuf/RopeByteString$Balancer;Lcom/google/tagmanager/protobuf/ByteString;Lcom/google/tagmanager/protobuf/ByteString;)Lcom/google/tagmanager/protobuf/ByteString;
    .locals 0

    .line 574
    invoke-direct {p0, p1, p2}, Lcom/google/tagmanager/protobuf/RopeByteString$Balancer;->balance(Lcom/google/tagmanager/protobuf/ByteString;Lcom/google/tagmanager/protobuf/ByteString;)Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method private balance(Lcom/google/tagmanager/protobuf/ByteString;Lcom/google/tagmanager/protobuf/ByteString;)Lcom/google/tagmanager/protobuf/ByteString;
    .locals 2

    .line 582
    invoke-direct {p0, p1}, Lcom/google/tagmanager/protobuf/RopeByteString$Balancer;->doBalance(Lcom/google/tagmanager/protobuf/ByteString;)V

    .line 583
    invoke-direct {p0, p2}, Lcom/google/tagmanager/protobuf/RopeByteString$Balancer;->doBalance(Lcom/google/tagmanager/protobuf/ByteString;)V

    .line 586
    iget-object p1, p0, Lcom/google/tagmanager/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/Deque;

    invoke-interface {p1}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/tagmanager/protobuf/ByteString;

    .line 587
    :goto_0
    iget-object p2, p0, Lcom/google/tagmanager/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/Deque;

    invoke-interface {p2}, Ljava/util/Deque;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    .line 588
    iget-object p2, p0, Lcom/google/tagmanager/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/Deque;

    invoke-interface {p2}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/tagmanager/protobuf/ByteString;

    .line 589
    new-instance v0, Lcom/google/tagmanager/protobuf/RopeByteString;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p1, v1}, Lcom/google/tagmanager/protobuf/RopeByteString;-><init>(Lcom/google/tagmanager/protobuf/ByteString;Lcom/google/tagmanager/protobuf/ByteString;Lcom/google/tagmanager/protobuf/RopeByteString$1;)V

    move-object p1, v0

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method private doBalance(Lcom/google/tagmanager/protobuf/ByteString;)V
    .locals 3

    .line 601
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/ByteString;->isBalanced()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 602
    invoke-direct {p0, p1}, Lcom/google/tagmanager/protobuf/RopeByteString$Balancer;->insert(Lcom/google/tagmanager/protobuf/ByteString;)V

    goto :goto_0

    .line 603
    :cond_0
    instance-of v0, p1, Lcom/google/tagmanager/protobuf/RopeByteString;

    if-eqz v0, :cond_1

    .line 604
    check-cast p1, Lcom/google/tagmanager/protobuf/RopeByteString;

    .line 605
    invoke-static {p1}, Lcom/google/tagmanager/protobuf/RopeByteString;->access$500(Lcom/google/tagmanager/protobuf/RopeByteString;)Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/tagmanager/protobuf/RopeByteString$Balancer;->doBalance(Lcom/google/tagmanager/protobuf/ByteString;)V

    .line 606
    invoke-static {p1}, Lcom/google/tagmanager/protobuf/RopeByteString;->access$600(Lcom/google/tagmanager/protobuf/RopeByteString;)Lcom/google/tagmanager/protobuf/ByteString;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/tagmanager/protobuf/RopeByteString$Balancer;->doBalance(Lcom/google/tagmanager/protobuf/ByteString;)V

    :goto_0
    return-void

    .line 608
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Has a new type of ByteString been created? Found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getDepthBinForLength(I)I
    .locals 1

    .line 668
    invoke-static {}, Lcom/google/tagmanager/protobuf/RopeByteString;->access$300()[I

    move-result-object v0

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result p1

    if-gez p1, :cond_0

    add-int/lit8 p1, p1, 0x1

    neg-int p1, p1

    add-int/lit8 p1, p1, -0x1

    :cond_0
    return p1
.end method

.method private insert(Lcom/google/tagmanager/protobuf/ByteString;)V
    .locals 5

    .line 629
    invoke-virtual {p1}, Lcom/google/tagmanager/protobuf/ByteString;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/tagmanager/protobuf/RopeByteString$Balancer;->getDepthBinForLength(I)I

    move-result v0

    .line 630
    invoke-static {}, Lcom/google/tagmanager/protobuf/RopeByteString;->access$300()[I

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    aget v1, v1, v2

    .line 636
    iget-object v2, p0, Lcom/google/tagmanager/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/google/tagmanager/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/tagmanager/protobuf/ByteString;

    invoke-virtual {v2}, Lcom/google/tagmanager/protobuf/ByteString;->size()I

    move-result v2

    if-lt v2, v1, :cond_0

    goto/16 :goto_2

    .line 639
    :cond_0
    invoke-static {}, Lcom/google/tagmanager/protobuf/RopeByteString;->access$300()[I

    move-result-object v1

    aget v0, v1, v0

    .line 642
    iget-object v1, p0, Lcom/google/tagmanager/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/tagmanager/protobuf/ByteString;

    .line 644
    :goto_0
    iget-object v2, p0, Lcom/google/tagmanager/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/google/tagmanager/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/tagmanager/protobuf/ByteString;

    invoke-virtual {v2}, Lcom/google/tagmanager/protobuf/ByteString;->size()I

    move-result v2

    if-ge v2, v0, :cond_1

    .line 645
    iget-object v2, p0, Lcom/google/tagmanager/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/tagmanager/protobuf/ByteString;

    .line 646
    new-instance v4, Lcom/google/tagmanager/protobuf/RopeByteString;

    invoke-direct {v4, v2, v1, v3}, Lcom/google/tagmanager/protobuf/RopeByteString;-><init>(Lcom/google/tagmanager/protobuf/ByteString;Lcom/google/tagmanager/protobuf/ByteString;Lcom/google/tagmanager/protobuf/RopeByteString$1;)V

    move-object v1, v4

    goto :goto_0

    .line 650
    :cond_1
    new-instance v0, Lcom/google/tagmanager/protobuf/RopeByteString;

    invoke-direct {v0, v1, p1, v3}, Lcom/google/tagmanager/protobuf/RopeByteString;-><init>(Lcom/google/tagmanager/protobuf/ByteString;Lcom/google/tagmanager/protobuf/ByteString;Lcom/google/tagmanager/protobuf/RopeByteString$1;)V

    .line 653
    :goto_1
    iget-object p1, p0, Lcom/google/tagmanager/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/Deque;

    invoke-interface {p1}, Ljava/util/Deque;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 654
    invoke-virtual {v0}, Lcom/google/tagmanager/protobuf/ByteString;->size()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/google/tagmanager/protobuf/RopeByteString$Balancer;->getDepthBinForLength(I)I

    move-result p1

    .line 655
    invoke-static {}, Lcom/google/tagmanager/protobuf/RopeByteString;->access$300()[I

    move-result-object v1

    add-int/lit8 p1, p1, 0x1

    aget p1, v1, p1

    .line 656
    iget-object v1, p0, Lcom/google/tagmanager/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/tagmanager/protobuf/ByteString;

    invoke-virtual {v1}, Lcom/google/tagmanager/protobuf/ByteString;->size()I

    move-result v1

    if-ge v1, p1, :cond_2

    .line 657
    iget-object p1, p0, Lcom/google/tagmanager/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/Deque;

    invoke-interface {p1}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/tagmanager/protobuf/ByteString;

    .line 658
    new-instance v1, Lcom/google/tagmanager/protobuf/RopeByteString;

    invoke-direct {v1, p1, v0, v3}, Lcom/google/tagmanager/protobuf/RopeByteString;-><init>(Lcom/google/tagmanager/protobuf/ByteString;Lcom/google/tagmanager/protobuf/ByteString;Lcom/google/tagmanager/protobuf/RopeByteString$1;)V

    move-object v0, v1

    goto :goto_1

    .line 663
    :cond_2
    iget-object p1, p0, Lcom/google/tagmanager/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/Deque;

    invoke-interface {p1, v0}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    goto :goto_3

    .line 637
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/RopeByteString$Balancer;->prefixesStack:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    :goto_3
    return-void
.end method
