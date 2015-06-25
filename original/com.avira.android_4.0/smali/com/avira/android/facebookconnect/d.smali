.class public Lcom/avira/android/facebookconnect/d;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# static fields
.field private static final READ_PERMISSIONS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static a:Ljava/lang/String;


# instance fields
.field private b:Lcom/avira/android/facebookconnect/g;

.field private c:Lcom/facebook/cy;

.field private d:Lcom/facebook/cn;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 22
    const-string v0, "FacebookConnectActivity"

    sput-object v0, Lcom/avira/android/facebookconnect/d;->a:Ljava/lang/String;

    .line 24
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "email"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/avira/android/facebookconnect/d;->READ_PERMISSIONS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 27
    new-instance v0, Lcom/avira/android/facebookconnect/e;

    invoke-direct {v0, p0}, Lcom/avira/android/facebookconnect/e;-><init>(Lcom/avira/android/facebookconnect/d;)V

    iput-object v0, p0, Lcom/avira/android/facebookconnect/d;->d:Lcom/facebook/cn;

    return-void
.end method

.method static synthetic a(Lcom/avira/android/facebookconnect/d;)Lcom/avira/android/facebookconnect/g;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/avira/android/facebookconnect/d;->b:Lcom/avira/android/facebookconnect/g;

    return-object v0
.end method

.method static synthetic a(Lcom/avira/android/facebookconnect/d;Lcom/facebook/by;Lcom/facebook/cs;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3}, Lcom/avira/android/facebookconnect/d;->a(Lcom/facebook/by;Lcom/facebook/cs;Ljava/lang/Exception;)V

    return-void
.end method

