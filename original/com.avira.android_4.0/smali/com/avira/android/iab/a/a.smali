.class public final Lcom/avira/android/iab/a/a;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field a:Lcom/avira/android/iab/a/j;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/avira/android/iab/a/j;

    invoke-direct {v0, p1, p2}, Lcom/avira/android/iab/a/j;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/avira/android/iab/a/a;-><init>(Lcom/avira/android/iab/a/j;)V

    .line 34
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Lcom/avira/android/iab/a/j;

    invoke-direct {v0, p1, p2}, Lcom/avira/android/iab/a/j;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v0, p3}, Lcom/avira/android/iab/a/a;-><init>(Lcom/avira/android/iab/a/j;Ljava/lang/Exception;)V

    .line 45
    return-void
.end method

.method private constructor <init>(Lcom/avira/android/iab/a/j;)V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/avira/android/iab/a/a;-><init>(Lcom/avira/android/iab/a/j;Ljava/lang/Exception;)V

    .line 29
    return-void
.end method

.method private constructor <init>(Lcom/avira/android/iab/a/j;Ljava/lang/Exception;)V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p1, Lcom/avira/android/iab/a/j;->b:Ljava/lang/String;

    invoke-direct {p0, v0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 39
    iput-object p1, p0, Lcom/avira/android/iab/a/a;->a:Lcom/avira/android/iab/a/j;

    .line 40
    return-void
.end method


# virtual methods
.method public final a()Lcom/avira/android/iab/a/j;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/avira/android/iab/a/a;->a:Lcom/avira/android/iab/a/j;

    return-object v0
.end method
