.class public final Lcom/facebook/b/ch;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/facebook/by;

.field private final b:Lcom/facebook/cn;

.field private final c:Landroid/content/BroadcastReceiver;

.field private final d:Landroid/support/v4/content/o;

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/cn;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-boolean v1, p0, Lcom/facebook/b/ch;->e:Z

    .line 73
    new-instance v0, Lcom/facebook/b/cj;

    invoke-direct {v0, p0, p2}, Lcom/facebook/b/cj;-><init>(Lcom/facebook/b/ch;Lcom/facebook/cn;)V

    iput-object v0, p0, Lcom/facebook/b/ch;->b:Lcom/facebook/cn;

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/b/ch;->a:Lcom/facebook/by;

    .line 75
    new-instance v0, Lcom/facebook/b/ci;

    invoke-direct {v0, p0, v1}, Lcom/facebook/b/ci;-><init>(Lcom/facebook/b/ch;B)V

    iput-object v0, p0, Lcom/facebook/b/ch;->c:Landroid/content/BroadcastReceiver;

    .line 76
    invoke-static {p1}, Landroid/support/v4/content/o;->a(Landroid/content/Context;)Landroid/support/v4/content/o;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/b/ch;->d:Landroid/support/v4/content/o;

    .line 78
    return-void
.end method

.method static synthetic a(Lcom/facebook/b/ch;)Lcom/facebook/cn;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/facebook/b/ch;->b:Lcom/facebook/cn;

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/b/ch;)Lcom/facebook/by;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/facebook/b/ch;->a:Lcom/facebook/by;

    return-object v0
.end method

.method private f()V
    .locals 3

    .prologue
    .line 195
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 196
    const-string v1, "com.facebook.sdk.ACTIVE_SESSION_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 197
    const-string v1, "com.facebook.sdk.ACTIVE_SESSION_UNSET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 201
    iget-object v1, p0, Lcom/facebook/b/ch;->d:Landroid/support/v4/content/o;

    iget-object v2, p0, Lcom/facebook/b/ch;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/o;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 202
    return-void
.end method


# virtual methods
.method public final a()Lcom/facebook/by;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/facebook/b/ch;->a:Lcom/facebook/by;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/facebook/by;->h()Lcom/facebook/by;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/b/ch;->a:Lcom/facebook/by;

    goto :goto_0
.end method

.method public final a(Lcom/facebook/by;)V
    .locals 2

    .prologue
    .line 112
    if-nez p1, :cond_1

    .line 113
    iget-object v0, p0, Lcom/facebook/b/ch;->a:Lcom/facebook/by;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/facebook/b/ch;->a:Lcom/facebook/by;

    iget-object v1, p0, Lcom/facebook/b/ch;->b:Lcom/facebook/cn;

    invoke-virtual {v0, v1}, Lcom/facebook/by;->b(Lcom/facebook/cn;)V

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/b/ch;->a:Lcom/facebook/by;

    .line 118
    invoke-direct {p0}, Lcom/facebook/b/ch;->f()V

    .line 119
    invoke-virtual {p0}, Lcom/facebook/b/ch;->a()Lcom/facebook/by;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/facebook/b/ch;->a()Lcom/facebook/by;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/b/ch;->b:Lcom/facebook/cn;

    invoke-virtual {v0, v1}, Lcom/facebook/by;->a(Lcom/facebook/cn;)V

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/facebook/b/ch;->a:Lcom/facebook/by;

    if-nez v0, :cond_3

    .line 127
    invoke-static {}, Lcom/facebook/by;->h()Lcom/facebook/by;

    move-result-object v0

    .line 128
    if-eqz v0, :cond_2

    .line 129
    iget-object v1, p0, Lcom/facebook/b/ch;->b:Lcom/facebook/cn;

    invoke-virtual {v0, v1}, Lcom/facebook/by;->b(Lcom/facebook/cn;)V

    .line 131
    :cond_2
    iget-object v0, p0, Lcom/facebook/b/ch;->d:Landroid/support/v4/content/o;

    iget-object v1, p0, Lcom/facebook/b/ch;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/o;->a(Landroid/content/BroadcastReceiver;)V

    .line 138
    :goto_1
    iput-object p1, p0, Lcom/facebook/b/ch;->a:Lcom/facebook/by;

    .line 139
    iget-object v0, p0, Lcom/facebook/b/ch;->a:Lcom/facebook/by;

    iget-object v1, p0, Lcom/facebook/b/ch;->b:Lcom/facebook/cn;

    invoke-virtual {v0, v1}, Lcom/facebook/by;->a(Lcom/facebook/cn;)V

    goto :goto_0

    .line 136
    :cond_3
    iget-object v0, p0, Lcom/facebook/b/ch;->a:Lcom/facebook/by;

    iget-object v1, p0, Lcom/facebook/b/ch;->b:Lcom/facebook/cn;

    invoke-virtual {v0, v1}, Lcom/facebook/by;->b(Lcom/facebook/cn;)V

    goto :goto_1
.end method

.method public final b()Lcom/facebook/by;
    .locals 2

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/facebook/b/ch;->a()Lcom/facebook/by;

    move-result-object v0

    .line 100
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/by;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 147
    iget-boolean v0, p0, Lcom/facebook/b/ch;->e:Z

    if-eqz v0, :cond_0

    .line 158
    :goto_0
    return-void

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/facebook/b/ch;->a:Lcom/facebook/by;

    if-nez v0, :cond_1

    .line 151
    invoke-direct {p0}, Lcom/facebook/b/ch;->f()V

    .line 154
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/b/ch;->a()Lcom/facebook/by;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 155
    invoke-virtual {p0}, Lcom/facebook/b/ch;->a()Lcom/facebook/by;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/b/ch;->b:Lcom/facebook/cn;

    invoke-virtual {v0, v1}, Lcom/facebook/by;->a(Lcom/facebook/cn;)V

    .line 157
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/b/ch;->e:Z

    goto :goto_0
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/facebook/b/ch;->e:Z

    if-nez v0, :cond_0

    .line 174
    :goto_0
    return-void

    .line 168
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/b/ch;->a()Lcom/facebook/by;

    move-result-object v0

    .line 169
    if-eqz v0, :cond_1

    .line 170
    iget-object v1, p0, Lcom/facebook/b/ch;->b:Lcom/facebook/cn;

    invoke-virtual {v0, v1}, Lcom/facebook/by;->b(Lcom/facebook/cn;)V

    .line 172
    :cond_1
    iget-object v0, p0, Lcom/facebook/b/ch;->d:Landroid/support/v4/content/o;

    iget-object v1, p0, Lcom/facebook/b/ch;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/o;->a(Landroid/content/BroadcastReceiver;)V

    .line 173
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/b/ch;->e:Z

    goto :goto_0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 182
    iget-boolean v0, p0, Lcom/facebook/b/ch;->e:Z

    return v0
.end method
