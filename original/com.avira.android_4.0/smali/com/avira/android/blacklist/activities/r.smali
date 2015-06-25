.class final Lcom/avira/android/blacklist/activities/r;
.super Lcom/avira/android/custom/ab;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/avira/android/blacklist/activities/BLHistoryDetailsActivity;


# direct methods
.method constructor <init>(Lcom/avira/android/blacklist/activities/BLHistoryDetailsActivity;)V
    .locals 0

    .prologue
    .line 340
    iput-object p1, p0, Lcom/avira/android/blacklist/activities/r;->a:Lcom/avira/android/blacklist/activities/BLHistoryDetailsActivity;

    invoke-direct {p0}, Lcom/avira/android/custom/ab;-><init>()V

    return-void
.end method


# virtual methods
.method public final e()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 345
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    iget-object v1, p0, Lcom/avira/android/blacklist/activities/r;->a:Lcom/avira/android/blacklist/activities/BLHistoryDetailsActivity;

    iget-object v2, p0, Lcom/avira/android/blacklist/activities/r;->a:Lcom/avira/android/blacklist/activities/BLHistoryDetailsActivity;

    const v3, 0x7f08024c

    invoke-virtual {v2, v3}, Lcom/avira/android/blacklist/activities/BLHistoryDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/avira/android/ApplicationService;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 348
    new-instance v0, Lcom/avira/android/blacklist/activities/s;

    iget-object v1, p0, Lcom/avira/android/blacklist/activities/r;->a:Lcom/avira/android/blacklist/activities/BLHistoryDetailsActivity;

    invoke-direct {v0, v1, v4}, Lcom/avira/android/blacklist/activities/s;-><init>(Lcom/avira/android/blacklist/activities/BLHistoryDetailsActivity;B)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/Collection;

    iget-object v2, p0, Lcom/avira/android/blacklist/activities/r;->a:Lcom/avira/android/blacklist/activities/BLHistoryDetailsActivity;

    invoke-static {v2}, Lcom/avira/android/blacklist/activities/BLHistoryDetailsActivity;->b(Lcom/avira/android/blacklist/activities/BLHistoryDetailsActivity;)Lcom/avira/android/blacklist/a/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/avira/android/blacklist/a/i;->b()Ljava/util/ArrayList;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/avira/android/blacklist/activities/s;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 349
    return-void
.end method
