// Replace with your webhook URL
const webhookUrl = 'https://discord.com/api/webhooks/1114169428905566328/QjXTO2nXjGHfxeNwWK4uK5CURIsh3V-OKVAY6-8YyR90o1Eg-AzI4hksaO_nfwDDVYeR';

// The message you want to send
const message = {
    content: 'Hello, this is a message from my JavaScript script!'
};

// Function to send the message
function sendFunction() {
    fetch(webhookUrl, {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify(message)
    })
    .then(response => {
        if (response.ok) {
            console.log('Message sent successfully!');
        } else {
            console.log(`Failed to send message. Status code: ${response.status}`);
        }
    })
    .catch(error => {
        console.error(`Error sending message: ${error.message}`);
    });
}