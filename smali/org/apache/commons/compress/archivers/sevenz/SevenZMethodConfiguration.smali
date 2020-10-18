.class public Lorg/apache/commons/compress/archivers/sevenz/SevenZMethodConfiguration;
.super Ljava/lang/Object;
.source "SevenZMethodConfiguration.java"


# instance fields
.field private final method:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

.field private final options:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;)V
    .locals 1

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethodConfiguration;-><init>(Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;Ljava/lang/Object;)V
    .locals 3

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethodConfiguration;->method:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    .line 58
    iput-object p2, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethodConfiguration;->options:Ljava/lang/Object;

    if-eqz p2, :cond_0

    .line 59
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/sevenz/Coders;->findByMethod(Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;)Lorg/apache/commons/compress/archivers/sevenz/CoderBase;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/apache/commons/compress/archivers/sevenz/CoderBase;->canAcceptOptions(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " method doesn\'t support options of type "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public getMethod()Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;
    .locals 1

    .line 70
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethodConfiguration;->method:Lorg/apache/commons/compress/archivers/sevenz/SevenZMethod;

    return-object v0
.end method

.method public getOptions()Ljava/lang/Object;
    .locals 1

    .line 78
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/sevenz/SevenZMethodConfiguration;->options:Ljava/lang/Object;

    return-object v0
.end method
