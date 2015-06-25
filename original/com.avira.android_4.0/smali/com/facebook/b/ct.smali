.class final Lcom/facebook/b/ct;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/b/cs;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic a:Lcom/facebook/b/cq;

.field private final b:Ljava/lang/Runnable;

.field private c:Lcom/facebook/b/ct;

.field private d:Lcom/facebook/b/ct;

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 126
    const-class v0, Lcom/facebook/b/cq;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/facebook/b/ct;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/facebook/b/cq;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/facebook/b/ct;->a:Lcom/facebook/b/cq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput-object p2, p0, Lcom/facebook/b/ct;->b:Ljava/lang/Runnable;

    .line 134
    return-void
.end method


# virtual methods
.method final a(Lcom/facebook/b/ct;)Lcom/facebook/b/ct;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 191
    sget-boolean v1, Lcom/facebook/b/ct;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/facebook/b/ct;->c:Lcom/facebook/b/ct;

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 192
    :cond_0
    sget-boolean v1, Lcom/facebook/b/ct;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/facebook/b/ct;->d:Lcom/facebook/b/ct;

    if-nez v1, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 194
    :cond_1
    if-ne p1, p0, :cond_2

    .line 195
    iget-object v1, p0, Lcom/facebook/b/ct;->c:Lcom/facebook/b/ct;

    if-ne v1, p0, :cond_3

    move-object p1, v0

    .line 202
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/facebook/b/ct;->c:Lcom/facebook/b/ct;

    iget-object v2, p0, Lcom/facebook/b/ct;->d:Lcom/facebook/b/ct;

    iput-object v2, v1, Lcom/facebook/b/ct;->d:Lcom/facebook/b/ct;

    .line 203
    iget-object v1, p0, Lcom/facebook/b/ct;->d:Lcom/facebook/b/ct;

    iget-object v2, p0, Lcom/facebook/b/ct;->c:Lcom/facebook/b/ct;

    iput-object v2, v1, Lcom/facebook/b/ct;->c:Lcom/facebook/b/ct;

    .line 204
    iput-object v0, p0, Lcom/facebook/b/ct;->d:Lcom/facebook/b/ct;

    iput-object v0, p0, Lcom/facebook/b/ct;->c:Lcom/facebook/b/ct;

    .line 206
    return-object p1

    .line 198
    :cond_3
    iget-object p1, p0, Lcom/facebook/b/ct;->c:Lcom/facebook/b/ct;

    goto :goto_0
.end method

.method final a(Lcom/facebook/b/ct;Z)Lcom/facebook/b/ct;
    .locals 2

    .prologue
    .line 176
    sget-boolean v0, Lcom/facebook/b/ct;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/b/ct;->c:Lcom/facebook/b/ct;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 177
    :cond_0
    sget-boolean v0, Lcom/facebook/b/ct;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/b/ct;->d:Lcom/facebook/b/ct;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 179
    :cond_1
    if-nez p1, :cond_2

    .line 180
    iput-object p0, p0, Lcom/facebook/b/ct;->d:Lcom/facebook/b/ct;

    iput-object p0, p0, Lcom/facebook/b/ct;->c:Lcom/facebook/b/ct;

    move-object v0, p0

    .line 187
    :goto_0
    if-eqz p2, :cond_3

    :goto_1
    return-object p0

    .line 182
    :cond_2
    iput-object p1, p0, Lcom/facebook/b/ct;->c:Lcom/facebook/b/ct;

    .line 183
    iget-object v0, p1, Lcom/facebook/b/ct;->d:Lcom/facebook/b/ct;

    iput-object v0, p0, Lcom/facebook/b/ct;->d:Lcom/facebook/b/ct;

    .line 184
    iget-object v0, p0, Lcom/facebook/b/ct;->c:Lcom/facebook/b/ct;

    iget-object v1, p0, Lcom/facebook/b/ct;->d:Lcom/facebook/b/ct;

    iput-object p0, v1, Lcom/facebook/b/ct;->c:Lcom/facebook/b/ct;

    iput-object p0, v0, Lcom/facebook/b/ct;->d:Lcom/facebook/b/ct;

    move-object v0, p1

    goto :goto_0

    :cond_3
    move-object p0, v0

    .line 187
    goto :goto_1
.end method

.method public final a()Z
    .locals 3

    .prologue
    .line 138
    iget-object v0, p0, Lcom/facebook/b/ct;->a:Lcom/facebook/b/cq;

    invoke-static {v0}, Lcom/facebook/b/cq;->a(Lcom/facebook/b/cq;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 139
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/b/ct;->e:Z

    if-nez v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/facebook/b/ct;->a:Lcom/facebook/b/cq;

    iget-object v2, p0, Lcom/facebook/b/ct;->a:Lcom/facebook/b/cq;

    invoke-static {v2}, Lcom/facebook/b/cq;->b(Lcom/facebook/b/cq;)Lcom/facebook/b/ct;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/facebook/b/ct;->a(Lcom/facebook/b/ct;)Lcom/facebook/b/ct;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/facebook/b/cq;->b(Lcom/facebook/b/cq;Lcom/facebook/b/ct;)Lcom/facebook/b/ct;

    .line 141
    const/4 v0, 0x1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    :goto_0
    return v0

    .line 143
    :cond_0
    monitor-exit v1

    .line 145
    const/4 v0, 0x0

    goto :goto_0

    .line 143
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final b()V
    .locals 4

    .prologue
    .line 150
    iget-object v0, p0, Lcom/facebook/b/ct;->a:Lcom/facebook/b/cq;

    invoke-static {v0}, Lcom/facebook/b/cq;->a(Lcom/facebook/b/cq;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 151
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/b/ct;->e:Z

    if-nez v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/facebook/b/ct;->a:Lcom/facebook/b/cq;

    iget-object v2, p0, Lcom/facebook/b/ct;->a:Lcom/facebook/b/cq;

    invoke-static {v2}, Lcom/facebook/b/cq;->b(Lcom/facebook/b/cq;)Lcom/facebook/b/ct;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/facebook/b/ct;->a(Lcom/facebook/b/ct;)Lcom/facebook/b/ct;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/facebook/b/cq;->b(Lcom/facebook/b/cq;Lcom/facebook/b/ct;)Lcom/facebook/b/ct;

    .line 153
    iget-object v0, p0, Lcom/facebook/b/ct;->a:Lcom/facebook/b/cq;

    iget-object v2, p0, Lcom/facebook/b/ct;->a:Lcom/facebook/b/cq;

    invoke-static {v2}, Lcom/facebook/b/cq;->b(Lcom/facebook/b/cq;)Lcom/facebook/b/ct;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/facebook/b/ct;->a(Lcom/facebook/b/ct;Z)Lcom/facebook/b/ct;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/facebook/b/cq;->b(Lcom/facebook/b/cq;Lcom/facebook/b/ct;)Lcom/facebook/b/ct;

    .line 155
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method final c()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/facebook/b/ct;->b:Ljava/lang/Runnable;

    return-object v0
.end method

.method final d()V
    .locals 1

    .prologue
    .line 172
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/b/ct;->e:Z

    .line 173
    return-void
.end method
