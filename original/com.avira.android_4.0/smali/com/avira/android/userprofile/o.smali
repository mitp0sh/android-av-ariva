.class final Lcom/avira/android/userprofile/o;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/avira/android/userprofile/k;


# direct methods
.method private constructor <init>(Lcom/avira/android/userprofile/k;)V
    .locals 0

    .prologue
    .line 318
    iput-object p1, p0, Lcom/avira/android/userprofile/o;->a:Lcom/avira/android/userprofile/k;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/avira/android/userprofile/k;B)V
    .locals 0

    .prologue
    .line 318
    invoke-direct {p0, p1}, Lcom/avira/android/userprofile/o;-><init>(Lcom/avira/android/userprofile/k;)V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 318
    iget-object v0, p0, Lcom/avira/android/userprofile/o;->a:Lcom/avira/android/userprofile/k;

    invoke-virtual {v0}, Lcom/avira/android/userprofile/k;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/avira/android/userprofile/p;

    invoke-direct {v1, p0}, Lcom/avira/android/userprofile/p;-><init>(Lcom/avira/android/userprofile/o;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    return-object v0
.end method
