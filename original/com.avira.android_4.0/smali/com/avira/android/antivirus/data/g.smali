.class public final Lcom/avira/android/antivirus/data/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/avira/android/antivirus/data/a;
.implements Lcom/avira/android/antivirus/data/b;


# instance fields
.field private a:Lcom/avira/android/a/a;

.field private b:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/avira/android/a/a;)V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/avira/android/antivirus/data/g;->a:Lcom/avira/android/a/a;

    .line 17
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/avira/android/antivirus/data/g;->b:Ljava/util/HashSet;

    .line 18
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/avira/android/antivirus/data/g;->a:Lcom/avira/android/a/a;

    instance-of v0, v0, Lcom/avira/android/a/b;

    if-eqz v0, :cond_1

    .line 95
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/avira/android/antivirus/data/g;->a:Lcom/avira/android/a/a;

    instance-of v1, v1, Lcom/avira/android/a/b;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/avira/android/antivirus/data/g;->a:Lcom/avira/android/a/a;

    check-cast v0, Lcom/avira/android/a/b;

    invoke-virtual {v0}, Lcom/avira/android/a/b;->b()Ljava/lang/String;

    move-result-object v0

    .line 101
    :cond_0
    :goto_0
    return-object v0

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/avira/android/antivirus/data/g;->a:Lcom/avira/android/a/a;

    invoke-virtual {v0}, Lcom/avira/android/a/a;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/avira/android/antivirus/data/g;->b:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 81
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 57
    const/4 v0, 0x0

    .line 58
    iget-object v1, p0, Lcom/avira/android/antivirus/data/g;->a:Lcom/avira/android/a/a;

    instance-of v1, v1, Lcom/avira/android/a/b;

    if-eqz v1, :cond_0

    .line 60
    iget-object v0, p0, Lcom/avira/android/antivirus/data/g;->a:Lcom/avira/android/a/a;

    check-cast v0, Lcom/avira/android/a/b;

    invoke-virtual {v0}, Lcom/avira/android/a/b;->c()Ljava/lang/String;

    move-result-object v0

    .line 62
    :cond_0
    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/avira/android/antivirus/data/g;->a:Lcom/avira/android/a/a;

    invoke-virtual {v0}, Lcom/avira/android/a/a;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 74
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/avira/android/antivirus/data/g;->a:Lcom/avira/android/a/a;

    invoke-virtual {v1}, Lcom/avira/android/a/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lcom/avira/android/antivirus/data/g;->b:Ljava/util/HashSet;

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/avira/android/antivirus/data/g;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/avira/android/antivirus/data/g;->a()Ljava/lang/String;

    move-result-object v0

    .line 113
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/avira/android/antivirus/data/g;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final g()Lcom/avira/android/antivirus/data/c;
    .locals 1

    .prologue
    .line 120
    sget-object v0, Lcom/avira/android/antivirus/data/c;->ITEM:Lcom/avira/android/antivirus/data/c;

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/avira/android/antivirus/data/g;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
