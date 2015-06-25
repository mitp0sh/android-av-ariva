.class final Lcom/facebook/widget/r;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/facebook/cq;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/facebook/b/cg;

.field private d:Lcom/facebook/widget/u;

.field private e:Lcom/facebook/cr;

.field private f:Lcom/facebook/cn;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    sget-object v0, Lcom/facebook/cq;->FRIENDS:Lcom/facebook/cq;

    iput-object v0, p0, Lcom/facebook/widget/r;->a:Lcom/facebook/cq;

    .line 102
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/widget/r;->b:Ljava/util/List;

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/widget/r;->c:Lcom/facebook/b/cg;

    .line 105
    sget-object v0, Lcom/facebook/cr;->SSO_WITH_FALLBACK:Lcom/facebook/cr;

    iput-object v0, p0, Lcom/facebook/widget/r;->e:Lcom/facebook/cr;

    return-void
.end method

.method static synthetic a(Lcom/facebook/widget/r;)Lcom/facebook/cq;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/facebook/widget/r;->a:Lcom/facebook/cq;

    return-object v0
.end method

.method private static a(Ljava/util/List;Lcom/facebook/b/cg;Lcom/facebook/by;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/b/cg;",
            "Lcom/facebook/by;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 148
    sget-object v0, Lcom/facebook/b/cg;->PUBLISH:Lcom/facebook/b/cg;

    invoke-virtual {v0, p1}, Lcom/facebook/b/cg;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    invoke-static {p0}, Lcom/facebook/b/cl;->a(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Permissions for publish actions cannot be null or empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/facebook/by;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 154
    invoke-virtual {p2}, Lcom/facebook/by;->f()Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/b/cl;->a(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 155
    # getter for: Lcom/facebook/widget/LoginButton;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/facebook/widget/LoginButton;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Cannot set additional permissions when session is already open."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    const/4 v0, 0x0

    .line 159
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lcom/facebook/widget/r;)Ljava/util/List;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/facebook/widget/r;->b:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/facebook/widget/r;)Lcom/facebook/cr;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/facebook/widget/r;->e:Lcom/facebook/cr;

    return-object v0
.end method

.method static synthetic d(Lcom/facebook/widget/r;)Lcom/facebook/b/cg;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/facebook/widget/r;->c:Lcom/facebook/b/cg;

    return-object v0
.end method

.method static synthetic e(Lcom/facebook/widget/r;)Lcom/facebook/cn;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/facebook/widget/r;->f:Lcom/facebook/cn;

    return-object v0
.end method

.method static synthetic f(Lcom/facebook/widget/r;)Lcom/facebook/widget/u;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/facebook/widget/r;->d:Lcom/facebook/widget/u;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/facebook/widget/u;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/facebook/widget/r;->d:Lcom/facebook/widget/u;

    return-object v0
.end method

.method public final a(Lcom/facebook/cn;)V
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Lcom/facebook/widget/r;->f:Lcom/facebook/cn;

    .line 181
    return-void
.end method

.method public final a(Lcom/facebook/cq;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/facebook/widget/r;->a:Lcom/facebook/cq;

    .line 118
    return-void
.end method

.method public final a(Lcom/facebook/cr;)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lcom/facebook/widget/r;->e:Lcom/facebook/cr;

    .line 173
    return-void
.end method

.method public final a(Lcom/facebook/widget/u;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/facebook/widget/r;->d:Lcom/facebook/widget/u;

    .line 110
    return-void
.end method

.method public final a(Ljava/util/List;Lcom/facebook/by;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/by;",
            ")V"
        }
    .end annotation

    .prologue
    .line 125
    sget-object v0, Lcom/facebook/b/cg;->PUBLISH:Lcom/facebook/b/cg;

    iget-object v1, p0, Lcom/facebook/widget/r;->c:Lcom/facebook/b/cg;

    invoke-virtual {v0, v1}, Lcom/facebook/b/cg;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot call setReadPermissions after setPublishPermissions has been called."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_0
    sget-object v0, Lcom/facebook/b/cg;->READ:Lcom/facebook/b/cg;

    invoke-static {p1, v0, p2}, Lcom/facebook/widget/r;->a(Ljava/util/List;Lcom/facebook/b/cg;Lcom/facebook/by;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    iput-object p1, p0, Lcom/facebook/widget/r;->b:Ljava/util/List;

    .line 131
    sget-object v0, Lcom/facebook/b/cg;->READ:Lcom/facebook/b/cg;

    iput-object v0, p0, Lcom/facebook/widget/r;->c:Lcom/facebook/b/cg;

    .line 133
    :cond_1
    return-void
.end method

.method public final b()Lcom/facebook/cq;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/facebook/widget/r;->a:Lcom/facebook/cq;

    return-object v0
.end method

.method public final b(Ljava/util/List;Lcom/facebook/by;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/by;",
            ")V"
        }
    .end annotation

    .prologue
    .line 136
    sget-object v0, Lcom/facebook/b/cg;->READ:Lcom/facebook/b/cg;

    iget-object v1, p0, Lcom/facebook/widget/r;->c:Lcom/facebook/b/cg;

    invoke-virtual {v0, v1}, Lcom/facebook/b/cg;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot call setPublishPermissions after setReadPermissions has been called."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_0
    sget-object v0, Lcom/facebook/b/cg;->PUBLISH:Lcom/facebook/b/cg;

    invoke-static {p1, v0, p2}, Lcom/facebook/widget/r;->a(Ljava/util/List;Lcom/facebook/b/cg;Lcom/facebook/by;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    iput-object p1, p0, Lcom/facebook/widget/r;->b:Ljava/util/List;

    .line 142
    sget-object v0, Lcom/facebook/b/cg;->PUBLISH:Lcom/facebook/b/cg;

    iput-object v0, p0, Lcom/facebook/widget/r;->c:Lcom/facebook/b/cg;

    .line 144
    :cond_1
    return-void
.end method

.method final c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 163
    iget-object v0, p0, Lcom/facebook/widget/r;->b:Ljava/util/List;

    return-object v0
.end method

.method public final d()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 167
    iput-object v0, p0, Lcom/facebook/widget/r;->b:Ljava/util/List;

    .line 168
    iput-object v0, p0, Lcom/facebook/widget/r;->c:Lcom/facebook/b/cg;

    .line 169
    return-void
.end method

.method public final e()Lcom/facebook/cr;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/facebook/widget/r;->e:Lcom/facebook/cr;

    return-object v0
.end method

.method public final f()Lcom/facebook/cn;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/facebook/widget/r;->f:Lcom/facebook/cn;

    return-object v0
.end method
