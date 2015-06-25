.class public Landroid/support/v4/content/d;
.super Landroid/support/v4/content/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/content/a",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final f:Landroid/support/v4/content/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/content/l",
            "<",
            "Landroid/database/Cursor;",
            ">.android/support/v4/content/m;"
        }
    .end annotation
.end field

.field g:Landroid/net/Uri;

.field h:[Ljava/lang/String;

.field i:Ljava/lang/String;

.field j:[Ljava/lang/String;

.field k:Ljava/lang/String;

.field l:Landroid/database/Cursor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 99
    invoke-direct {p0, p1}, Landroid/support/v4/content/a;-><init>(Landroid/content/Context;)V

    .line 100
    new-instance v0, Landroid/support/v4/content/m;

    invoke-direct {v0, p0}, Landroid/support/v4/content/m;-><init>(Landroid/support/v4/content/l;)V

    iput-object v0, p0, Landroid/support/v4/content/d;->f:Landroid/support/v4/content/m;

    .line 101
    iput-object p2, p0, Landroid/support/v4/content/d;->g:Landroid/net/Uri;

    .line 102
    iput-object p3, p0, Landroid/support/v4/content/d;->h:[Ljava/lang/String;

    .line 103
    iput-object p4, p0, Landroid/support/v4/content/d;->i:Ljava/lang/String;

    .line 104
    iput-object p5, p0, Landroid/support/v4/content/d;->j:[Ljava/lang/String;

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/content/d;->k:Ljava/lang/String;

    .line 106
    return-void
.end method

.method private a(Landroid/database/Cursor;)V
    .locals 2

    .prologue
    .line 62
    iget-boolean v0, p0, Landroid/support/v4/content/l;->r:Z

    if-eqz v0, :cond_1

    .line 64
    if-eqz p1, :cond_0

    .line 65
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    iget-object v0, p0, Landroid/support/v4/content/d;->l:Landroid/database/Cursor;

    .line 70
    iput-object p1, p0, Landroid/support/v4/content/d;->l:Landroid/database/Cursor;

    .line 72
    iget-boolean v1, p0, Landroid/support/v4/content/l;->p:Z

    if-eqz v1, :cond_2

    .line 73
    invoke-super {p0, p1}, Landroid/support/v4/content/a;->b(Ljava/lang/Object;)V

    .line 76
    :cond_2
    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 77
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 35
    check-cast p1, Landroid/database/Cursor;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 196
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v4/content/a;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 197
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mUri="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/content/d;->g:Landroid/net/Uri;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 198
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mProjection="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Landroid/support/v4/content/d;->h:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSelection="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/content/d;->i:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 201
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSelectionArgs="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Landroid/support/v4/content/d;->j:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSortOrder="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/content/d;->k:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 204
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCursor="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/content/d;->l:Landroid/database/Cursor;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 205
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mContentChanged="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/content/d;->s:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 206
    return-void
.end method

.method public final synthetic b(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 35
    check-cast p1, Landroid/database/Cursor;

    invoke-direct {p0, p1}, Landroid/support/v4/content/d;->a(Landroid/database/Cursor;)V

    return-void
.end method

.method public final synthetic d()Ljava/lang/Object;
    .locals 6

    .prologue
    .line 35
    iget-object v0, p0, Landroid/support/v4/content/l;->o:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/content/d;->g:Landroid/net/Uri;

    iget-object v2, p0, Landroid/support/v4/content/d;->h:[Ljava/lang/String;

    iget-object v3, p0, Landroid/support/v4/content/d;->i:Ljava/lang/String;

    iget-object v4, p0, Landroid/support/v4/content/d;->j:[Ljava/lang/String;

    iget-object v5, p0, Landroid/support/v4/content/d;->k:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    iget-object v1, p0, Landroid/support/v4/content/d;->f:Landroid/support/v4/content/m;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-object v0
.end method

.method protected final e()V
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Landroid/support/v4/content/d;->l:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Landroid/support/v4/content/d;->l:Landroid/database/Cursor;

    invoke-direct {p0, v0}, Landroid/support/v4/content/d;->a(Landroid/database/Cursor;)V

    .line 120
    :cond_0
    iget-boolean v0, p0, Landroid/support/v4/content/l;->s:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v4/content/l;->s:Z

    iget-boolean v1, p0, Landroid/support/v4/content/l;->t:Z

    or-int/2addr v1, v0

    iput-boolean v1, p0, Landroid/support/v4/content/l;->t:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/content/d;->l:Landroid/database/Cursor;

    if-nez v0, :cond_2

    .line 121
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/content/d;->j()V

    .line 123
    :cond_2
    return-void
.end method

.method protected final f()V
    .locals 0

    .prologue
    .line 131
    invoke-virtual {p0}, Landroid/support/v4/content/d;->b()Z

    .line 132
    return-void
.end method

.method protected final g()V
    .locals 1

    .prologue
    .line 143
    invoke-super {p0}, Landroid/support/v4/content/a;->g()V

    .line 146
    invoke-virtual {p0}, Landroid/support/v4/content/d;->b()Z

    .line 148
    iget-object v0, p0, Landroid/support/v4/content/d;->l:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/content/d;->l:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 149
    iget-object v0, p0, Landroid/support/v4/content/d;->l:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 151
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/content/d;->l:Landroid/database/Cursor;

    .line 152
    return-void
.end method
