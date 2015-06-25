.class public Lcom/facebook/ce;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final a:Lcom/facebook/cm;

.field private b:Lcom/facebook/cr;

.field private c:I

.field private d:Lcom/facebook/cn;

.field private e:Z

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/facebook/cq;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private final j:Ljava/lang/String;

.field private final k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 1902
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1891
    sget-object v0, Lcom/facebook/cr;->SSO_WITH_FALLBACK:Lcom/facebook/cr;

    iput-object v0, p0, Lcom/facebook/ce;->b:Lcom/facebook/cr;

    .line 1892
    const v0, 0xface

    iput v0, p0, Lcom/facebook/ce;->c:I

    .line 1894
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ce;->e:Z

    .line 1895
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ce;->f:Ljava/util/List;

    .line 1896
    sget-object v0, Lcom/facebook/cq;->FRIENDS:Lcom/facebook/cq;

    iput-object v0, p0, Lcom/facebook/ce;->g:Lcom/facebook/cq;

    .line 1899
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ce;->j:Ljava/lang/String;

    .line 1900
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/ce;->k:Ljava/util/Map;

    .line 1903
    new-instance v0, Lcom/facebook/cf;

    invoke-direct {v0, p0, p1}, Lcom/facebook/cf;-><init>(Lcom/facebook/ce;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/facebook/ce;->a:Lcom/facebook/cm;

    .line 1914
    return-void
.end method

.method constructor <init>(Landroid/support/v4/app/Fragment;)V
    .locals 1

    .prologue
    .line 1916
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1891
    sget-object v0, Lcom/facebook/cr;->SSO_WITH_FALLBACK:Lcom/facebook/cr;

    iput-object v0, p0, Lcom/facebook/ce;->b:Lcom/facebook/cr;

    .line 1892
    const v0, 0xface

    iput v0, p0, Lcom/facebook/ce;->c:I

    .line 1894
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ce;->e:Z

    .line 1895
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ce;->f:Ljava/util/List;

    .line 1896
    sget-object v0, Lcom/facebook/cq;->FRIENDS:Lcom/facebook/cq;

    iput-object v0, p0, Lcom/facebook/ce;->g:Lcom/facebook/cq;

    .line 1899
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ce;->j:Ljava/lang/String;

    .line 1900
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/ce;->k:Ljava/util/Map;

    .line 1917
    new-instance v0, Lcom/facebook/cg;

    invoke-direct {v0, p0, p1}, Lcom/facebook/cg;-><init>(Lcom/facebook/ce;Landroid/support/v4/app/Fragment;)V

    iput-object v0, p0, Lcom/facebook/ce;->a:Lcom/facebook/cm;

    .line 1928
    return-void
.end method

.method static synthetic a(Lcom/facebook/ce;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 1886
    iget-object v0, p0, Lcom/facebook/ce;->k:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/ce;)Z
    .locals 1

    .prologue
    .line 1886
    iget-boolean v0, p0, Lcom/facebook/ce;->e:Z

    return v0
.end method

.method static synthetic c(Lcom/facebook/ce;)Lcom/facebook/cr;
    .locals 1

    .prologue
    .line 1886
    iget-object v0, p0, Lcom/facebook/ce;->b:Lcom/facebook/cr;

    return-object v0
.end method

.method static synthetic d(Lcom/facebook/ce;)I
    .locals 1

    .prologue
    .line 1886
    iget v0, p0, Lcom/facebook/ce;->c:I

    return v0
.end method

.method static synthetic e(Lcom/facebook/ce;)Ljava/util/List;
    .locals 1

    .prologue
    .line 1886
    iget-object v0, p0, Lcom/facebook/ce;->f:Ljava/util/List;

    return-object v0
.end method

.method static synthetic f(Lcom/facebook/ce;)Lcom/facebook/cq;
    .locals 1

    .prologue
    .line 1886
    iget-object v0, p0, Lcom/facebook/ce;->g:Lcom/facebook/cq;

    return-object v0
.end method

.method static synthetic g(Lcom/facebook/ce;)Lcom/facebook/cm;
    .locals 1

    .prologue
    .line 1886
    iget-object v0, p0, Lcom/facebook/ce;->a:Lcom/facebook/cm;

    return-object v0
.end method


# virtual methods
.method a(Lcom/facebook/cn;)Lcom/facebook/ce;
    .locals 0

    .prologue
    .line 1972
    iput-object p1, p0, Lcom/facebook/ce;->d:Lcom/facebook/cn;

    .line 1973
    return-object p0
.end method

.method a(Lcom/facebook/cq;)Lcom/facebook/ce;
    .locals 0

    .prologue
    .line 2018
    if-eqz p1, :cond_0

    .line 2019
    iput-object p1, p0, Lcom/facebook/ce;->g:Lcom/facebook/cq;

    .line 2021
    :cond_0
    return-object p0
.end method

.method a(Lcom/facebook/cr;)Lcom/facebook/ce;
    .locals 0

    .prologue
    .line 1981
    if-eqz p1, :cond_0

    .line 1982
    iput-object p1, p0, Lcom/facebook/ce;->b:Lcom/facebook/cr;

    .line 1984
    :cond_0
    return-object p0
.end method

.method a(Ljava/util/List;)Lcom/facebook/ce;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/facebook/ce;"
        }
    .end annotation

    .prologue
    .line 2003
    if-eqz p1, :cond_0

    .line 2004
    iput-object p1, p0, Lcom/facebook/ce;->f:Ljava/util/List;

    .line 2006
    :cond_0
    return-object p0
