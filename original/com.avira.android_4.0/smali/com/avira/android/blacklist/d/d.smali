.class final Lcom/avira/android/blacklist/d/d;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/avira/android/blacklist/model/BLContact;",
        ">;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/avira/android/blacklist/d/c;


# direct methods
.method private constructor <init>(Lcom/avira/android/blacklist/d/c;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/avira/android/blacklist/d/d;->a:Lcom/avira/android/blacklist/d/c;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/avira/android/blacklist/d/c;B)V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/avira/android/blacklist/d/d;-><init>(Lcom/avira/android/blacklist/d/c;)V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 105
    check-cast p1, [Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/avira/android/blacklist/d/d;->a:Lcom/avira/android/blacklist/d/c;

    invoke-static {v0}, Lcom/avira/android/blacklist/d/c;->a(Lcom/avira/android/blacklist/d/c;)Lcom/avira/android/blacklist/c/a;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-interface {v0, v1}, Lcom/avira/android/blacklist/c/a;->a(Ljava/util/ArrayList;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 105
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.avira.android.action.ON_COLLECTION_UPDATED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/avira/android/ApplicationService;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