.method private a(Lcom/facebook/by;Lcom/facebook/cs;Ljava/lang/Exception;)V
    .locals 2

    .prologue
    .line 63
    sget-object v0, Lcom/avira/android/facebookconnect/d;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSessionStateChange "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/facebook/cs;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/by;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    if-eqz p3, :cond_1

    .line 67
    sget-object v0, Lcom/avira/android/facebookconnect/d;->a:Ljava/lang/String;

    .line 68
    iget-object v0, p0, Lcom/avira/android/facebookconnect/d;->b:Lcom/avira/android/facebookconnect/g;

    invoke-interface {v0}, Lcom/avira/android/facebookconnect/g;->b()V

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    sget-object v0, Lcom/avira/android/facebookconnect/d;->a:Ljava/lang/String;

    .line 75
    invoke-virtual {p2}, Lcom/facebook/cs;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 77
    sget-object v0, Lcom/avira/android/facebookconnect/d;->a:Ljava/lang/String;

    .line 80
    invoke-direct {p0, p1, p2, p3}, Lcom/avira/android/facebookconnect/d;->b(Lcom/facebook/by;Lcom/facebook/cs;Ljava/lang/Exception;)V

    goto :goto_0

    .line 82
    :cond_2
    invoke-virtual {p2}, Lcom/facebook/cs;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    sget-object v0, Lcom/avira/android/facebookconnect/d;->a:Ljava/lang/String;

    .line 87
    invoke-direct {p0, p1, p2, p3}, Lcom/avira/android/facebookconnect/d;->b(Lcom/facebook/by;Lcom/facebook/cs;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private b(Lcom/facebook/by;Lcom/facebook/cs;Ljava/lang/Exception;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 96
    sget-object v1, Lcom/avira/android/facebookconnect/d;->a:Ljava/lang/String;

    .line 98
    if-eqz p3, :cond_1

    .line 100
    iget-object v0, p0, Lcom/avira/android/facebookconnect/d;->b:Lcom/avira/android/facebookconnect/g;

    invoke-interface {v0}, Lcom/avira/android/facebookconnect/g;->b()V

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    iget-object v1, p0, Lcom/avira/android/facebookconnect/d;->b:Lcom/avira/android/facebookconnect/g;

    invoke-interface {v1}, Lcom/avira/android/facebookconnect/g;->a_()Lcom/avira/android/facebookconnect/h;

    move-result-object v1

    sget-object v2, Lcom/avira/android/facebookconnect/h;->NONE:Lcom/avira/android/facebookconnect/h;

    if-eq v1, v2, :cond_0

    .line 106
    sget-object v1, Lcom/avira/android/facebookconnect/d;->a:Ljava/lang/String;

    .line 107
    invoke-virtual {p2}, Lcom/facebook/cs;->a()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 109
    sget-object v1, Lcom/avira/android/facebookconnect/d;->a:Ljava/lang/String;

    .line 110
    invoke-virtual {p1}, Lcom/facebook/by;->e()Ljava/lang/String;

    move-result-object v1

    .line 113
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_3

    .line 115
    :cond_2
    sget-object v2, Lcom/avira/android/facebookconnect/d;->a:Ljava/lang/String;

    .line 131
    :goto_1
    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_7

    .line 133
    sget-object v2, Lcom/avira/android/facebookconnect/d;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "checking for permissions "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    sget-object v2, Lcom/avira/android/facebookconnect/d;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "has for permissions "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/facebook/by;->f()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/facebook/by;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 138
    invoke-static {}, Lcom/facebook/by;->h()Lcom/facebook/by;

    .line 139
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/facebook/by;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 143
    new-instance v0, Lcom/avira/android/facebookconnect/f;

    invoke-direct {v0, p0, p1, v1}, Lcom/avira/android/facebookconnect/f;-><init>(Lcom/avira/android/facebookconnect/d;Lcom/facebook/by;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/facebook/Request;->a(Lcom/facebook/by;Lcom/facebook/bl;)Lcom/facebook/Request;

    move-result-object v0

    .line 168
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/facebook/Request;

    aput-object v0, v1, v4

    invoke-static {v1}, Lcom/facebook/Request;->a([Lcom/facebook/Request;)Lcom/facebook/bq;

    goto :goto_0

    .line 118
    :cond_3
    iget-object v2, p0, Lcom/avira/android/facebookconnect/d;->b:Lcom/avira/android/facebookconnect/g;

    invoke-interface {v2}, Lcom/avira/android/facebookconnect/g;->a_()Lcom/avira/android/facebookconnect/h;

    move-result-object v2

    sget-object v3, Lcom/avira/android/facebookconnect/h;->LOGIN:Lcom/avira/android/facebookconnect/h;

    if-ne v2, v3, :cond_4

    .line 120
    sget-object v0, Lcom/avira/android/facebookconnect/d;->a:Ljava/lang/String;

    .line 121
    sget-object v0, Lcom/avira/android/facebookconnect/d;->READ_PERMISSIONS:Ljava/util/List;

    goto :goto_1

    .line 126
    :cond_4
    sget-object v2, Lcom/avira/android/facebookconnect/d;->a:Ljava/lang/String;

    .line 127
    sget-object v2, Lcom/avira/android/facebookconnect/d;->a:Ljava/lang/String;

    .line 128
    iget-object v2, p0, Lcom/avira/android/facebookconnect/d;->b:Lcom/avira/android/facebookconnect/g;

    invoke-interface {v2}, Lcom/avira/android/facebookconnect/g;->b()V

    goto :goto_1

    .line 172
    :cond_5
    sget-object v0, Lcom/avira/android/facebookconnect/d;->a:Ljava/lang/String;

    .line 173
    iget-object v0, p0, Lcom/avira/android/facebookconnect/d;->b:Lcom/avira/android/facebookconnect/g;

    invoke-interface {v0}, Lcom/avira/android/facebookconnect/g;->b()V

    goto/16 :goto_0

    .line 178
    :cond_6
    sget-object v0, Lcom/avira/android/facebookconnect/d;->a:Ljava/lang/String;

    .line 179
    iget-object v0, p0, Lcom/avira/android/facebookconnect/d;->b:Lcom/avira/android/facebookconnect/g;

    invoke-interface {v0}, Lcom/avira/android/facebookconnect/g;->a()V

    goto/16 :goto_0

    .line 184
    :cond_7
    sget-object v0, Lcom/avira/android/facebookconnect/d;->a:Ljava/lang/String;

    .line 185
    iget-object v0, p0, Lcom/avira/android/facebookconnect/d;->b:Lcom/avira/android/facebookconnect/g;

    invoke-interface {v0}, Lcom/avira/android/facebookconnect/g;->b()V

    goto/16 :goto_0

    .line 188
    :cond_8
    invoke-virtual {p2}, Lcom/facebook/cs;->b()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 190
    sget-object v0, Lcom/avira/android/facebookconnect/d;->a:Ljava/lang/String;

    .line 191
    iget-object v0, p0, Lcom/avira/android/facebookconnect/d;->b:Lcom/avira/android/facebookconnect/g;

    invoke-interface {v0}, Lcom/avira/android/facebookconnect/g;->b()V

    goto/16 :goto_0

    .line 195
    :cond_9
    sget-object v0, Lcom/avira/android/facebookconnect/d;->a:Ljava/lang/String;

    .line 196
    iget-object v0, p0, Lcom/avira/android/facebookconnect/d;->b:Lcom/avira/android/facebookconnect/g;

    invoke-interface {v0}, Lcom/avira/android/facebookconnect/g;->b()V

    goto/16 :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 39
    sget-object v0, Lcom/avira/android/facebookconnect/d;->a:Ljava/lang/String;

    .line 40
    invoke-static {}, Lcom/facebook/by;->h()Lcom/facebook/by;

    move-result-object v0

    .line 41
    invoke-virtual {v0}, Lcom/facebook/by;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/facebook/by;->b()Z

    move-result v1

    if-nez v1, :cond_0

    .line 43
    sget-object v1, Lcom/avira/android/facebookconnect/d;->a:Ljava/lang/String;

    .line 44
    new-instance v1, Lcom/facebook/ck;

    invoke-direct {v1, p0}, Lcom/facebook/ck;-><init>(Landroid/support/v4/app/Fragment;)V

    sget-object v2, Lcom/avira/android/facebookconnect/d;->READ_PERMISSIONS:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/facebook/ck;->b(Ljava/util/List;)Lcom/facebook/ck;

    move-result-object v1

    iget-object v2, p0, Lcom/avira/android/facebookconnect/d;->d:Lcom/facebook/cn;

    invoke-virtual {v1, v2}, Lcom/facebook/ck;->b(Lcom/facebook/cn;)Lcom/facebook/ck;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/by;->a(Lcom/facebook/ck;)V

    .line 51
    :goto_0
    return-void

    .line 48
    :cond_0
    sget-object v0, Lcom/avira/android/facebookconnect/d;->a:Ljava/lang/String;

    .line 49
    invoke-virtual {p0}, Lcom/avira/android/facebookconnect/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget-object v1, Lcom/avira/android/facebookconnect/d;->READ_PERMISSIONS:Ljava/util/List;

    iget-object v2, p0, Lcom/avira/android/facebookconnect/d;->d:Lcom/facebook/cn;

    invoke-static {v0, p0, v1, v2}, Lcom/facebook/by;->a(Landroid/content/Context;Landroid/support/v4/app/Fragment;Ljava/util/List;Lcom/facebook/cn;)Lcom/facebook/by;

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 249
    sget-object v0, Lcom/avira/android/facebookconnect/d;->a:Ljava/lang/String;

    .line 250
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 251
    iget-object v0, p0, Lcom/avira/android/facebookconnect/d;->c:Lcom/facebook/cy;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/cy;->a(IILandroid/content/Intent;)V

    .line 252
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 210
    sget-object v0, Lcom/avira/android/facebookconnect/d;->a:Ljava/lang/String;

    .line 211
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 212
    new-instance v0, Lcom/facebook/cy;

    invoke-virtual {p0}, Lcom/avira/android/facebookconnect/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/avira/android/facebookconnect/d;->d:Lcom/facebook/cn;

    invoke-direct {v0, v1, v2}, Lcom/facebook/cy;-><init>(Landroid/app/Activity;Lcom/facebook/cn;)V

    iput-object v0, p0, Lcom/avira/android/facebookconnect/d;->c:Lcom/facebook/cy;

    .line 213
    iget-object v0, p0, Lcom/avira/android/facebookconnect/d;->c:Lcom/facebook/cy;

    invoke-virtual {v0, p1}, Lcom/facebook/cy;->a(Landroid/os/Bundle;)V

    .line 216
    invoke-virtual {p0}, Lcom/avira/android/facebookconnect/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/avira/android/facebookconnect/g;

    if-eqz v0, :cond_0

    .line 218
    sget-object v0, Lcom/avira/android/facebookconnect/d;->a:Ljava/lang/String;

    .line 219
    invoke-virtual {p0}, Lcom/avira/android/facebookconnect/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/avira/android/facebookconnect/g;

    iput-object v0, p0, Lcom/avira/android/facebookconnect/d;->b:Lcom/avira/android/facebookconnect/g;

    .line 226
    :goto_0
    return-void

    .line 223
    :cond_0
    sget-object v0, Lcom/avira/android/facebookconnect/d;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 265
    sget-object v0, Lcom/avira/android/facebookconnect/d;->a:Ljava/lang/String;

    .line 266
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 267
    iget-object v0, p0, Lcom/avira/android/facebookconnect/d;->c:Lcom/facebook/cy;

    .line 268
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 257
    sget-object v0, Lcom/avira/android/facebookconnect/d;->a:Ljava/lang/String;

    .line 258
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 259
    iget-object v0, p0, Lcom/avira/android/facebookconnect/d;->c:Lcom/facebook/cy;

    invoke-virtual {v0}, Lcom/facebook/cy;->b()V

    .line 260
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 231
    sget-object v0, Lcom/avira/android/facebookconnect/d;->a:Ljava/lang/String;

    .line 232
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 233
    invoke-static {}, Lcom/facebook/by;->h()Lcom/facebook/by;

    move-result-object v0

    .line 234
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/facebook/by;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/facebook/by;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 236
    :cond_0
    sget-object v1, Lcom/avira/android/facebookconnect/d;->a:Ljava/lang/String;

    .line 237
    invoke-virtual {v0}, Lcom/facebook/by;->c()Lcom/facebook/cs;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/avira/android/facebookconnect/d;->a(Lcom/facebook/by;Lcom/facebook/cs;Ljava/lang/Exception;)V

    .line 239
    :cond_1
    iget-object v1, p0, Lcom/avira/android/facebookconnect/d;->c:Lcom/facebook/cy;

    invoke-virtual {v1}, Lcom/facebook/cy;->a()V

    .line 240
    invoke-virtual {v0}, Lcom/facebook/by;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 242
    sget-object v1, Lcom/avira/android/facebookconnect/d;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSessionStateChange "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/facebook/by;->c()Lcom/facebook/cs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/cs;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/facebook/by;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 244
    :cond_2
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 273
    sget-object v0, Lcom/avira/android/facebookconnect/d;->a:Ljava/lang/String;

    .line 274
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 275
    iget-object v0, p0, Lcom/avira/android/facebookconnect/d;->c:Lcom/facebook/cy;

    invoke-virtual {v0, p1}, Lcom/facebook/cy;->b(Landroid/os/Bundle;)V

    .line 276
    return-void
.end method
