.class public final Lcom/avira/android/securebrowsing/c/t;
.super Lcom/avira/android/securebrowsing/c/a;
.source "SourceFile"


# static fields
.field public static final ACTION_POST_PARAM:Ljava/lang/String; = "action"

.field public static final ACTION_TRIGGER_BLOCK_PARAM:Ljava/lang/String; = "triggerBlock"

.field private static final BROWSER_PARAM_TAG:Ljava/lang/String; = "%BROWSER_PARAM%"

.field private static final BROWSER_POST_PARAM:Ljava/lang/String; = "bro"

.field private static final CATEGORY_DESC_PARAM_TAG:Ljava/lang/String; = "%CATEGORY_DESC_PARAM%"

.field private static final CATEGORY_NAME_PARAM_TAG:Ljava/lang/String; = "%CATEGORY_NAME_PARAM%"

.field private static final CATEGORY_PARAM_TAG:Ljava/lang/String; = "%CATEGORY_PARAM%"

.field private static final CATEGORY_POST_PARAM:Ljava/lang/String; = "cat"

.field public static final DATA_SCHEME:Ljava/lang/String; = "data"

.field public static final DATA_SCHEME_HEADER:Ljava/lang/String; = "data:text/html;charset=utf-8;base64,"

.field private static final DEFAULT_PORT:I = 0x1f96

.field private static final HOST_PARAM_TAG:Ljava/lang/String; = "%HOST_PARAM%"

.field private static final ICON_PARAM_TAG:Ljava/lang/String; = "%ICON_PARAM%"

.field private static final INVALID_PORT:I = -0x1

.field private static final NO_SCRIPT_TAG:Ljava/lang/String; = "%NO_SCRIPT_MESSAGE%"

.field private static final PORT_NUMBER_ZERO:I = 0x0

.field private static final PORT_PARAM_TAG:Ljava/lang/String; = "%PORT_PARAM%"

.field private static final PROCEED_PARAM_TAG:Ljava/lang/String; = "%PROCEED%"

.field private static final SESSION_PARAM_TAG:Ljava/lang/String; = "%SESSION_PARAM%"

.field private static final SESSION_POST_PARAM:Ljava/lang/String; = "session"

.field private static final TAG:Ljava/lang/String; = "BLCKPGSRV"

.field private static final TRIGGER_BLOCK_PARAM_TAG:Ljava/lang/String; = "%TRIGGER_BLOCK_PARAM%"

.field private static final URL_PARAM_TAG:Ljava/lang/String; = "%URL_PARAM%"

.field private static final URL_POST_PARAM:Ljava/lang/String; = "url"

.field public static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:I

.field private static f:Lcom/avira/android/securebrowsing/c/t;

.field private static g:Lcom/avira/android/securebrowsing/c/z;

.field private static j:Lcom/avira/android/utilities/t;


# instance fields
.field private e:Ljava/lang/String;

.field private h:Lcom/avira/android/securebrowsing/b/b;

.field private i:Lcom/avira/android/securebrowsing/c/ab;