.end method

.method final a()Lcom/facebook/cn;
    .locals 1

    .prologue
    .line 1977
    iget-object v0, p0, Lcom/facebook/ce;->d:Lcom/facebook/cn;

    return-object v0
.end method

.method final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 2037
    iput-object p1, p0, Lcom/facebook/ce;->h:Ljava/lang/String;

    .line 2038
    return-void
.end method

.method final b()Lcom/facebook/cr;
    .locals 1

    .prologue
    .line 1988
    iget-object v0, p0, Lcom/facebook/ce;->b:Lcom/facebook/cr;

    return-object v0
.end method

.method final c()I
    .locals 1

    .prologue
    .line 1999
    iget v0, p0, Lcom/facebook/ce;->c:I

    return v0
.end method

.method final d()Ljava/util/List;
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
    .line 2014
    iget-object v0, p0, Lcom/facebook/ce;->f:Ljava/util/List;

    return-object v0
.end method

.method final e()Lcom/facebook/cm;
    .locals 1

    .prologue
    .line 2029
    iget-object v0, p0, Lcom/facebook/ce;->a:Lcom/facebook/cm;

    return-object v0
.end method

.method final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2049
    iget-object v0, p0, Lcom/facebook/ce;->j:Ljava/lang/String;

    return-object v0
.end method

.method final g()Lcom/facebook/y;
    .locals 10

    .prologue
    .line 2053
    new-instance v8, Lcom/facebook/ch;

    invoke-direct {v8, p0}, Lcom/facebook/ch;-><init>(Lcom/facebook/ce;)V

    .line 2064
    new-instance v0, Lcom/facebook/y;

    iget-object v1, p0, Lcom/facebook/ce;->b:Lcom/facebook/cr;

    iget v2, p0, Lcom/facebook/ce;->c:I

    iget-boolean v3, p0, Lcom/facebook/ce;->e:Z

    iget-object v4, p0, Lcom/facebook/ce;->f:Ljava/util/List;

    iget-object v5, p0, Lcom/facebook/ce;->g:Lcom/facebook/cq;

    iget-object v6, p0, Lcom/facebook/ce;->h:Ljava/lang/String;

    iget-object v7, p0, Lcom/facebook/ce;->i:Ljava/lang/String;

    iget-object v9, p0, Lcom/facebook/ce;->j:Ljava/lang/String;

    invoke-direct/range {v0 .. v9}, Lcom/facebook/y;-><init>(Lcom/facebook/cr;IZLjava/util/List;Lcom/facebook/cq;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ah;Ljava/lang/String;)V

    return-object v0
.end method
