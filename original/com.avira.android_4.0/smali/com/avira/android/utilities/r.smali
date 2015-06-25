.class public abstract Lcom/avira/android/utilities/r;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/avira/android/utilities/s;",
        ">",
        "Landroid/widget/ArrayAdapter",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "TT;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/avira/android/blacklist/c/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/avira/android/blacklist/c/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<TT;>;",
            "Lcom/avira/android/blacklist/c/b;",
            ")V"
        }
    .end annotation

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/avira/android/utilities/r;->a:Ljava/util/HashMap;

    .line 34
    iput-object p3, p0, Lcom/avira/android/utilities/r;->b:Lcom/avira/android/blacklist/c/b;

    .line 35
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/avira/android/utilities/r;->b:Lcom/avira/android/blacklist/c/b;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/avira/android/utilities/r;->b:Lcom/avira/android/blacklist/c/b;

    iget-object v1, p0, Lcom/avira/android/utilities/r;->a:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/avira/android/blacklist/c/b;->a(I)V

    .line 103
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/avira/android/utilities/s;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lcom/avira/android/utilities/r;->a:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/avira/android/utilities/s;->j()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    invoke-direct {p0}, Lcom/avira/android/utilities/r;->a()V

    .line 64
    return-void
.end method

.method public final a(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 73
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/utilities/s;

    .line 75
    iget-object v2, p0, Lcom/avira/android/utilities/r;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/avira/android/utilities/s;->j()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 77
    :cond_0
    invoke-direct {p0}, Lcom/avira/android/utilities/r;->a()V

    .line 78
    return-void
.end method

.method public final b()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 44
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/avira/android/utilities/r;->a:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final b(Lcom/avira/android/utilities/s;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Lcom/avira/android/utilities/r;->a:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/avira/android/utilities/s;->j()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    invoke-direct {p0}, Lcom/avira/android/utilities/r;->a()V

    .line 114
    return-void
.end method

.method public final b(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 87
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/utilities/s;

    .line 89
    iget-object v2, p0, Lcom/avira/android/utilities/r;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/avira/android/utilities/s;->j()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 91
    :cond_0
    invoke-direct {p0}, Lcom/avira/android/utilities/r;->a()V

    .line 92
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/avira/android/utilities/r;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 53
    return-void
.end method
