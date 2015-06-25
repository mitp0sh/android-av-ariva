.class public final Lcom/facebook/b/bv;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final LOG_TAG_BASE:Ljava/lang/String; = "FacebookSDK."

.field private static final stringsToReplace:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lcom/facebook/av;

.field private final b:Ljava/lang/String;

.field private c:Ljava/lang/StringBuilder;

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/facebook/b/bv;->stringsToReplace:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/av;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x3

    iput v0, p0, Lcom/facebook/b/bv;->d:I

    .line 87
    const-string v0, "tag"

    invoke-static {p2, v0}, Lcom/facebook/b/cp;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iput-object p1, p0, Lcom/facebook/b/bv;->a:Lcom/facebook/av;

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FacebookSDK."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/b/bv;->b:Ljava/lang/String;

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/facebook/b/bv;->c:Ljava/lang/StringBuilder;

    .line 92
    return-void
.end method

.method public static a(Lcom/facebook/av;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 64
    invoke-static {p0}, Lcom/facebook/cu;->a(Lcom/facebook/av;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    invoke-static {p3}, Lcom/facebook/b/bv;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 66
    const-string v1, "FacebookSDK."

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FacebookSDK."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 69
    :cond_0
    invoke-static {p1, p2, v0}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 73
    sget-object v0, Lcom/facebook/av;->DEVELOPER_ERRORS:Lcom/facebook/av;

    if-ne p0, v0, :cond_1

    .line 74
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 77
    :cond_1
    return-void
.end method

.method public static a(Lcom/facebook/av;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x3

    invoke-static {p0, v0, p1, p2}, Lcom/facebook/b/bv;->a(Lcom/facebook/av;ILjava/lang/String;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public static varargs a(Lcom/facebook/av;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 57
    invoke-static {p0}, Lcom/facebook/cu;->a(Lcom/facebook/av;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 59
    const/4 v1, 0x3

    invoke-static {p0, v1, p1, v0}, Lcom/facebook/b/bv;->a(Lcom/facebook/av;ILjava/lang/String;Ljava/lang/String;)V

    .line 61
    :cond_0
    return-void
.end method

.method public static declared-synchronized a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 47
    const-class v1, Lcom/facebook/b/bv;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/facebook/av;->INCLUDE_ACCESS_TOKENS:Lcom/facebook/av;

    invoke-static {v0}, Lcom/facebook/cu;->a(Lcom/facebook/av;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    const-string v0, "ACCESS_TOKEN_REMOVED"

    invoke-static {p0, v0}, Lcom/facebook/b/bv;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    :cond_0
    monitor-exit v1

    return-void

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 43
    const-class v1, Lcom/facebook/b/bv;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/facebook/b/bv;->stringsToReplace:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    monitor-exit v1

    return-void

    .line 43
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized c(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 80
    const-class v2, Lcom/facebook/b/bv;

    monitor-enter v2

    :try_start_0
    sget-object v0, Lcom/facebook/b/bv;->stringsToReplace:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 81
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p0

    goto :goto_0

    .line 83
    :cond_0
    monitor-exit v2

    return-object p0

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 110
    iget-object v0, p0, Lcom/facebook/b/bv;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/b/bv;->a:Lcom/facebook/av;

    iget v2, p0, Lcom/facebook/b/bv;->d:I

    iget-object v3, p0, Lcom/facebook/b/bv;->b:Ljava/lang/String;

    invoke-static {v1, v2, v3, v0}, Lcom/facebook/b/bv;->a(Lcom/facebook/av;ILjava/lang/String;Ljava/lang/String;)V

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/facebook/b/bv;->c:Ljava/lang/StringBuilder;

    .line 112
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 138
    const-string v0, "  %s:\t%s\n"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    iget-object v2, p0, Lcom/facebook/b/bv;->a:Lcom/facebook/av;

    invoke-static {v2}, Lcom/facebook/cu;->a(Lcom/facebook/av;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/facebook/b/bv;->c:Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/facebook/b/bv;->a:Lcom/facebook/av;

    invoke-static {v0}, Lcom/facebook/cu;->a(Lcom/facebook/av;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/facebook/b/bv;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    :cond_0
    return-void
.end method
