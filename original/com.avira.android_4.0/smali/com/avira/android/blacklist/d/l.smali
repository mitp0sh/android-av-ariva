.class public final Lcom/avira/android/blacklist/d/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static c:Lcom/avira/android/blacklist/d/l;


# instance fields
.field private final a:Landroid/database/sqlite/SQLiteDatabase;

.field private final b:Lcom/avira/android/database/h;

.field private final d:Lcom/avira/android/blacklist/d/q;

.field private final e:Lcom/avira/android/blacklist/d/p;

.field private final f:Lcom/avira/android/blacklist/d/n;

.field private final g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/avira/android/blacklist/d/r;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-static {}, Lcom/avira/android/database/h;->e()Lcom/avira/android/database/h;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/blacklist/d/l;->b:Lcom/avira/android/database/h;

    .line 54
    iget-object v0, p0, Lcom/avira/android/blacklist/d/l;->b:Lcom/avira/android/database/h;

    invoke-virtual {v0}, Lcom/avira/android/database/h;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/blacklist/d/l;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/avira/android/blacklist/d/l;->g:Ljava/util/HashMap;

    .line 56
    new-instance v0, Lcom/avira/android/blacklist/d/q;

    invoke-direct {v0, p0}, Lcom/avira/android/blacklist/d/q;-><init>(Lcom/avira/android/blacklist/d/l;)V

    iput-object v0, p0, Lcom/avira/android/blacklist/d/l;->d:Lcom/avira/android/blacklist/d/q;

    .line 57
    new-instance v0, Lcom/avira/android/blacklist/d/p;

    invoke-direct {v0, p0}, Lcom/avira/android/blacklist/d/p;-><init>(Lcom/avira/android/blacklist/d/l;)V

    iput-object v0, p0, Lcom/avira/android/blacklist/d/l;->e:Lcom/avira/android/blacklist/d/p;

    .line 58
    new-instance v0, Lcom/avira/android/blacklist/d/n;

    invoke-direct {v0, p0}, Lcom/avira/android/blacklist/d/n;-><init>(Lcom/avira/android/blacklist/d/l;)V

    iput-object v0, p0, Lcom/avira/android/blacklist/d/l;->f:Lcom/avira/android/blacklist/d/n;

    .line 59
    return-void
.end method

.method static synthetic a(Lcom/avira/android/blacklist/d/l;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/avira/android/blacklist/d/l;->a:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method public static a()Lcom/avira/android/blacklist/d/l;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lcom/avira/android/blacklist/d/l;->c:Lcom/avira/android/blacklist/d/l;

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Lcom/avira/android/blacklist/d/l;

    invoke-direct {v0}, Lcom/avira/android/blacklist/d/l;-><init>()V

    sput-object v0, Lcom/avira/android/blacklist/d/l;->c:Lcom/avira/android/blacklist/d/l;

    .line 107
    :cond_0
    sget-object v0, Lcom/avira/android/blacklist/d/l;->c:Lcom/avira/android/blacklist/d/l;

    return-object v0
.end method

.method static synthetic a(Lcom/avira/android/blacklist/d/l;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 31
    sget-boolean v0, Lcom/avira/android/debug/f;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/avira/android/blacklist/d/l;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/blacklist/d/r;

    invoke-interface {v0, p1}, Lcom/avira/android/blacklist/d/r;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/avira/android/blacklist/d/l;)Lcom/avira/android/blacklist/d/p;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/avira/android/blacklist/d/l;->e:Lcom/avira/android/blacklist/d/p;

    return-object v0
.end method

.method static synthetic c(Lcom/avira/android/blacklist/d/l;)Lcom/avira/android/database/h;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/avira/android/blacklist/d/l;->b:Lcom/avira/android/database/h;

    return-object v0
.end method

.method static synthetic d(Lcom/avira/android/blacklist/d/l;)Lcom/avira/android/blacklist/d/n;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/avira/android/blacklist/d/l;->f:Lcom/avira/android/blacklist/d/n;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/avira/android/blacklist/d/r;)V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/avira/android/blacklist/d/l;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 64
    if-nez v0, :cond_0

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 67
    iget-object v1, p0, Lcom/avira/android/blacklist/d/l;->g:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    return-void
.end method

.method public final b()Lcom/avira/android/blacklist/d/q;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/avira/android/blacklist/d/l;->d:Lcom/avira/android/blacklist/d/q;

    return-object v0
.end method

.method public final b(Ljava/lang/String;Lcom/avira/android/blacklist/d/r;)V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/avira/android/blacklist/d/l;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 76
    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 79
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/avira/android/blacklist/d/l;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    :cond_0
    return-void
.end method

.method public final c()Lcom/avira/android/blacklist/d/p;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/avira/android/blacklist/d/l;->e:Lcom/avira/android/blacklist/d/p;

    return-object v0
.end method

.method public final d()Lcom/avira/android/blacklist/d/n;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/avira/android/blacklist/d/l;->f:Lcom/avira/android/blacklist/d/n;

    return-object v0
.end method
