.class public final Lcom/avira/applock/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TYPE_SYSTEM_APP:I = 0x1

.field public static a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/avira/applock/b/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Landroid/graphics/drawable/Drawable;

.field private f:Z

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/avira/applock/b/b;

    invoke-direct {v0}, Lcom/avira/applock/b/b;-><init>()V

    sput-object v0, Lcom/avira/applock/b/a;->a:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Z)V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/avira/applock/b/a;->b:Ljava/lang/String;

    .line 55
    iput-object p3, p0, Lcom/avira/applock/b/a;->c:Ljava/lang/String;

    .line 56
    iget-object v1, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v1, p0, Lcom/avira/applock/b/a;->d:Ljava/lang/String;

    .line 57
    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/avira/applock/b/a;->e:Landroid/graphics/drawable/Drawable;

    .line 58
    iget v1, p2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/avira/applock/b/a;->f:Z

    .line 59
    iput-boolean p4, p0, Lcom/avira/applock/b/a;->g:Z

    .line 60
    return-void

    .line 58
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;Z)V
    .locals 1

    .prologue
    .line 48
    const-string v0, ""

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/avira/applock/b/a;-><init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Z)V

    .line 49
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/avira/applock/b/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 130
    iput-boolean p1, p0, Lcom/avira/applock/b/a;->g:Z

    .line 131
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/avira/applock/b/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/avira/applock/b/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/avira/applock/b/a;->e:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/avira/applock/b/a;->g:Z

    return v0
.end method
