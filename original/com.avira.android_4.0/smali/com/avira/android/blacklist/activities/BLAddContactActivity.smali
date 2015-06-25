.class public Lcom/avira/android/blacklist/activities/BLAddContactActivity;
.super Lcom/avira/android/blacklist/activities/BLAddBaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/avira/android/blacklist/activities/BLAddBaseActivity;-><init>()V

    .line 63
    return-void
.end method

.method static synthetic a(Lcom/avira/android/blacklist/activities/BLAddContactActivity;)V
    .locals 4

    .prologue
    .line 21
    iget-object v0, p0, Lcom/avira/android/blacklist/activities/BLAddContactActivity;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-static {}, Lcom/avira/android/blacklist/d/f;->a()Lcom/avira/android/blacklist/d/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/blacklist/d/f;->c()Lcom/avira/android/blacklist/d/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/blacklist/d/h;->b()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/avira/android/blacklist/activities/BLAddContactActivity;->c:Lcom/avira/android/blacklist/d/v;

    invoke-virtual {v1}, Lcom/avira/android/blacklist/d/v;->b()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/avira/android/blacklist/d/u;

    invoke-direct {v2, v0}, Lcom/avira/android/blacklist/d/u;-><init>(Ljava/util/List;)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/blacklist/model/j;

    invoke-virtual {v0}, Lcom/avira/android/blacklist/model/j;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/avira/android/blacklist/d/u;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/avira/android/blacklist/activities/BLAddContactActivity;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 1

    .prologue
    .line 90
    const v0, 0x7f08023d

    return v0
.end method

.method protected final b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 96
    new-instance v0, Lcom/avira/android/blacklist/activities/d;

    invoke-direct {v0, p0, v1}, Lcom/avira/android/blacklist/activities/d;-><init>(Lcom/avira/android/blacklist/activities/BLAddContactActivity;B)V

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/avira/android/blacklist/activities/d;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 97
    return-void
.end method