.field private final k:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 30
    const-string v0, "127.0.0.1"

    sput-object v0, Lcom/avira/android/securebrowsing/c/t;->b:Ljava/lang/String;

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/avira/android/securebrowsing/c/t;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/avira/android/securebrowsing/c/t;->a:Ljava/lang/String;

    .line 57
    const-string v0, ""

    sput-object v0, Lcom/avira/android/securebrowsing/c/t;->c:Ljava/lang/String;

    .line 58
    const/4 v0, -0x1

    sput v0, Lcom/avira/android/securebrowsing/c/t;->d:I

    .line 61
    sput-object v2, Lcom/avira/android/securebrowsing/c/t;->f:Lcom/avira/android/securebrowsing/c/t;

    .line 62
    sput-object v2, Lcom/avira/android/securebrowsing/c/t;->g:Lcom/avira/android/securebrowsing/c/z;

    .line 65
    sput-object v2, Lcom/avira/android/securebrowsing/c/t;->j:Lcom/avira/android/utilities/t;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/avira/android/securebrowsing/c/ab;Lcom/avira/android/securebrowsing/c/z;Lcom/avira/android/securebrowsing/b/b;Lcom/avira/android/utilities/t;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/16 v3, 0x64

    .line 108
    invoke-direct {p0, p1, p2}, Lcom/avira/android/securebrowsing/c/a;-><init>(Ljava/lang/String;I)V

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/avira/android/securebrowsing/c/t;->e:Ljava/lang/String;

    .line 63
    iput-object v1, p0, Lcom/avira/android/securebrowsing/c/t;->h:Lcom/avira/android/securebrowsing/b/b;

    .line 64
    iput-object v1, p0, Lcom/avira/android/securebrowsing/c/t;->i:Lcom/avira/android/securebrowsing/c/ab;

    .line 67
    iput v3, p0, Lcom/avira/android/securebrowsing/c/t;->k:I

    .line 109
    iput-object p3, p0, Lcom/avira/android/securebrowsing/c/t;->i:Lcom/avira/android/securebrowsing/c/ab;

    .line 110
    iput-object p5, p0, Lcom/avira/android/securebrowsing/c/t;->h:Lcom/avira/android/securebrowsing/b/b;

    .line 111
    sput-object p6, Lcom/avira/android/securebrowsing/c/t;->j:Lcom/avira/android/utilities/t;

    .line 112
    sput-object p4, Lcom/avira/android/securebrowsing/c/t;->g:Lcom/avira/android/securebrowsing/c/z;

    .line 113
    invoke-static {}, Lcom/avira/android/a/c;->a()Lcom/avira/android/a/c;

    move-result-object v0

    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avira/android/ApplicationService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avira/android/a/c;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avira/android/securebrowsing/c/a;->a(Ljava/lang/String;)V

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/avira/android/securebrowsing/c/t;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/avira/android/securebrowsing/c/t;->d:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/avira/android/securebrowsing/c/t;->c:Ljava/lang/String;

    .line 117
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/ApplicationService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020022

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object v0, p0, Lcom/avira/android/securebrowsing/c/t;->e:Ljava/lang/String;

    .line 118
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/avira/android/securebrowsing/c/y;Lcom/avira/android/securebrowsing/c/v;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 237
    invoke-static {p1}, Lcom/avira/android/securebrowsing/c/y;->a(Lcom/avira/android/securebrowsing/c/y;)Ljava/lang/String;

    move-result-object v0

    .line 238
    sget-object v1, Lcom/avira/android/securebrowsing/c/t;->g:Lcom/avira/android/securebrowsing/c/z;

    invoke-static {}, Lcom/avira/android/securebrowsing/c/z;->a()Ljava/lang/String;

    move-result-object v1

    .line 240
    sget-object v2, Lcom/avira/android/securebrowsing/c/t;->g:Lcom/avira/android/securebrowsing/c/z;

    invoke-virtual {v2, v1, p0}, Lcom/avira/android/securebrowsing/c/z;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 243
    const/4 v0, 0x0

    .line 245
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p2}, Lcom/avira/android/securebrowsing/c/v;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v2, v1}, Lcom/avira/android/securebrowsing/c/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 184
    sget-object v1, Lcom/avira/android/securebrowsing/c/t;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    const-string v1, "url"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    const-string v1, "cat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    const-string v1, "bro"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    const-string v1, "session"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 169
    sget-object v0, Lcom/avira/android/securebrowsing/c/t;->g:Lcom/avira/android/securebrowsing/c/z;

    invoke-virtual {v0, p0, p1}, Lcom/avira/android/securebrowsing/c/z;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 385
    sget v0, Lcom/avira/android/securebrowsing/c/t;->d:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 386
    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v1

    const v2, 0x7f0802cb

    invoke-virtual {v1, v2}, Lcom/avira/android/ApplicationService;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 389
    const-string v2, "<DOCTYPE html><html><head><meta http-equiv=\"Content-Type\" content=\"text/html;charset=UTF-8\"/><style>\tbody {\t\t  height: 100%;\t\t  background: #000;\t\t  color: #222;\t}\t#no-script {\t\t  font-family: Arial, sans-serif;\t\t  margin: 70px 40px 10px 40px;\t\t  color: #FFF;\t\t  max-height: 999999px;\t\t  font-size: 40px; \t\t  font-weight:600;\t\t}</style>\t<script type=\"text/javascript\">\t\tfunction buildLocalHostPath()\t\t{\t\t\tvar portNo = \"%PORT_PARAM%\";\t\t\tvar localHost = \"%HOST_PARAM%\";\t\t\tvar localHostPath = localHost + \":\" + portNo + \"/\";\t\t\t\t\t\treturn localHostPath;\t\t}\t\tfunction formBlockPagePostData()\t\t{\t\t\turlParam = \"%URL_PARAM%\";\t\t\tcategoryParam = \"%CATEGORY_PARAM%\";\t\t\tbrowserParam = \"%BROWSER_PARAM%\";\t\t\tsessionParam = \"%SESSION_PARAM%\";\t\t\tactionParam = \"%TRIGGER_BLOCK_PARAM%\";\t\t\t\twindow.localHostPath = buildLocalHostPath();\t\t\t\twindow.postData = \"url=\" + urlParam + \"&cat=\" + categoryParam + \t\t\t\t\t\t\t\t\"&bro=\" + browserParam + \"&session=\" + sessionParam + \t\t\t\t\t\t\t\t\"&action=\" + actionParam;\t\t}\t\tfunction ajaxPost(url, postData) \t\t{\t\t\txmlhttp = new XMLHttpRequest();  \t\t\txmlhttp.open(\"POST\", url, true);\t\t\txmlhttp.setRequestHeader(\"Content-type\", \"application/x-www-form-urlencoded\");\t\t\txmlhttp.send(postData);  \t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\treturn;\t\t}\t\tfunction showBlankPage()\t\t{\t\t\twindow.location = \"about:blank\";\t\t}\t\tfunction showBlockPage()\t\t{\t\t\tformBlockPagePostData();\t\t\t\t\tajaxPost(window.localHostPath, window.postData);\t\t\t}\t\tfunction backTrackHistory()\t\t{\t\t   \t\t  \twindow.history.go(-2);\t\t\t\t}\t\tfunction redirectToBlockPage()\t\t{\t\t\tshowBlankPage();\t\t\tshowBlockPage();\t\t}\t\tfunction handleRedirection() \t\t{\t\t\t\t\t\twindow.onpageshow = backTrackHistory;\t\t\t\t\t\twindow.setTimeout(redirectToBlockPage, 0);\t\t\treturn;\t\t}\t\tvar blockPageUrl = \"\";\t\tvar localHostPath = \"\";\t\tvar postData = \"\";\t\tvar historyLen = window.history.length;\t\twindow.onpageshow = handleRedirection;\t  </script></head><body>\t<noscript>\t  <div id = \"no-script\" align=\"center\">%NO_SCRIPT_MESSAGE%</div>\t</noscript></body></html>"

    const-string v3, "%NO_SCRIPT_MESSAGE%"

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%PORT_PARAM%"

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "%HOST_PARAM%"

    sget-object v2, Lcom/avira/android/securebrowsing/c/t;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "%URL_PARAM%"

    invoke-virtual {v0, v1, p0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "%SESSION_PARAM%"

    invoke-virtual {v0, v1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "%CATEGORY_PARAM%"

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "%BROWSER_PARAM%"

    invoke-virtual {v0, v1, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "%TRIGGER_BLOCK_PARAM%"

    const-string v2, "triggerBlock"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 212
    sget-object v0, Lcom/avira/android/securebrowsing/c/t;->g:Lcom/avira/android/securebrowsing/c/z;

    invoke-static {}, Lcom/avira/android/securebrowsing/c/z;->a()Ljava/lang/String;

    move-result-object v0

    .line 214
    sget-object v1, Lcom/avira/android/securebrowsing/c/t;->g:Lcom/avira/android/securebrowsing/c/z;

    invoke-virtual {v1, v0, p0}, Lcom/avira/android/securebrowsing/c/z;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 222
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 267
    invoke-static {}, Lcom/avira/android/utilities/c;->a()Ljava/net/InetAddress;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/avira/android/securebrowsing/c/t;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/avira/android/securebrowsing/c/t;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/avira/android/securebrowsing/c/t;->a:Ljava/lang/String;

    .line 268
    :goto_0
    sget-object v0, Lcom/avira/android/securebrowsing/c/t;->f:Lcom/avira/android/securebrowsing/c/t;

    if-nez v0, :cond_1

    .line 273
    :try_start_0
    new-instance v0, Ljava/net/ServerSocket;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/net/ServerSocket;-><init>(I)V

    .line 274
    invoke-virtual {v0}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v2

    .line 275
    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V

    .line 277
    const/4 v0, -0x1

    if-ne v2, v0, :cond_0

    .line 279
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    :catch_0
    move-exception v0

    sget-object v0, Lcom/avira/android/securebrowsing/c/t;->j:Lcom/avira/android/utilities/t;

    const-string v1, "BLCKPGSRV"

    const-string v2, "Error getting available socket port, trying to set the default one"

    invoke-virtual {v0, v1, v2}, Lcom/avira/android/utilities/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    const/16 v2, 0x1f96

    .line 288
    :cond_0
    sput v2, Lcom/avira/android/securebrowsing/c/t;->d:I

    .line 289
    new-instance v0, Lcom/avira/android/securebrowsing/c/t;

    sget-object v1, Lcom/avira/android/securebrowsing/c/t;->b:Ljava/lang/String;

    invoke-static {}, Lcom/avira/android/securebrowsing/c/ab;->a()Lcom/avira/android/securebrowsing/c/ab;

    move-result-object v3

    new-instance v4, Lcom/avira/android/securebrowsing/c/z;

    invoke-direct {v4}, Lcom/avira/android/securebrowsing/c/z;-><init>()V

    invoke-static {}, Lcom/avira/android/securebrowsing/b/b;->a()Lcom/avira/android/securebrowsing/b/b;

    move-result-object v5

    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/avira/android/securebrowsing/c/t;-><init>(Ljava/lang/String;ILcom/avira/android/securebrowsing/c/ab;Lcom/avira/android/securebrowsing/c/z;Lcom/avira/android/securebrowsing/b/b;Lcom/avira/android/utilities/t;)V

    sput-object v0, Lcom/avira/android/securebrowsing/c/t;->f:Lcom/avira/android/securebrowsing/c/t;

    .line 295
    :cond_1
    :try_start_1
    sget-object v0, Lcom/avira/android/securebrowsing/c/t;->f:Lcom/avira/android/securebrowsing/c/t;

    invoke-virtual {v0}, Lcom/avira/android/securebrowsing/c/t;->b()V

    .line 296
    sget-object v0, Lcom/avira/android/securebrowsing/c/t;->j:Lcom/avira/android/utilities/t;

    const-string v0, "BLCKPGSRV"

    const-string v1, "Block Page Service - Started."

    invoke-static {v0, v1}, Lcom/avira/android/utilities/t;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 310
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 267
    :cond_2
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    const-string v0, "BLCKPGSRV"

    const-string v1, "Could not reset local host"

    invoke-static {v0, v1}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 298
    :catch_1
    move-exception v0

    .line 300
    sget-object v0, Lcom/avira/android/securebrowsing/c/t;->j:Lcom/avira/android/utilities/t;

    const-string v1, "BLCKPGSRV"

    const-string v2, "Block Page Service could not be started"

    invoke-virtual {v0, v1, v2}, Lcom/avira/android/utilities/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v7

    .line 301
    goto :goto_1

    .line 303
    :catch_2
    move-exception v0

    .line 305
    const/4 v0, 0x0

    sput-object v0, Lcom/avira/android/securebrowsing/c/t;->f:Lcom/avira/android/securebrowsing/c/t;

    .line 306
    sget-object v0, Lcom/avira/android/securebrowsing/c/t;->j:Lcom/avira/android/utilities/t;

    const-string v1, "BLCKPGSRV"

    const-string v2, "Block Page Service could not be started"

    invoke-virtual {v0, v1, v2}, Lcom/avira/android/utilities/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v7

    .line 307
    goto :goto_1
.end method

.method public static e()V
    .locals 2

    .prologue
    .line 318
    sget-object v0, Lcom/avira/android/securebrowsing/c/t;->f:Lcom/avira/android/securebrowsing/c/t;

    if-eqz v0, :cond_0

    .line 320
    sget-object v0, Lcom/avira/android/securebrowsing/c/t;->f:Lcom/avira/android/securebrowsing/c/t;

    invoke-virtual {v0}, Lcom/avira/android/securebrowsing/c/t;->c()V

    .line 321
    const/4 v0, 0x0

    sput-object v0, Lcom/avira/android/securebrowsing/c/t;->f:Lcom/avira/android/securebrowsing/c/t;

    .line 322
    sget-object v0, Lcom/avira/android/securebrowsing/c/t;->j:Lcom/avira/android/utilities/t;

    const-string v0, "BLCKPGSRV"

    const-string v1, "Block Page Service - Stopped."

    invoke-static {v0, v1}, Lcom/avira/android/utilities/t;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    :cond_0
    return-void
.end method

.method private static f()Lcom/avira/android/securebrowsing/c/n;
    .locals 2

    .prologue
    .line 572
    new-instance v0, Lcom/avira/android/securebrowsing/c/n;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/avira/android/securebrowsing/c/n;-><init>(Ljava/lang/String;)V

    .line 573
    sget-object v1, Lcom/avira/android/securebrowsing/c/o;->NOT_FOUND:Lcom/avira/android/securebrowsing/c/o;

    invoke-virtual {v0, v1}, Lcom/avira/android/securebrowsing/c/n;->a(Lcom/avira/android/securebrowsing/c/o;)V

    .line 574
    return-object v0
.end method


# virtual methods
.method public final a(Lcom/avira/android/securebrowsing/c/m;Ljava/util/Map;)Lcom/avira/android/securebrowsing/c/n;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/avira/android/securebrowsing/c/m;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/avira/android/securebrowsing/c/n;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 330
    sget-object v0, Lcom/avira/android/securebrowsing/c/u;->$SwitchMap$com$avira$android$securebrowsing$utilities$NanoHTTPD$Method:[I

    invoke-virtual {p1}, Lcom/avira/android/securebrowsing/c/m;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 337
    new-instance v0, Lcom/avira/android/securebrowsing/c/n;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/avira/android/securebrowsing/c/n;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v0

    .line 333
    :pswitch_0
    const-string v0, "url"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "session"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "cat"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "bro"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_1
    if-nez v5, :cond_1

    sget-object v0, Lcom/avira/android/securebrowsing/c/t;->j:Lcom/avira/android/utilities/t;

    const-string v1, "BLCKPGSRV"

    const-string v2, "Invalid BlockPage Retrieval Request."

    invoke-virtual {v0, v1, v2}, Lcom/avira/android/utilities/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/avira/android/securebrowsing/c/t;->f()Lcom/avira/android/securebrowsing/c/n;

    move-result-object v0

    goto :goto_0

    :cond_0
    move v5, v6

    goto :goto_1

    :cond_1
    const-string v0, "url"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "cat"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "session"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "bro"

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/avira/android/securebrowsing/c/t;->g:Lcom/avira/android/securebrowsing/c/z;

    invoke-virtual {v3, v2, v0}, Lcom/avira/android/securebrowsing/c/z;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v0, Lcom/avira/android/securebrowsing/c/t;->j:Lcom/avira/android/utilities/t;

    const-string v0, "BLCKPGSRV"

    const-string v1, "Invalid Session Request."

    invoke-static {v0, v1}, Lcom/avira/android/utilities/t;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/avira/android/securebrowsing/c/t;->f()Lcom/avira/android/securebrowsing/c/n;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {v1}, Lcom/avira/android/securebrowsing/c/y;->a(Ljava/lang/String;)Lcom/avira/android/securebrowsing/c/y;

    move-result-object v1

    invoke-static {v1}, Lcom/avira/android/securebrowsing/c/y;->b(Lcom/avira/android/securebrowsing/c/y;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v3

    const v4, 0x7f08008e

    invoke-virtual {v3, v4}, Lcom/avira/android/ApplicationService;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/avira/android/securebrowsing/c/t;->h:Lcom/avira/android/securebrowsing/b/b;

    invoke-virtual {v4, v1, v3}, Lcom/avira/android/securebrowsing/b/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/avira/android/securebrowsing/b/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avira/android/securebrowsing/b/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/avira/android/securebrowsing/b/a;->b()Ljava/lang/String;

    move-result-object v1

    sget v4, Lcom/avira/android/securebrowsing/c/t;->d:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/avira/android/securebrowsing/c/t;->e:Ljava/lang/String;

    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v6

    const v7, 0x7f0802d3

    invoke-virtual {v6, v7}, Lcom/avira/android/ApplicationService;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/avira/android/ApplicationService;->b()Lcom/avira/android/ApplicationService;

    move-result-object v7

    const v8, 0x7f0802cb

    invoke-virtual {v7, v8}, Lcom/avira/android/ApplicationService;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "<DOCTYPE html><html><head><meta http-equiv=\"Content-Type\" content=\"text/html;charset=UTF-8\"/>\t<style>\t\thtml {\t\t  height: 100%;\t\t  background: #000;\t\t}\t\tbody {\t\t  height: 100%;\t\t  background: #000;\t\t  color: #222;\t\t}\t\timg { \t\t  border: 0;\t\t}\t\t#no-script {\t\t  font-family: Arial, sans-serif;\t\t  margin: 70px 40px 10px 40px;\t\t  color: #FFF;\t\t  max-height: 999999px;\t\t  font-size: 40px; \t\t  font-weight:600;\t\t\t}\t\th1, h2, h3 {\t\t  font-family: Arial, sans-serif;\t\t  margin: 70px 40px 10px 40px;\t\t  color: #FFF;\t\t  max-height: 999999px;\t\t}\t\th1 {\t\t  font-size: 60px;\t\t  font-weight:600;\t\t}\t\th2 {\t\t  font-size: 40px;\t\t  font-weight:600;\t\t \t\t}\t\th3 {\t\t  font-size: 30px;\t\t  font-weight:100;\t\t}\t\t#proceedButton\t\t{   \t\t\tbackground:none;\t\t\tborder:none; \t\t\tcolor: #FFFFFF;\t\t\tfont: 30px arial, sans-serif;\t\t\twhite-space:normal;\t\t}\t</style>\t<script type=\"text/javascript\">\t\tfunction getCurrentUrlParam(paramName)\t\t{\t\t\tname = name.replace(/[\\[]/,\"\\\\\\[\").replace(/[\\]]/,\"\\\\\\]\");\t\t\tvar regexS = \"[\\\\?&]\"+paramName+\"=([^&#]*)\";\t\t\tvar regex = new RegExp( regexS );  \t\t\tvar results = regex.exec( window.location.href );\t\t\tif( results == null )    \t\t\t{\t\t\t\treturn \"\";\t\t\t}\t\t\telse\t\t\t{\t\t\t\treturn results[1];\t\t\t}\t\t}\t\tfunction ajaxPost(url, urlParam, catParam, browserParam, session)\t\t{\t\t\txmlhttp = new XMLHttpRequest();  \t\t\txmlhttp.open(\"POST\", url, true);\t\t\txmlhttp.setRequestHeader(\"Content-type\", \"application/x-www-form-urlencoded\");\t\t\txmlhttp.onreadystatechange=function()\t\t\t{\t\t\t\tif (xmlhttp.status==200)\t\t\t    {\t\t\t\t\t\t\t\twindow.location.href = urlParam;\t\t\t    }\t\t\t    else\t\t\t    {\t\t\t        window.location.href = \"page_not_found\";\t\t\t    }\t\t\t};\t\t\t  \t\t\tvar postContent = \"url=\" + urlParam + \"&cat=\" + catParam + \"&bro=\" + browserParam + \"&session=\" + session;\t\t\txmlhttp.send(postContent);\t\t}\t\tfunction buildLocalHostPath()\t\t{\t\t\tvar portNo = \"%PORT_PARAM%\";\t\t\tvar localHost = \"%HOST_PARAM%\";\t\t\tvar localHostPath = localHost + \":\" + portNo + \"/\";\t\t\treturn localHostPath;\t\t}\t\tfunction ignoreUrl()\t\t{\t\t\tvar urlParam = getCurrentUrlParam(\'url\');\t\t\tvar catParam = getCurrentUrlParam(\'cat\');\t\t\tvar browserParam = getCurrentUrlParam(\'bro\');\t\t\tvar sessionParam = getCurrentUrlParam(\'session\');\t\t\tvar localHostPath = buildLocalHostPath();\t\t\tajaxPost(localHostPath, urlParam, catParam, browserParam, sessionParam);\t\t}\t  </script></head><body><noscript>\t<div id = \"no-script\" align=\"center\">%NO_SCRIPT_MESSAGE%</div>\t<style type=\"text/css\">\t\t#main {\t\t\tdisplay:none;\t\t}\t</style></noscript><div id=\"main\"><header><div id=\"buttonProceed\" align=\"right\" style=\"margin-Top:40px;margin-Right:30px\" ><button id=\"proceedButton\" type=\"button\" onclick=\"ignoreUrl()\">%PROCEED%</button></div></header><div id=\"site_content\" style=\"margin-Top:150px\"><div class=\"content\">\t<div class=\"icon\" align=\"center\">\t\t<img alt=\"Embedded Image\" src=\"data:image/png;base64,%ICON_PARAM%\" align=\"center\"/>\t</div><h1 align=\"center\"><strong>%CATEGORY_NAME_PARAM%</strong></h1> <h2 align=\"center\">%URL_PARAM%</h2>\t\t<h3 align=\"center\">%CATEGORY_DESC_PARAM%</h3></div></div></div><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p></body></html>"

    const-string v9, "%NO_SCRIPT_MESSAGE%"

    invoke-virtual {v8, v9, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "%ICON_PARAM%"

    invoke-virtual {v7, v8, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "%URL_PARAM%"

    invoke-virtual {v5, v7, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "%CATEGORY_NAME_PARAM%"

    invoke-virtual {v0, v5, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "%CATEGORY_DESC_PARAM%"

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "%SESSION_PARAM%"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "%PORT_PARAM%"

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "%HOST_PARAM%"

    sget-object v2, Lcom/avira/android/securebrowsing/c/t;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "%PROCEED%"

    invoke-virtual {v0, v1, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/avira/android/securebrowsing/c/n;

    invoke-direct {v0, v1}, Lcom/avira/android/securebrowsing/c/n;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 335
    :pswitch_1
    const-string v0, "url"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "session"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "cat"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "bro"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v5

    :goto_2
    if-nez v0, :cond_4

    sget-object v0, Lcom/avira/android/securebrowsing/c/t;->j:Lcom/avira/android/utilities/t;

    const-string v1, "BLCKPGSRV"

    const-string v2, "Invalid BlockPage Action Request."

    invoke-virtual {v0, v1, v2}, Lcom/avira/android/utilities/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/avira/android/securebrowsing/c/t;->f()Lcom/avira/android/securebrowsing/c/n;

    move-result-object v0

    goto/16 :goto_0

    :cond_3
    move v0, v6

    goto :goto_2

    :cond_4
    const-string v0, "url"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "cat"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "bro"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "session"

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sget-object v4, Lcom/avira/android/securebrowsing/c/t;->g:Lcom/avira/android/securebrowsing/c/z;

    invoke-virtual {v4, v3, v0}, Lcom/avira/android/securebrowsing/c/z;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    sget-object v0, Lcom/avira/android/securebrowsing/c/t;->j:Lcom/avira/android/utilities/t;

    const-string v0, "BLCKPGSRV"

    const-string v1, "Invalid Session Request."

    invoke-static {v0, v1}, Lcom/avira/android/utilities/t;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/avira/android/securebrowsing/c/t;->f()Lcom/avira/android/securebrowsing/c/n;

    move-result-object v0

    goto/16 :goto_0

    :cond_5
    const-string v4, "action"

    invoke-interface {p2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "action"

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v7, "triggerBlock"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    move v4, v5

    :goto_3
    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/avira/android/securebrowsing/c/t;->i:Lcom/avira/android/securebrowsing/c/ab;

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/avira/android/securebrowsing/c/ab;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-static {}, Lcom/avira/android/securebrowsing/c/t;->f()Lcom/avira/android/securebrowsing/c/n;

    move-result-object v0

    goto/16 :goto_0

    :cond_6
    move v4, v6

    goto :goto_3

    :cond_7
    iget-object v1, p0, Lcom/avira/android/securebrowsing/c/t;->i:Lcom/avira/android/securebrowsing/c/ab;

    invoke-virtual {v1, v0}, Lcom/avira/android/securebrowsing/c/ab;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/avira/android/securebrowsing/c/t;->g:Lcom/avira/android/securebrowsing/c/z;

    invoke-virtual {v0, v3}, Lcom/avira/android/securebrowsing/c/z;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Lcom/avira/android/securebrowsing/c/t;->j:Lcom/avira/android/utilities/t;

    const-string v1, "BLCKPGSRV"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Failed to remove Session from Session Store; url = "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/avira/android/utilities/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    new-instance v0, Lcom/avira/android/securebrowsing/c/n;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/avira/android/securebrowsing/c/n;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 330
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
