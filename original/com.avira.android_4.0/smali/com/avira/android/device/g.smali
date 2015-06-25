.class public final Lcom/avira/android/device/g;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_BACKOFF:J = 0x1f4L

.field private static final DEFAULT_BACKOFF_MULTIPLIER:I = 0x3

.field private static final MAX_DEFAULT_RETRIES:I = 0x3


# instance fields
.field private final a:Lcom/avira/android/utilities/y;


# direct methods
.method public constructor <init>(Lcom/avira/android/utilities/y;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/avira/android/device/g;->a:Lcom/avira/android/utilities/y;

    .line 35
    return-void
.end method

.method private static varargs a()Ljava/lang/Boolean;
    .locals 10

    .prologue
    const/4 v6, 0x3

    const/4 v0, 0x0

    .line 41
    const-wide/16 v2, 0x1f4

    move v7, v0

    move-wide v8, v2

    move v2, v7

    move v3, v0

    move-wide v0, v8

    .line 44
    :goto_0
    if-ge v2, v6, :cond_1

    if-nez v3, :cond_1

    .line 46
    invoke-static {}, Lcom/avira/android/common/web/p;->d()Z

    move-result v3

    .line 50
    add-int/lit8 v4, v2, 0x1

    if-ge v4, v6, :cond_0

    if-nez v3, :cond_0

    .line 54
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :goto_1
    const-wide/16 v4, 0x3

    mul-long/2addr v0, v4

    .line 44
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 63
    :cond_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v4

    goto :goto_1
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 16
    invoke-static {}, Lcom/avira/android/device/g;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 16
    check-cast p1, Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/avira/android/device/g;->a:Lcom/avira/android/utilities/y;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/avira/android/device/g;->a:Lcom/avira/android/utilities/y;

    invoke-interface {v0}, Lcom/avira/android/utilities/y;->a()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/avira/android/device/g;->a:Lcom/avira/android/utilities/y;

    invoke-interface {v0}, Lcom/avira/android/utilities/y;->b()V

    goto :goto_0
.end method
