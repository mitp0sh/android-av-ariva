.class abstract Landroid/support/v7/app/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final METADATA_UI_OPTIONS:Ljava/lang/String; = "android.support.UI_OPTIONS"

.field private static final TAG:Ljava/lang/String; = "ActionBarActivityDelegate"

.field static final UIOPTION_SPLIT_ACTION_BAR_WHEN_NARROW:Ljava/lang/String; = "splitActionBarWhenNarrow"


# instance fields
.field final a:Landroid/support/v7/app/ActionBarActivity;

.field b:Z

.field c:Z

.field private d:Landroid/support/v7/app/ActionBar;

.field private e:Landroid/view/MenuInflater;


# direct methods
.method constructor <init>(Landroid/support/v7/app/ActionBarActivity;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Landroid/support/v7/app/d;->a:Landroid/support/v7/app/ActionBarActivity;

    .line 67
    return-void
.end method


# virtual methods
.method abstract a()Landroid/support/v7/app/ActionBar;
.end method

.method abstract a(I)V
.end method

.method a(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 98
    iget-object v0, p0, Landroid/support/v7/app/d;->a:Landroid/support/v7/app/ActionBarActivity;

    sget-object v1, Landroid/support/v7/appcompat/R$styleable;->ActionBarWindow:[I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBarActivity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 100
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 101
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 102
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You need to use a Theme.AppCompat theme (or descendant) with this activity."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_0
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/v7/app/d;->b:Z

    .line 107
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/v7/app/d;->c:Z

    .line 108
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 109
    return-void
.end method

.method abstract a(Landroid/view/View;)V
.end method

.method abstract a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.end method

.method abstract a(Ljava/lang/CharSequence;)V
.end method

.method abstract a(ILandroid/view/Menu;)Z
.end method

.method abstract a(ILandroid/view/MenuItem;)Z
.end method

.method abstract a(ILandroid/view/View;Landroid/view/Menu;)Z
.end method

.method final b()Landroid/support/v7/app/ActionBar;
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Landroid/support/v7/app/d;->b:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/app/d;->c:Z

    if-eqz v0, :cond_2

    .line 75
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/d;->d:Landroid/support/v7/app/ActionBar;

    if-nez v0, :cond_1

    .line 76
    invoke-virtual {p0}, Landroid/support/v7/app/d;->a()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/d;->d:Landroid/support/v7/app/ActionBar;

    .line 82
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/support/v7/app/d;->d:Landroid/support/v7/app/ActionBar;

    return-object v0

    .line 80
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/app/d;->d:Landroid/support/v7/app/ActionBar;

    goto :goto_0
.end method

.method abstract b(I)Landroid/view/View;
.end method

.method abstract b(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.end method

.method final c()Landroid/view/MenuInflater;
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Landroid/support/v7/app/d;->e:Landroid/view/MenuInflater;

    if-nez v0, :cond_0

    .line 87
    invoke-virtual {p0}, Landroid/support/v7/app/d;->b()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 88
    if-eqz v0, :cond_1

    .line 89
    new-instance v1, Landroid/support/v7/internal/view/c;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->b()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/support/v7/internal/view/c;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v7/app/d;->e:Landroid/view/MenuInflater;

    .line 94
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/v7/app/d;->e:Landroid/view/MenuInflater;

    return-object v0

    .line 91
    :cond_1
    new-instance v0, Landroid/support/v7/internal/view/c;

    iget-object v1, p0, Landroid/support/v7/app/d;->a:Landroid/support/v7/app/ActionBarActivity;

    invoke-direct {v0, v1}, Landroid/support/v7/internal/view/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/app/d;->e:Landroid/view/MenuInflater;

    goto :goto_0
.end method

.method abstract d()V
.end method

.method abstract e()V
.end method

.method abstract f()V
.end method

.method abstract g()V
.end method

.method abstract h()Z
.end method

.method abstract i()Landroid/support/v4/app/ActionBarDrawerToggle$Delegate;
.end method

.method protected final j()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 156
    :try_start_0
    iget-object v1, p0, Landroid/support/v7/app/d;->a:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v1}, Landroid/support/v7/app/ActionBarActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 157
    iget-object v2, p0, Landroid/support/v7/app/d;->a:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v2}, Landroid/support/v7/app/ActionBarActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 161
    iget-object v2, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    .line 162
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "android.support.UI_OPTIONS"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 168
    :cond_0
    :goto_0
    return-object v0

    .line 166
    :catch_0
    move-exception v1

    const-string v1, "ActionBarActivityDelegate"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getUiOptionsFromMetadata: Activity \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/support/v7/app/d;->a:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' not in manifest"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected final k()Landroid/content/Context;
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Landroid/support/v7/app/d;->a:Landroid/support/v7/app/ActionBarActivity;

    .line 176
    invoke-virtual {p0}, Landroid/support/v7/app/d;->b()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    .line 177
    if-eqz v1, :cond_0

    .line 178
    invoke-virtual {v1}, Landroid/support/v7/app/ActionBar;->b()Landroid/content/Context;

    move-result-object v0

    .line 180
    :cond_0
    return-object v0
.end method
