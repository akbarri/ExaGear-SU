.class public final Lcom/google/firebase/iid/zzu;
.super Ljava/lang/Exception;


# instance fields
.field private final errorCode:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput p1, p0, Lcom/google/firebase/iid/zzu;->errorCode:I

    return-void
.end method


# virtual methods
.method public final getErrorCode()I
    .locals 1

    iget v0, p0, Lcom/google/firebase/iid/zzu;->errorCode:I

    return v0
.end method
