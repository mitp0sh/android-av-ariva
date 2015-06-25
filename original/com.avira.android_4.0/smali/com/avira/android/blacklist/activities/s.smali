.class final Lcom/avira/android/blacklist/activities/s;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/util/Collection",
        "<",
        "Lcom/avira/android/blacklist/model/BLHistoryItem;",
        ">;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/avira/android/blacklist/activities/BLHistoryDetailsActivity;


# direct methods
.method private constructor <init>(Lcom/avira/android/blacklist/activities/BLHistoryDetailsActivity;)V
    .locals 0

    .prologue
    .line 376
    iput-object p1, p0, Lcom/avira/android/blacklist/activities/s;->a:Lcom/avira/android/blacklist/activities/BLHistoryDetailsActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/avira/android/blacklist/activities/BLHistoryDetailsActivity;B)V
    .locals 0

    .prologue
    .line 376
    invoke-direct {p0, p1}, Lcom/avira/android/blacklist/activities/s;-><init>(Lcom/avira/android/blacklist/activities/BLHistoryDetailsActivity;)V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 376
    check-cast p1, [Ljava/util/Collection;

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {}, Lcom/avira/android/blacklist/d/l;->a()Lcom/avira/android/blacklist/d/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avira/android/blacklist/d/l;->d()Lcom/avira/android/blacklist/d/n;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/avira/android/blacklist/d/n;->b(Ljava/util/List;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/avira/android/blacklist/activities/s;->a:Lcom/avira/android/blacklist/activities/BLHistoryDetailsActivity;

    invoke-static {v0}, Lcom/avira/android/blacklist/activities/BLHistoryDetailsActivity;->c(Lcom/avira/android/blacklist/activities/BLHistoryDetailsActivity;)V

    return-void
.end method
